<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Default.aspx.cs" Inherits="DXWebApplication1._Default" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <%--<img src="Content/Images/logopnc_03.png" />--%>
    <%--<div>

        <table style="margin: 0 auto;">
                
                 <tr>
                     <td>
                          <asp:Label Text="Expire In 30 Days"  BackColor="Orange" runat ="server" ID="Label1" /><br />
                     </td>
                      <td>
                          <asp:Label Text="Expired"  BackColor="Red" ForeColor="White" runat ="server" ID="Label2" /><br />
                     </td>
                     <td>
                          <asp:Label Text="N/A"  BackColor="Black" ForeColor="White" runat ="server" ID="Label3" /><br />
                     </td>
                 </tr>
                 </table>
    </div>
       <asp:SqlDataSource runat="server" ID="sds_RTS_KPI" ConnectionString='<%$ ConnectionStrings:MyPNC %>' SelectCommand="sp_RTS_KPI" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="DocID" Type="Int32"></asp:Parameter>
            <asp:Parameter DefaultValue="1" Name="Op" Type="Int32"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <dx:ASPxDataView ID="ASPxDataView1" runat="server" DataSourceID="sds_RTS_KPI"   Font-Size="Larger"   SettingsTableLayout-RowsPerPage="6" SettingsTableLayout-ColumnCount="6"
        Width="100%" PagerAlign="Justify" ItemSpacing="0px" ItemStyle-Height="25px" >
        
        <ItemTemplate>
            
            <table style="margin: 0 auto;">
                <tr>

                    <td colspan="3">
                        <b>
                            <asp:Label Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("ColName")) %>' runat="server" ID="ColNameLabel" /><br />
                            
                        </b>
                    </td>

                </tr>
                <tr>

                    <td>
                        <dx:ASPxButton  ID="btn_30"  PostBackUrl='<%#string.Format("Vehicle.aspx?id={0}",Eval("ColID"))%>' Height="30" runat="server" BackColor="Orange" ForeColor="Black" Font-Size="Large"   Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("NoVehicle")) %>' Width="50"  ></dx:ASPxButton>

 
                    </td>
                    <td>
                         <dx:ASPxButton  ID="btn_expire"  PostBackUrl='<%#string.Format("Vehicle.aspx?id={0}",Eval("ColID"))%>' Height="40" runat="server" BackColor="Red" ForeColor="White" Font-Size="Large"   Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("AgeDay")) %>'  Width="50" ></dx:ASPxButton>
 
                    </td>
                    <td>
                          <dx:ASPxButton  ID="btn_Notllisted"  PostBackUrl='<%#string.Format("Vehicle.aspx?id={0}",Eval("ColID"))%>' Height="50"  runat="server" BackColor="Black" ForeColor="White"  Font-Size="Large"   Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("Seq")) %>'  Width="50" ></dx:ASPxButton>

              
                    </td>
                </tr>
            </table>--%>



            <%--<asp:Label CssClass="StrongText"  Font-Bold="true" Width="50px" BackColor="WhiteSmoke" BorderStyle="Groove" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("NoVehicle")) %>' runat="server" ID="NoVehicleLabel" />--%>

          <%--  <div style="margin-left: auto; margin-right: auto; text-align: center;">
            </div>

        </ItemTemplate>
        <PagerSettings ShowNumericButtons="true">
            <AllButton Visible="False" />
            <Summary Visible="false" />
            <PageSizeItemSettings Visible="false" ShowAllItem="true" />
        </PagerSettings>
    </dx:ASPxDataView>--%>

    <%-- <dx:ASPxDashboardViewer ID="ASPxDashboardViewer1" runat="server" Width="800px" Height="600px" DashboardSource="~/App_Data/Dashboards/dashboard1.xml"></dx:ASPxDashboardViewer>--%>
    <%--<dx:ASPxDashboardViewer ID="ASPxDashboardViewer2" runat="server" DashboardSource="DXWebApplication1.DS_Trip" Width="800px" Height="600px"></dx:ASPxDashboardViewer>--%>
</asp:Content>
