<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="List_Vehicle2.aspx.cs" Inherits="DXWebApplication1.List_Vehicle2" %>
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
   
        <div style="width:95%;float:right">

 
       <h2>Vehicle List</h2>

      <dx:ASPxGridView ID="ASPxGridView1" runat="server" ClientInstanceName="grid" DataSourceID="ds_Ve"  
                AutoGenerateColumns="False" KeyFieldName="VehicleCode" Width="90%" 
                 
                Settings-HorizontalScrollBarMode="Visible" Settings-VerticalScrollBarMode="Auto" Settings-VerticalScrollableHeight="500">
                <SettingsPager PageSize="15" Position="Top" AlwaysShowPager="True"></SettingsPager>
                
                <SettingsPager Visible="True" Mode="ShowAllRecords"></SettingsPager>

 
                
                <SettingsSearchPanel Visible="True"></SettingsSearchPanel>
                <ClientSideEvents CustomButtonClick="OnCustomButtonClick"/>
                <Columns>
                      <dx:GridViewCommandColumn>
                                    <HeaderTemplate>
                                        <dx:ASPxButton ID="NewBtn" runat="server" Text="New" AutoPostBack="false" RenderMode="Link">
                                            <ClientSideEvents Click="OnNewClick" />
                                        </dx:ASPxButton>
                                    </HeaderTemplate>
                                    <CustomButtons>
                                        <dx:GridViewCommandColumnCustomButton ID="EditBtn" Text="View">
                                            
                                        </dx:GridViewCommandColumnCustomButton>
                                    </CustomButtons>
                                </dx:GridViewCommandColumn>
                   
                    <dx:GridViewDataTextColumn FieldName="VehicleCode" ReadOnly="True" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Vehicle" VisibleIndex="2" CellStyle-BackColor="YellowGreen" HeaderStyle-BackColor="YellowGreen">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="RegistrationBy" VisibleIndex="14"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DEPLOYED" VisibleIndex="15" Caption="Deployed"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Model" VisibleIndex="18"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="M_Year" VisibleIndex="19" Caption="Manufacturing Year"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ChasisNo" VisibleIndex="20"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EngineNo" VisibleIndex="21"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Truck_UNLaden_Weight" VisibleIndex="17" Caption="UNLaden_Weight"></dx:GridViewDataTextColumn>

                    <dx:GridViewDataDateColumn FieldName="DateIn" VisibleIndex="12"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="RegistrationDate" VisibleIndex="13"></dx:GridViewDataDateColumn>

                    <dx:GridViewDataDateColumn FieldName="TOKEN TAX EXPIRY" ReadOnly="True" VisibleIndex="3"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="CALIBRATION EXPIRY" ReadOnly="True" VisibleIndex="4"></dx:GridViewDataDateColumn>

                    <dx:GridViewDataDateColumn FieldName="EXPLOSIVE (FORM Q)" ReadOnly="True" VisibleIndex="5"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="FITNESS CERTIFICATE" ReadOnly="True" VisibleIndex="6"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="INSURANC GOVT" ReadOnly="True" VisibleIndex="7"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="ROUTE PERMIT" ReadOnly="True" VisibleIndex="8"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="THIRD PARTY REPORTS" ReadOnly="True" VisibleIndex="9"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="PUBLIC LIABILITY" ReadOnly="True" VisibleIndex="10"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="WORKMEN COMPENS" ReadOnly="True" VisibleIndex="11"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="Truck_Laden_Weight" ShowInCustomizationForm="True" Caption="Laden_Weight" VisibleIndex="16"></dx:GridViewDataTextColumn>
                </Columns>
                <FormatConditions>
                    <dx:GridViewFormatConditionHighlight ShowInColumn="TOKEN TAX EXPIRY" Expression="DateDiffDay(Today(),[TOKEN TAX EXPIRY] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                    <dx:GridViewFormatConditionHighlight ShowInColumn="CALIBRATION EXPIRY" Expression="DateDiffDay(Today(),[CALIBRATION EXPIRY] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   <dx:GridViewFormatConditionHighlight ShowInColumn="EXPLOSIVE (FORM Q)" Expression="DateDiffDay(Today(),[EXPLOSIVE (FORM Q)] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   <dx:GridViewFormatConditionHighlight ShowInColumn="FITNESS CERTIFICATE" Expression="DateDiffDay(Today(),[FITNESS CERTIFICATE] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   <dx:GridViewFormatConditionHighlight ShowInColumn="INSURANC GOVT" Expression="DateDiffDay(Today(),[INSURANC GOVT] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   <dx:GridViewFormatConditionHighlight ShowInColumn="ROUTE PERMIT" Expression="DateDiffDay(Today(),[ROUTE PERMIT] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   <dx:GridViewFormatConditionHighlight ShowInColumn="THIRD PARTY REPORTS" Expression="DateDiffDay(Today(),[THIRD PARTY REPORTS] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
                   
                     <dx:GridViewFormatConditionHighlight ShowInColumn="PUBLIC LIABILITY" Expression="DateDiffDay(Today(),[PUBLIC LIABILITY] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
               
                     <dx:GridViewFormatConditionHighlight ShowInColumn="WORKMEN COMPENS" Expression="DateDiffDay(Today(),[WORKMEN COMPENS] ) &lt; 0"></dx:GridViewFormatConditionHighlight>
               
                    
                     </FormatConditions>
            </dx:ASPxGridView>

            <asp:SqlDataSource runat="server" ID="ds_Ve" ConnectionString='<%$ ConnectionStrings:MyPNC %>'
                SelectCommand="dbo.[sp_RTS_VehicleList]" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
</asp:Content>
