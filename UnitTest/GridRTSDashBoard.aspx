<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridRTSDashBoard.aspx.cs" Inherits="DXWebApplication1.UnitTest.GridRTSDashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">
        function OnNewClick(s, e) {
            OpenEditForm(-1);
        }
        function OnCustomButtonClick(s, e) {
            var key = s.GetRowKey(e.visibleIndex);
            OpenEditForm(key);
        }
        function OpenEditForm(key) {
            location.href = "Vehicle.aspx?key=" + key;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" Paddings-Padding="25"
            DataSourceID="SqlDataSource1" KeyFieldName="FKVehicleCode" Caption="Vehicle Documents" Settings-GridLines="None">
            <SettingsAdaptivity>
                <AdaptiveDetailLayoutProperties>
                    <SettingsItems VerticalAlign="Middle" HorizontalAlign="Center"></SettingsItems>
                </AdaptiveDetailLayoutProperties>
            </SettingsAdaptivity>

            <SettingsPager Mode="ShowAllRecords" Visible="False"></SettingsPager>
            <Settings ShowGroupButtons="False" ShowColumnHeaders="False"></Settings>

            <SettingsBehavior AutoExpandAllGroups="True"></SettingsBehavior>
            <ClientSideEvents CustomButtonClick="OnCustomButtonClick" />
            <Columns>

                <dx:GridViewDataTextColumn FieldName="Seq" VisibleIndex="0" ReadOnly="True" Visible="false">
                    <EditFormSettings Visible="False"></EditFormSettings>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="FKVehicleCode" Name="FKVehicleCode" Visible="false" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Vehicle" Name="Vehicle" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="Expire_Date" ReadOnly="True" VisibleIndex="2"></dx:GridViewDataDateColumn>

                <dx:GridViewDataTextColumn FieldName="AgeDay" VisibleIndex="3" ReadOnly="True"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ColID" Visible="false" VisibleIndex="4"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ColName" Caption="." VisibleIndex="5" GroupIndex="0" SortIndex="0" SortOrder="Ascending">


                    <Settings AllowGroup="True" SortMode="DisplayText"></Settings>
                </dx:GridViewDataTextColumn>
                <dx:GridViewCommandColumn ButtonRenderMode="Image" ButtonType="Image" ToolTip="Detail View">

                    <CustomButtons>
                        <dx:GridViewCommandColumnCustomButton ID="ViewBtn" Text="View Detail" Image-IconID="print_preview_16x16office2013">
                        </dx:GridViewCommandColumnCustomButton>
                    </CustomButtons>
                </dx:GridViewCommandColumn>
            </Columns>
            <FormatConditions>
                <dx:GridViewFormatConditionHighlight ShowInColumn="Expire_Date" Expression="DateDiffDay(Today(),[Expire_Date] ) &lt; 0"></dx:GridViewFormatConditionHighlight>

            </FormatConditions>
            <Styles>
                <GroupRow VerticalAlign="Middle" Font-Size="Larger" Font-Bold="True" HorizontalAlign="Center"></GroupRow>
            </Styles>

        </dx:ASPxGridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:MyPNC %>' SelectCommand="exec sp_RTS_KPI 0,2"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
