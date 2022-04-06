<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="AR_AP.aspx.cs" Inherits="DXWebApplication1.AR_AP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>

        <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="SqlDS_SaleSummary" AutoGenerateColumns="False" DataSourceForceStandardPaging="True">
            <SettingsDataSecurity AllowEdit="False" AllowInsert="False" AllowDelete="False"></SettingsDataSecurity>

            <SettingsSearchPanel Visible="True"></SettingsSearchPanel>
            <Columns>
                <dx:GridViewDataTextColumn VisibleIndex="0" FieldName="BillNo"></dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>

        <asp:SqlDataSource runat="server" ID="SqlDS_SaleSummary" ConnectionString='<%$ ConnectionStrings:Local %>' SelectCommand="exec dbo.sp_rpt_SaleReport 'summary'">
        </asp:SqlDataSource>
    </div>
</asp:Content>
