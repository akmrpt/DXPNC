<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="List_Vehicle.aspx.cs" Inherits="DXWebApplication1.List_Vehicle" %>

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

    <dx:ASPxPanel ID="LeftPane" runat="server" FixedPosition="WindowLeft" Visible="false" ClientInstanceName="leftPane" CssClass="leftPane" Collapsible="true">
        <SettingsAdaptivity CollapseAtWindowInnerWidth="1023" />
        <Styles>
            <Panel CssClass="panel"></Panel>
        </Styles>
        <PanelCollection>
            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
            
     <div class="leftPanel">

        
 
                  </div>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxPanel>
    

         <%--<dx:ASPxDataView ID="ASPxDataView1" runat="server" Visible="false" DataSourceID="SqlDataSource2" Font-Size="Larger" pa SettingsTableLayout-RowsPerPage="6" SettingsTableLayout-ColumnCount="6"
                                        Width="100%" PagerAlign="Justify" ItemSpacing="0px" ItemStyle-Height="25px">
                            
                            <ItemTemplate >
                                
                                <table style="margin: 0 auto;">
                                    <tr>

                                        <td colspan="3">
                                            <b>
                                                <asp:Label Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("ColName")) %>' runat="server" ID="ColNameLabel" /><br />
                                            </b>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td> <dx:ASPxHyperLink Target="_self" Font-Bold="true" Border-BorderStyle="Groove" Width="50px" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("NoVehicle")) %>'
                                    NavigateUrl='<%#string.Format("Vehicle.aspx?id={0}",Eval("ColID"))%>'>
                                </dx:ASPxHyperLink></td>
                                        <td>
                                             <dx:ASPxHyperLink Target="_self" Font-Bold="true" Border-BorderStyle="Groove" Width="50px" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("NoVehicle")) %>'
                                    NavigateUrl='<%#string.Format("Vehicle.aspx?id={0}",Eval("ColID"))%>'>
                                </dx:ASPxHyperLink>
                                        </td>
                                        <td>
                                             <dx:ASPxHyperLink Target="_self" Font-Bold="true" Border-BorderStyle="Groove" Width="50px" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("NoVehicle")) %>'
                                    NavigateUrl='<%#string.Format("Vehicle.aspx?id={0}",Eval("ColID"))%>'>
                                </dx:ASPxHyperLink>
                                        </td>
                                    </tr>
                                </table>

                                
                               
                                   <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                
                                </div>

                            </ItemTemplate>
                                         <PagerSettings ShowNumericButtons="true">
            <AllButton Visible="False" />
            <Summary Visible="false" />
            <PageSizeItemSettings Visible="false" ShowAllItem="true" />
        </PagerSettings>
                        </dx:ASPxDataView>--%>


      


       
 
     
 
     <div class="contentPane" >
    
          <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="ds_Ve" AutoGenerateColumns="False" KeyFieldName="VehicleCode" Width="90%" 
                 
                Settings-HorizontalScrollBarMode="Visible" Settings-VerticalScrollBarMode="Auto" Settings-VerticalScrollableHeight="500">
                <SettingsPager PageSize="15" Position="Top" AlwaysShowPager="True"></SettingsPager>
                
                <SettingsPager Visible="True" Mode="ShowAllRecords"></SettingsPager>

 
<SettingsBehavior AllowEllipsisInText="false" AllowSelectByRowClick="True"></SettingsBehavior>

                <SettingsSearchPanel Visible="True"></SettingsSearchPanel>
                <Columns>
                   
                    <dx:GridViewDataTextColumn FieldName="ColID" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="VehicleCode" ReadOnly="True" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Vehicle" VisibleIndex="3" CellStyle-BackColor="YellowGreen" HeaderStyle-BackColor="YellowGreen"  FixedStyle="Left">
 
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="RegistrationBy" VisibleIndex="4"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DEPLOYED" VisibleIndex="5" Caption="Deployed"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Model" VisibleIndex="6"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="M_Year" VisibleIndex="7" Caption="Manufacturing Year"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ChasisNo" VisibleIndex="8"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EngineNo" VisibleIndex="9"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Truck_Laden_Weight" VisibleIndex="10"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Truck_UNLaden_Weight" VisibleIndex="11"></dx:GridViewDataTextColumn>

                    <dx:GridViewDataDateColumn FieldName="DateIn" VisibleIndex="12"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="RegistrationDate" VisibleIndex="13"></dx:GridViewDataDateColumn>

                    <dx:GridViewDataDateColumn FieldName="TOKEN TAX EXPIRY" ReadOnly="True" VisibleIndex="14"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="CALIBRATION EXPIRY" ReadOnly="True" VisibleIndex="15"></dx:GridViewDataDateColumn>

                    <dx:GridViewDataDateColumn FieldName="EXPLOSIVE (FORM Q)" ReadOnly="True" VisibleIndex="16"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="FITNESS CERTIFICATE" ReadOnly="True" VisibleIndex="17"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="INSURANC GOVT" ReadOnly="True" VisibleIndex="18"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="ROUTE PERMIT" ReadOnly="True" VisibleIndex="19"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="THIRD PARTY REPORTS" ReadOnly="True" VisibleIndex="20"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="PUBLIC LIABILITY" ReadOnly="True" VisibleIndex="21"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="WORKMEN COMPENS" ReadOnly="True" VisibleIndex="22"></dx:GridViewDataDateColumn>
                </Columns>
                <FormatConditions>
                    <dx:GridViewFormatConditionHighlight ShowInColumn="TOKEN TAX EXPIRY" Expression="DateDiffDay(Today(),[TOKEN TAX EXPIRY] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                    <dx:GridViewFormatConditionHighlight ShowInColumn="CALIBRATION EXPIRY" Expression="DateDiffDay(Today(),[CALIBRATION EXPIRY] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   <dx:GridViewFormatConditionHighlight ShowInColumn="EXPLOSIVE (FORM Q)" Expression="DateDiffDay(Today(),[EXPLOSIVE (FORM Q)] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   <dx:GridViewFormatConditionHighlight ShowInColumn="FITNESS CERTIFICATE" Expression="DateDiffDay(Today(),[FITNESS CERTIFICATE] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   <dx:GridViewFormatConditionHighlight ShowInColumn="INSURANC GOVT" Expression="DateDiffDay(Today(),INSURANC GOVT ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   <dx:GridViewFormatConditionHighlight ShowInColumn="ROUTE PERMIT" Expression="DateDiffDay(Today(),[ROUTE PERMIT] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   <dx:GridViewFormatConditionHighlight ShowInColumn="THIRD PARTY REPORTS" Expression="DateDiffDay(Today(),[THIRD PARTY REPORTS] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   
                     <dx:GridViewFormatConditionHighlight ShowInColumn="PUBLIC LIABILITY" Expression="DateDiffDay(Today(),[PUBLIC LIABILITY] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
               
                     <dx:GridViewFormatConditionHighlight ShowInColumn="WORKMEN COMPENS" Expression="DateDiffDay(Today(),[WORKMEN COMPENS] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
               
                    
                     </FormatConditions>
            </dx:ASPxGridView>

            <asp:SqlDataSource runat="server" ID="ds_Ve" ConnectionString='<%$ ConnectionStrings:MyPNC %>'
                SelectCommand="sp_RTS_VehicleList" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

         </div>

  


</asp:Content>
