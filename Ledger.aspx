<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Ledger.aspx.cs" Inherits="DXWebApplication1.Ledger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%--<dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="2">
        <Items>
            <dx:LayoutItem Caption="From">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxDateEdit runat="server" ID="ASPxFormLayout1_E3"></dx:ASPxDateEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="ToDate">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxDateEdit runat="server" ID="ASPxFormLayout1_E4"></dx:ASPxDateEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Account">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton runat="server" ID="ASPxFormLayout1_E6"></dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Execute">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxComboBox runat="server" ID="ASPxFormLayout1_E5"></dx:ASPxComboBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>--%>


    <h2>Ledger</h2>

    <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="From Date"></dx:ASPxLabel>
    <dx:ASPxDateEdit ID="DT_FROM" runat="server"></dx:ASPxDateEdit>
    <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Account"></dx:ASPxLabel>
    <dx:ASPxComboBox ID="cb_acc_list" runat="server" ValueType="System.String" DataSourceID="DS_ListCOA" TextField="AccountName" ValueField="AccountCode"></dx:ASPxComboBox>

    <asp:SqlDataSource ID="DS_ListCOA" runat="server" ConnectionString='<%$ ConnectionStrings:MyPNC %>' SelectCommand="SELECT AccountCode,AccountName FROM tblAccounts WHERE AccountLevel = 'Detail' AND LEN(AccountName) > 2 ORDER BY AccountName"></asp:SqlDataSource>

    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Execute" OnClick="ASPxButton1_Click"></dx:ASPxButton>
    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="ASPxLabel"></dx:ASPxLabel>

   <%-- <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" KeyFieldName="ROW" Width="100%">
         
        <Columns>
            <dx:GridViewDataTextColumn FieldName="VoucherNo" VisibleIndex="0" Width="150"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="VoucherDate" VisibleIndex="1" Width="150"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OppAccountName" VisibleIndex="2" Caption="Account Title"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Debit" VisibleIndex="4">
                 <PropertiesTextEdit DisplayFormatString="#,#"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Credit" VisibleIndex="5">
                 <PropertiesTextEdit DisplayFormatString="#,#"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Balance" VisibleIndex="6">
                 <PropertiesTextEdit DisplayFormatString="#,#"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
        </Columns>
          <Settings  VerticalScrollBarMode="Visible" VerticalScrollableHeight="400" />
        <SettingsPager Mode="EndlessPaging" PageSize="20" />
    </dx:ASPxGridView>--%>


     <%-- <asp:SqlDataSource runat="server" ID="ds_gl" ConnectionString='<%$ ConnectionStrings:MyPNC %>' SelectCommand="sp_call_gl_web" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="0201020071" Name="acc_cd" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="2020-02-01" Name="from_dt" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>--%>
</asp:Content>
