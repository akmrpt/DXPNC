<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="DashBoardView.aspx.cs" Inherits="DXWebApplication1.DashBoardView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
    <div class="divfrm">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" Paddings-PaddingLeft="10" Paddings-PaddingRight="10" Width="35%"
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
                   <dx:GridViewDataImageColumn VisibleIndex="0" Name="IconID" Caption="Icon" Width="60" >
                            <Settings AllowGroup="False" />
                            <DataItemTemplate>
                                <dx:ASPxImage ID="ASPxImage1" runat="server" EmptyImage-IconID='<%#Eval("IconID") %>' />
                            </DataItemTemplate>
                        </dx:GridViewDataImageColumn>
                <dx:GridViewDataDateColumn FieldName="Expire_Date" ReadOnly="True" VisibleIndex="2">

                    <%--<a href="Content/Images/expire.ico">Content/Images/expire.ico</a>--%>

                </dx:GridViewDataDateColumn>

                <dx:GridViewDataTextColumn FieldName="AgeDay" VisibleIndex="3" ReadOnly="True">
                     
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ColID" Visible="false" VisibleIndex="4"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ColName" Caption="." VisibleIndex="5" GroupIndex="0" SortIndex="0" SortOrder="Ascending">


                    <Settings AllowGroup="True" SortMode="DisplayText"></Settings>
                </dx:GridViewDataTextColumn>
                <dx:GridViewCommandColumn ButtonRenderMode="Default" Caption="View" ToolTip="View">

                    <CustomButtons>
                        <dx:GridViewCommandColumnCustomButton ID="ViewBtn" Text="View Detail" >
                        </dx:GridViewCommandColumnCustomButton>
                    </CustomButtons>
                </dx:GridViewCommandColumn>
            </Columns>
            <FormatConditions>
                <%--<dx:GridViewFormatConditionHighlight ShowInColumn="Expire_Date" Expression="DateDiffDay(Today(),[Expire_Date] ) &lt; 0"></dx:GridViewFormatConditionHighlight>--%>
              
                <%--<dx:GridViewFormatConditionIconSet FieldName="AgeDay"  Format="Arrows5Colored" />--%>
                 <%--<dx:GridViewFormatConditionColorScale FieldName="AgeDay" Format="BlueWhiteRed" />--%>
            </FormatConditions>
            <Styles>
                <GroupRow VerticalAlign="Middle" Font-Size="Larger" Font-Bold="True" HorizontalAlign="Center"></GroupRow>
            </Styles>

        </dx:ASPxGridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:MyPNC %>' SelectCommand="exec sp_RTS_KPI 0,2"></asp:SqlDataSource>
    </div>
</asp:Content>
