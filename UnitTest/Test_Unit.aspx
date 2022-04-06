<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test_Unit.aspx.cs" Inherits="DXWebApplication1.Test_Unit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

        <style>
textarea {
  text-align: center;
}

 .flowCardStyle {
            height:inherit;
        }

       </style>

    <link href="Content/Login.css" rel="stylesheet" type="text/css" />
     
</head>
<body>


    <form id="form1" runat="server" class="frmalg">
         <asp:SqlDataSource runat="server" ID="sds_RTS_KPI" ConnectionString='<%$ ConnectionStrings:MyPNC %>' SelectCommand="sp_RTS_KPI" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="DocID" Type="Int32"></asp:Parameter>
            <asp:Parameter DefaultValue="1" Name="Op" Type="Int32"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>

        <dx:ASPxCardView ID="ASPxCardView1" runat="server" DataSourceID="sds_RTS_KPI"   AutoGenerateColumns="False"  KeyFieldName="Seq">
            <SettingsPager Visible="False" Mode="ShowAllRecords"></SettingsPager>

            <SettingsDataSecurity AllowDelete="False"></SettingsDataSecurity>
           
            <Styles> 
                <Card Height="5px" />
            </Styles>
            <Columns>
                <dx:CardViewTextColumn FieldName="GroupName" VisibleIndex="0"></dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="Seq" ReadOnly="True" Visible="False"></dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="ColID" VisibleIndex="1"></dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="ColName" Caption="a" VisibleIndex="2"></dx:CardViewTextColumn>
                <dx:CardViewDateColumn FieldName="Expire_Date" ReadOnly="True" VisibleIndex="3"></dx:CardViewDateColumn>
                <dx:CardViewTextColumn FieldName="NoVehicle" ReadOnly="True" VisibleIndex="4"></dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="AgeDay" ReadOnly="True" VisibleIndex="5"></dx:CardViewTextColumn>
            </Columns>
            <CardLayoutProperties ColCount="2">
                <Items>

                    <dx:CardViewColumnLayoutItem ColumnName="ColName" Caption="ColName" ColSpan="2"></dx:CardViewColumnLayoutItem>
                    <dx:CardViewColumnLayoutItem ColumnName="Expire_Date">
                        <ParentContainerStyle Font-Bold="True"></ParentContainerStyle>
                    </dx:CardViewColumnLayoutItem>
                    <dx:CardViewCommandLayoutItem ShowEditButton="True" ShowNewButton="True" HorizontalAlign="Right"></dx:CardViewCommandLayoutItem>
                    <dx:CardViewColumnLayoutItem ColumnName="ColID" Visible="False"></dx:CardViewColumnLayoutItem>

                    <dx:EditModeCommandLayoutItem HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                </Items>
                <SettingsItems ShowCaption="False"></SettingsItems>
            </CardLayoutProperties>
            <FormatConditions>
                <dx:CardViewFormatConditionHighlight ShowInColumn="Expire_Date" Expression="[AgeDay] &lt;= 0" FieldName="AgeDay" Format="LightRedFill">
                    <LayoutItemStyle Font-Bold="True"></LayoutItemStyle>
                </dx:CardViewFormatConditionHighlight>
                <dx:CardViewFormatConditionHighlight ShowInColumn="Expire_Date" Expression="[AgeDay] &gt; 0" Format="YellowFillWithDarkYellowText" FieldName="AgeDay">
                    <LayoutItemStyle Font-Bold="True"></LayoutItemStyle>
                </dx:CardViewFormatConditionHighlight>
            </FormatConditions>
        </dx:ASPxCardView>


        
<%--<div class="container">
            
                <h3 >DXApp Login</h3>
            
            <label for="uname"><b>Username</b></label>
            <asp:TextBox runat="server" ID="txt_Username" placeholder="Enter Username"></asp:TextBox>
            <label for="psw"><b>Password</b></label>
            <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login"  />
            <asp:Button runat="server" ID="btn_cancel" Text="Cancel" class="cnbtn"  />
        </div>--%>

       <%-- <div>

            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:MyPNC %>' SelectCommand="sp_RTS_KPI" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="DocID" Type="Int32"></asp:Parameter>
                    <asp:Parameter DefaultValue="1" Name="Op" Type="Int32"></asp:Parameter>
                </SelectParameters>
            </asp:SqlDataSource>
             


               


            <dx:ASPxVerticalGrid ID="ASPxVerticalGrid1" runat="server" Width="100%"   AutoGenerateRows="False" DataSourceID="SqlDataSource2" KeyFieldName="Seq" CssClass="dx-borderBox">
                <Rows>
                    <dx:VerticalGridTextRow FieldName="ColName" VisibleIndex="0">
                        <RecordStyle ForeColor="Green" BackColor="Silver" Font-Size="Large" Font-Bold="true"></RecordStyle>
                    </dx:VerticalGridTextRow>
                    <dx:VerticalGridTextRow FieldName="NoVehicle" ReadOnly="True" VisibleIndex="1">
                        <RecordStyle Font-Bold="True" Font-Size="Large" Border-BorderColor="Red" Border-BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="Red" ForeColor="White"></RecordStyle>
                    </dx:VerticalGridTextRow>
                    <dx:VerticalGridTextRow FieldName="AgeDay" ReadOnly="True" VisibleIndex="2">
                        <RecordStyle HorizontalAlign="Center" VerticalAlign="Middle" Border-BorderColor="#FFCC00" Border-BorderStyle="Solid" Font-Size="Large" BackColor="#FFCC00" ForeColor="White"></RecordStyle>
                    </dx:VerticalGridTextRow>
                </Rows>

                <Rows>
                  
                </Rows>

                <Settings  HorizontalScrollBarMode="Auto"
                    HeaderAreaWidth="0" RecordWidth="200" ShowCategoryIndents="false"
                    />

                <SettingsBehavior AllowSort="False"></SettingsBehavior>

                <SettingsPager Mode="ShowAllRecords"></SettingsPager>
            </dx:ASPxVerticalGrid>

        </div>--%>
    </form>
</body>
</html>
