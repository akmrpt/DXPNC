<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gl_GridView.aspx.cs" Inherits="DXWebApplication1.gl_GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
           <dx:ASPxPanel ID="ASPxPanel1" runat="server" Width="100%" Height="50px" BackColor="Highlight">  
    <PanelCollection>  
        <dx:PanelContent runat="server">  
            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="ac_title" Font-Size="Larger" Width="50%"></dx:ASPxLabel>
            <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Export" OnClick="ASPxButton1_Click"></dx:ASPxButton>
            <dx:ASPxButton ID="ASPxButton2" runat="server" Text="Back" OnClick="ASPxButton2_Click"></dx:ASPxButton>
        </dx:PanelContent>  
    </PanelCollection>  
</dx:ASPxPanel> 
        </div>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ds_tmpGL_WEB" KeyFieldName="ROW" Width="100%" Theme="MetropolisBlue">
            <SettingsAdaptivity>
                <AdaptiveDetailLayoutProperties>
                    <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit"></SettingsAdaptivity>
                </AdaptiveDetailLayoutProperties>
            </SettingsAdaptivity>
            
            <SettingsPager Visible="False"></SettingsPager>
            <Columns>
                <dx:GridViewDataTextColumn FieldName="CompanyId" VisibleIndex="0" Visible="false"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="BookType" VisibleIndex="1" Visible="false"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="VoucherNo" VisibleIndex="2" Width="100"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="VoucherDate" VisibleIndex="3" Width="100"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="AccountCode" VisibleIndex="4" Visible="false"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="AccountName" VisibleIndex="5" Visible="false"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="OppAccount" VisibleIndex="6"  Visible="false"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="OppAccountName" VisibleIndex="7"></dx:GridViewDataTextColumn>
                   <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="8"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ChequeNo" VisibleIndex="9"  Visible="false"></dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="ChequeDate" VisibleIndex="10" Visible="false"></dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="CheqNo_Date" VisibleIndex="11"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Debit" VisibleIndex="12" Width="100">
                     <PropertiesTextEdit DisplayFormatString="#,#"></PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Credit" VisibleIndex="13" Width="100">
                     <PropertiesTextEdit DisplayFormatString="#,#"></PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Balance" VisibleIndex="14" Width="100">
                     <PropertiesTextEdit DisplayFormatString="#,#"></PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
             
                <dx:GridViewDataTextColumn FieldName="ChqClear" VisibleIndex="15" Visible="false"></dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="ChqClearDate" VisibleIndex="16" Visible="false"></dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="BankStDate" VisibleIndex="17" Visible="false"></dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="EntryType" VisibleIndex="18" Visible="false"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ROW" VisibleIndex="19" Visible="false"></dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="DateFrom" VisibleIndex="20" Visible="false"></dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="DateUpto" VisibleIndex="21" Visible="false"></dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="22" Visible="false"></dx:GridViewDataTextColumn>
            </Columns>
             <Settings  VerticalScrollBarMode="Visible" VerticalScrollableHeight="800" />
        <SettingsPager Mode="EndlessPaging" PageSize="100" />
        </dx:ASPxGridView>
        <asp:SqlDataSource runat="server" ID="ds_tmpGL_WEB" ConnectionString='<%$ ConnectionStrings:MyPNC %>' SelectCommand="select * from tmpGL_WEB"></asp:SqlDataSource>
    
      <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" GridViewID="ASPxGridView1" runat="server"></dx:ASPxGridViewExporter>  
    </div>
    </form>
</body>
</html>
