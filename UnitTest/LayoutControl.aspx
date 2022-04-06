<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation = "false" CodeBehind="LayoutControl.aspx.cs" Inherits="DXWebApplication1.UnitTest.LayoutControl"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style type="text/css">
        .buttonAlign {
            text-align: right;
        }

        @media(max-width:600px) {
            .buttonAlign {
                text-align: center;
            }
        }
    </style>
    <script>
        function SetPCVisible(value) {
            var popupControl = GetPopupControl();
           // if(value)
                popupControl.Show();
           // else
             //   popupControl.Hide();
        }
        
        function GetPopupControl() {
            return window1;
        }
        function OnButtonClick(s, e) {
            var buttonElement = s.GetButton(e.buttonIndex);
            $("#myModal").modal('show');

        
            //alert("Button " + buttonElement.innerText + " is clicked");
        }
    </script>
</head>
<body>
    <div class="container-fluid">
        <form id="form1" runat="server">

            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
            <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
             <dx:ASPxTextBox runat="server" ID="edit_make" Text="" CssClass="form-control"> </dx:ASPxTextBox>
                              
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <dx:ASPxButton runat="server" ID="btn_SaveMake" Text="Save" AutoPostBack="false" OnClick="Unnamed_Click"></dx:ASPxButton>
                          
        </div>
      </div>
      
    </div>
  </div>
            <dx:ASPxPopupControl ID="window1" ClientInstanceName="window1" runat="server">
                <Windows>
                    <dx:PopupWindow ScrollBars="None">
                        <ContentCollection>
                            <dx:PopupControlContentControl runat="server">
                               </dx:PopupControlContentControl>
                        </ContentCollection>
                    </dx:PopupWindow>
                </Windows>
            </dx:ASPxPopupControl>
            <%--<asp:SqlDataSource runat="server" ID="ds_make_popup" ConnectionString='<%$ ConnectionStrings:MyPNC %>' SelectCommand="SELECT * FROM [Adm_VehicleMakeTAB]"></asp:SqlDataSource>--%>
        
            
              <dx:ASPxHyperLink ID="hlShow" runat="server" Visible="true" NavigateUrl="javascript:SetPCVisible(true);"
                                    CssClass="LinkButton" Text="Show" />



            <div class="row">
                <div class="col-sm-3 col-md-9" style="background-color: yellow;">
                    <dx:ASPxFormLayout ID="ASPxFormLayout1" CssClass="mainContentPane" runat="server" DataSourceID="SqlDataSource1"
                        
                        Styles-LayoutItem-Caption-CssClass="caption bg-info"
                        Styles-LayoutItem-CssClass="form-control"
                        Styles-LayoutItem-Paddings-Padding="10px"
                       
                        Styles-LayoutGroupBox-Caption-Font-Size="Small"
                        Styles-LayoutGroupBox-Caption-BackColor="Window">
                        <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit"></SettingsAdaptivity>

                        <Items>
                            <dx:LayoutGroup ColCount="1" ShowCaption="False" GroupBoxDecoration="None" Border-BorderStyle="None" GroupBoxStyle-BackColor="WhiteSmoke">
                                <Items>
                                    <dx:LayoutGroup ColCount="2">
                                        <Items>
                                            <dx:LayoutItem FieldName="Vehicle" ShowCaption="False">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxLabel runat="server" Font-Size="XX-Large" ID="Vehicle"></dx:ASPxLabel>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem ShowCaption="False" HorizontalAlign="Right">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">

                                                        <table>
                                                            <tr>
                                                                <td style="padding-right: 10px">
                                                                    <dx:ASPxButton runat="server" Text="Update" Width="100px" CssClass="btn btn-success" Font-Bold="True" ID="bSubmit"></dx:ASPxButton>

                                                                </td>
                                                                <td>
                                                                    <dx:ASPxHyperLink runat="server" NavigateUrl="list_vehicle2.aspx" Text="Cancel" CssClass="btn btn-link" ID="linkCancel"></dx:ASPxHyperLink>

                                                                </td>
                                                                 <td style="padding-right: 10px">
                                                                    <dx:ASPxButton runat="server" Text="Print" Width="100px" CssClass="btn btn-info" Font-Bold="True" ID="ASPxButton_ExportPDF" OnClick="ASPxButton_ExportPDF_Click" ></dx:ASPxButton>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                        </Items>
                                    </dx:LayoutGroup>


                                    <dx:LayoutGroup Caption="Basic Info" ColCount="2">
                                        <Items>
                                            <dx:LayoutItem FieldName="RegistrationBy">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxTextBox runat="server" Width="170px" ID="ASPxFormLayout1_E12"></dx:ASPxTextBox>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="DEPLOYED">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxTextBox runat="server" Width="170px" ID="ASPxFormLayout1_E34"></dx:ASPxTextBox>





                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem Caption="Make" FieldName="VehicleMakeCode">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">

                                                        <dx:ASPxGridLookup runat="server" ID="Lookup_Make" DataSourceID="DS_Make" AutoGenerateColumns="False"
                                                            KeyFieldName="VehicleMake"
                                                            >
                                                            <GridViewProperties>
                                                                <SettingsBehavior AllowFocusedRow="True" AllowSelectSingleRowOnly="True"></SettingsBehavior>
                                                            </GridViewProperties>
                                                            <Columns>
                                                                   <dx:GridViewDataTextColumn FieldName="VehicleMake" VisibleIndex="0"></dx:GridViewDataTextColumn>
                                                            </Columns>

                                                           

                                                            <Buttons>
                                                                <dx:EditButton Text="Add"  ></dx:EditButton>
                                                           
                                                            </Buttons>
                                                            
                                                            <ClearButton DisplayMode="Always"></ClearButton>
                                                            
                                                        </dx:ASPxGridLookup>
                                                        
                                                        <asp:SqlDataSource runat="server" ID="DS_Make" ConnectionString='<%$ ConnectionStrings:MyPNC %>' SelectCommand="SELECT DISTINCT [VehicleMakeCode], [VehicleMake] FROM [Adm_VehicleMakeTAB] WHERE ([IsDelete] = @IsDelete)">
                                                            <SelectParameters>
                                                                <asp:Parameter DefaultValue="0" Name="IsDelete" Type="String"></asp:Parameter>
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="Model">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxTextBox runat="server" Width="170px" ID="ASPxFormLayout1_E15"></dx:ASPxTextBox>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="HP">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E35"></dx:ASPxSpinEdit>



                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem Caption="MANUFECTURING YEAR" FieldName="M_Year" VerticalAlign="Top">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxDateEdit runat="server" ID="ASPxFormLayout1_E2"></dx:ASPxDateEdit>






                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="EngineNo">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxTextBox runat="server" Width="170px" ID="ASPxFormLayout1_E18"></dx:ASPxTextBox>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="ChasisNo">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxTextBox runat="server" Width="170px" ID="ASPxFormLayout1_E17"></dx:ASPxTextBox>



                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="Truck_Laden_Weight">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E36"></dx:ASPxSpinEdit>








                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="Truck_UNLaden_Weight">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E37"></dx:ASPxSpinEdit>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="DrivingAxle">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E23"></dx:ASPxSpinEdit>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="RegistrationDate">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxDateEdit runat="server" ID="ASPxFormLayout1_E11"></dx:ASPxDateEdit>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                        </Items>
                                    </dx:LayoutGroup>
                                    <dx:LayoutGroup Caption="TANK/TRAILOR INFORMATION" ColCount="2">
                                        <Items>
                                            <dx:LayoutItem FieldName="TANK_MAKER">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxTextBox runat="server" ID="ASPxFormLayout1_E38"></dx:ASPxTextBox>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="FuelTankCapicity" Caption="Capicity(ltr)">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E26"></dx:ASPxSpinEdit>

                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutGroup Caption="CHAMBER_DIP" RowSpan="4">
                                                <Items>
                                                    <dx:LayoutItem Caption="DIP_1" FieldName="CHAMBER_DIP_1">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="DIP_1"></dx:ASPxSpinEdit>




                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem Caption="DIP_2" FieldName="CHAMBER_DIP_2">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="DIP_2"></dx:ASPxSpinEdit>



                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem Caption="DIP_3" FieldName="CHAMBER_DIP_3">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="DIP_3"></dx:ASPxSpinEdit>



                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem Caption="DIP_4" FieldName="CHAMBER_DIP_4">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="DIP_4"></dx:ASPxSpinEdit>



                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                </Items>
                                            </dx:LayoutGroup>
                                            <dx:LayoutGroup Caption="Volume " RowSpan="4">
                                                <Items>
                                                    <dx:LayoutItem FieldName="VOL_COMPARTMENT_1">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E45"></dx:ASPxSpinEdit>



                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem FieldName="VOL_COMPARTMENT_2">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E46"></dx:ASPxSpinEdit>



                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem FieldName="VOL_COMPARTMENT_3">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E47"></dx:ASPxSpinEdit>



                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem FieldName="VOL_COMPARTMENT_4">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E48"></dx:ASPxSpinEdit>



                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                </Items>
                                            </dx:LayoutGroup>
                                            <dx:LayoutItem FieldName="TANK_LENGTH">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E49"></dx:ASPxSpinEdit>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="TANK_HEIGHT">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E51"></dx:ASPxSpinEdit>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="TANK_WIDTH">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E50"></dx:ASPxSpinEdit>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="Axle">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E21"></dx:ASPxSpinEdit>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="G_Unladen_Weight">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E52"></dx:ASPxSpinEdit>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="G_Empty_Weight">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E53"></dx:ASPxSpinEdit>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="G_Cargo_Weight">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E54"></dx:ASPxSpinEdit>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="TRAILOR_ABS">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxCheckBox runat="server" CheckState="Unchecked" ID="ASPxFormLayout1_E55"></dx:ASPxCheckBox>



                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="MANUFECTURING_DATE">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxDateEdit runat="server" ID="ASPxFormLayout1_E56"></dx:ASPxDateEdit>






                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem FieldName="DeadAxle">
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                        <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E24"></dx:ASPxSpinEdit>


                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                        </Items>
                                    </dx:LayoutGroup>
                                    <dx:LayoutGroup Caption="" ColCount="3">
                                        <Items>
                                            <dx:LayoutGroup Caption="PPE&#39;S AND ERE / SAFETY EQUIPMENT">
                                                <Items>
                                                    <dx:LayoutItem FieldName="PPES">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxCheckBox runat="server" CheckState="Unchecked" ID="ASPxFormLayout1_E57"></dx:ASPxCheckBox>




                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem FieldName="SPILL_KIT">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxCheckBox runat="server" CheckState="Unchecked" ID="ASPxFormLayout1_E58"></dx:ASPxCheckBox>




                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem FieldName="FIRST_AID_KIT">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxCheckBox runat="server" CheckState="Unchecked" ID="ASPxFormLayout1_E59"></dx:ASPxCheckBox>






                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem FieldName="SAFETY_CONES">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxCheckBox runat="server" CheckState="Unchecked" ID="ASPxFormLayout1_E60"></dx:ASPxCheckBox>







                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                </Items>
                                            </dx:LayoutGroup>
                                            <dx:LayoutGroup Caption="TRACKER INFO">
                                                <Items>
                                                    <dx:LayoutItem FieldName="TRACKER_COMPANY">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxTextBox runat="server" Width="170px" ID="TRACKER_COMPANY"></dx:ASPxTextBox>


                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem FieldName="TRACKER_EXPIRE">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxDateEdit runat="server" ID="TRACKER_EXPIRE"></dx:ASPxDateEdit>




                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem FieldName="TRACKER_ID">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxTextBox runat="server" Width="170px" ID="ASPxFormLayout1_E63"></dx:ASPxTextBox>




                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                    <dx:LayoutItem FieldName="TRACKER_PASSWORD">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxTextBox runat="server" Width="170px" ID="ASPxFormLayout1_E64"></dx:ASPxTextBox>





                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                </Items>
                                            </dx:LayoutGroup>

                                        </Items>
                                    </dx:LayoutGroup>
                                </Items>
                            </dx:LayoutGroup>
                            <%--basic--%>
                            <dx:LayoutGroup ColCount="2" Visible="False">
                                <Items>
                                    <dx:LayoutItem FieldName="Limit">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E8"></dx:ASPxSpinEdit>





                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem FieldName="Tanker">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E9"></dx:ASPxSpinEdit>





                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem FieldName="Cylinder">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E19"></dx:ASPxSpinEdit>







                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem FieldName="Engine">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E20"></dx:ASPxSpinEdit>




                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem FieldName="Tyre">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E22"></dx:ASPxSpinEdit>


                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem FieldName="FuelTank">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                <dx:ASPxSpinEdit runat="server" Number="0" ID="ASPxFormLayout1_E25"></dx:ASPxSpinEdit>







                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                </Items>
                            </dx:LayoutGroup>

                            <%--limit--%>
                            <%--TANK/TRAILOR--%>
                            <%--PPE&#39;S AND ERE / SAFETY EQUIPMENT--%>
                            <%--TRACKER INFO--%>
                        </Items>
                    </dx:ASPxFormLayout>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:MyPNC %>' DeleteCommand="DELETE FROM [Adm_VehicleTAB] WHERE [VehicleCode] = @VehicleCode" InsertCommand="INSERT INTO [Adm_VehicleTAB] ([VehicleCode], [OwnerName], [Vehicle], [IsActive], [VehicleMakeCode], [OwnerAccount], [VehicleAccount], [Limit], [Tanker], [OwnerType], [RegistrationDate], [RegistrationBy], [VehicleTypeCode], [VehicleCategoryCode], [Model], [M_Year], [ChasisNo], [EngineNo], [Cylinder], [Engine], [Axle], [Tyre], [DrivingAxle], [DeadAxle], [FuelTank], [FuelTankCapicity], [UserID], [ComputerID], [LastEdited], [IsDelete], [DateIn], [DateOut], [IsOut], [DEPLOYED], [HP], [Truck_Laden_Weight], [Truck_UNLaden_Weight], [TANK_MAKER], [TANK_CHESSIS], [FIFTH_WHEEL], [CHAMBER_DIP_1], [CHAMBER_DIP_2], [CHAMBER_DIP_3], [CHAMBER_DIP_4], [VOL_COMPARTMENT_1], [VOL_COMPARTMENT_2], [VOL_COMPARTMENT_3], [VOL_COMPARTMENT_4], [TANK_LENGTH], [TANK_WIDTH], [TANK_HEIGHT], [G_Unladen_Weight], [G_Empty_Weight], [G_Cargo_Weight], [TRAILOR_ABS], [MANUFECTURING_DATE], [PPES], [SPILL_KIT], [FIRST_AID_KIT], [SAFETY_CONES], [TRACKER_COMPANY], [TRACKER_EXPIRE], [TRACKER_ID], [TRACKER_PASSWORD], [Description]) VALUES (@VehicleCode, @OwnerName, @Vehicle, @IsActive, @VehicleMakeCode, @OwnerAccount, @VehicleAccount, @Limit, @Tanker, @OwnerType, @RegistrationDate, @RegistrationBy, @VehicleTypeCode, @VehicleCategoryCode, @Model, @M_Year, @ChasisNo, @EngineNo, @Cylinder, @Engine, @Axle, @Tyre, @DrivingAxle, @DeadAxle, @FuelTank, @FuelTankCapicity, @UserID, @ComputerID, @LastEdited, @IsDelete, @DateIn, @DateOut, @IsOut, @DEPLOYED, @HP, @Truck_Laden_Weight, @Truck_UNLaden_Weight, @TANK_MAKER, @TANK_CHESSIS, @FIFTH_WHEEL, @CHAMBER_DIP_1, @CHAMBER_DIP_2, @CHAMBER_DIP_3, @CHAMBER_DIP_4, @VOL_COMPARTMENT_1, @VOL_COMPARTMENT_2, @VOL_COMPARTMENT_3, @VOL_COMPARTMENT_4, @TANK_LENGTH, @TANK_WIDTH, @TANK_HEIGHT, @G_Unladen_Weight, @G_Empty_Weight, @G_Cargo_Weight, @TRAILOR_ABS, @MANUFECTURING_DATE, @PPES, @SPILL_KIT, @FIRST_AID_KIT, @SAFETY_CONES, @TRACKER_COMPANY, @TRACKER_EXPIRE, @TRACKER_ID, @TRACKER_PASSWORD, @Description)" SelectCommand="SELECT * FROM [Adm_VehicleTAB] WHERE ([VehicleCode] = @VehicleCode)" UpdateCommand="UPDATE [Adm_VehicleTAB] SET [OwnerName] = @OwnerName, [Vehicle] = @Vehicle, [IsActive] = @IsActive, [VehicleMakeCode] = @VehicleMakeCode, [OwnerAccount] = @OwnerAccount, [VehicleAccount] = @VehicleAccount, [Limit] = @Limit, [Tanker] = @Tanker, [OwnerType] = @OwnerType, [RegistrationDate] = @RegistrationDate, [RegistrationBy] = @RegistrationBy, [VehicleTypeCode] = @VehicleTypeCode, [VehicleCategoryCode] = @VehicleCategoryCode, [Model] = @Model, [M_Year] = @M_Year, [ChasisNo] = @ChasisNo, [EngineNo] = @EngineNo, [Cylinder] = @Cylinder, [Engine] = @Engine, [Axle] = @Axle, [Tyre] = @Tyre, [DrivingAxle] = @DrivingAxle, [DeadAxle] = @DeadAxle, [FuelTank] = @FuelTank, [FuelTankCapicity] = @FuelTankCapicity, [UserID] = @UserID, [ComputerID] = @ComputerID, [LastEdited] = @LastEdited, [IsDelete] = @IsDelete, [DateIn] = @DateIn, [DateOut] = @DateOut, [IsOut] = @IsOut, [DEPLOYED] = @DEPLOYED, [HP] = @HP, [Truck_Laden_Weight] = @Truck_Laden_Weight, [Truck_UNLaden_Weight] = @Truck_UNLaden_Weight, [TANK_MAKER] = @TANK_MAKER, [TANK_CHESSIS] = @TANK_CHESSIS, [FIFTH_WHEEL] = @FIFTH_WHEEL, [CHAMBER_DIP_1] = @CHAMBER_DIP_1, [CHAMBER_DIP_2] = @CHAMBER_DIP_2, [CHAMBER_DIP_3] = @CHAMBER_DIP_3, [CHAMBER_DIP_4] = @CHAMBER_DIP_4, [VOL_COMPARTMENT_1] = @VOL_COMPARTMENT_1, [VOL_COMPARTMENT_2] = @VOL_COMPARTMENT_2, [VOL_COMPARTMENT_3] = @VOL_COMPARTMENT_3, [VOL_COMPARTMENT_4] = @VOL_COMPARTMENT_4, [TANK_LENGTH] = @TANK_LENGTH, [TANK_WIDTH] = @TANK_WIDTH, [TANK_HEIGHT] = @TANK_HEIGHT, [G_Unladen_Weight] = @G_Unladen_Weight, [G_Empty_Weight] = @G_Empty_Weight, [G_Cargo_Weight] = @G_Cargo_Weight, [TRAILOR_ABS] = @TRAILOR_ABS, [MANUFECTURING_DATE] = @MANUFECTURING_DATE, [PPES] = @PPES, [SPILL_KIT] = @SPILL_KIT, [FIRST_AID_KIT] = @FIRST_AID_KIT, [SAFETY_CONES] = @SAFETY_CONES, [TRACKER_COMPANY] = @TRACKER_COMPANY, [TRACKER_EXPIRE] = @TRACKER_EXPIRE, [TRACKER_ID] = @TRACKER_ID, [TRACKER_PASSWORD] = @TRACKER_PASSWORD, [Description] = @Description WHERE [VehicleCode] = @VehicleCode">
                        <DeleteParameters>
                            <asp:Parameter Name="VehicleCode" Type="String"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="VehicleCode" Type="String"></asp:Parameter>
                            <asp:Parameter Name="OwnerName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Vehicle" Type="String"></asp:Parameter>
                            <asp:Parameter Name="IsActive" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="VehicleMakeCode" Type="String"></asp:Parameter>
                            <asp:Parameter Name="OwnerAccount" Type="String"></asp:Parameter>
                            <asp:Parameter Name="VehicleAccount" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Limit" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Tanker" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="OwnerType" Type="String"></asp:Parameter>
                            <asp:Parameter Name="RegistrationDate" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="RegistrationBy" Type="String"></asp:Parameter>
                            <asp:Parameter Name="VehicleTypeCode" Type="String"></asp:Parameter>
                            <asp:Parameter Name="VehicleCategoryCode" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Model" Type="String"></asp:Parameter>
                            <asp:Parameter Name="M_Year" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ChasisNo" Type="String"></asp:Parameter>
                            <asp:Parameter Name="EngineNo" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Cylinder" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Engine" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Axle" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Tyre" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="DrivingAxle" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="DeadAxle" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="FuelTank" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="FuelTankCapicity" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="UserID" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ComputerID" Type="String"></asp:Parameter>
                            <asp:Parameter Name="LastEdited" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="IsDelete" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="DateIn" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="DateOut" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="IsOut" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="DEPLOYED" Type="String"></asp:Parameter>
                            <asp:Parameter Name="HP" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Truck_Laden_Weight" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Truck_UNLaden_Weight" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="TANK_MAKER" Type="String"></asp:Parameter>
                            <asp:Parameter Name="TANK_CHESSIS" Type="String"></asp:Parameter>
                            <asp:Parameter Name="FIFTH_WHEEL" Type="String"></asp:Parameter>
                            <asp:Parameter Name="CHAMBER_DIP_1" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="CHAMBER_DIP_2" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="CHAMBER_DIP_3" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="CHAMBER_DIP_4" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="VOL_COMPARTMENT_1" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="VOL_COMPARTMENT_2" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="VOL_COMPARTMENT_3" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="VOL_COMPARTMENT_4" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="TANK_LENGTH" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="TANK_WIDTH" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="TANK_HEIGHT" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="G_Unladen_Weight" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="G_Empty_Weight" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="G_Cargo_Weight" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="TRAILOR_ABS" Type="Boolean"></asp:Parameter>
                            <asp:Parameter DbType="Date" Name="MANUFECTURING_DATE"></asp:Parameter>
                            <asp:Parameter Name="PPES" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="SPILL_KIT" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="FIRST_AID_KIT" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="SAFETY_CONES" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="TRACKER_COMPANY" Type="String"></asp:Parameter>
                            <asp:Parameter DbType="Date" Name="TRACKER_EXPIRE"></asp:Parameter>
                            <asp:Parameter Name="TRACKER_ID" Type="String"></asp:Parameter>
                            <asp:Parameter Name="TRACKER_PASSWORD" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Description" Type="String"></asp:Parameter>
                        </InsertParameters>
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="key" Name="VehicleCode" Type="String"></asp:QueryStringParameter>
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="OwnerName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Vehicle" Type="String"></asp:Parameter>
                            <asp:Parameter Name="IsActive" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="VehicleMakeCode" Type="String"></asp:Parameter>
                            <asp:Parameter Name="OwnerAccount" Type="String"></asp:Parameter>
                            <asp:Parameter Name="VehicleAccount" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Limit" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Tanker" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="OwnerType" Type="String"></asp:Parameter>
                            <asp:Parameter Name="RegistrationDate" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="RegistrationBy" Type="String"></asp:Parameter>
                            <asp:Parameter Name="VehicleTypeCode" Type="String"></asp:Parameter>
                            <asp:Parameter Name="VehicleCategoryCode" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Model" Type="String"></asp:Parameter>
                            <asp:Parameter Name="M_Year" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ChasisNo" Type="String"></asp:Parameter>
                            <asp:Parameter Name="EngineNo" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Cylinder" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Engine" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Axle" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Tyre" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="DrivingAxle" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="DeadAxle" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="FuelTank" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="FuelTankCapicity" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="UserID" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ComputerID" Type="String"></asp:Parameter>
                            <asp:Parameter Name="LastEdited" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="IsDelete" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="DateIn" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="DateOut" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="IsOut" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="DEPLOYED" Type="String"></asp:Parameter>
                            <asp:Parameter Name="HP" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Truck_Laden_Weight" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Truck_UNLaden_Weight" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="TANK_MAKER" Type="String"></asp:Parameter>
                            <asp:Parameter Name="TANK_CHESSIS" Type="String"></asp:Parameter>
                            <asp:Parameter Name="FIFTH_WHEEL" Type="String"></asp:Parameter>
                            <asp:Parameter Name="CHAMBER_DIP_1" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="CHAMBER_DIP_2" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="CHAMBER_DIP_3" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="CHAMBER_DIP_4" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="VOL_COMPARTMENT_1" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="VOL_COMPARTMENT_2" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="VOL_COMPARTMENT_3" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="VOL_COMPARTMENT_4" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="TANK_LENGTH" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="TANK_WIDTH" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="TANK_HEIGHT" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="G_Unladen_Weight" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="G_Empty_Weight" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="G_Cargo_Weight" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="TRAILOR_ABS" Type="Boolean"></asp:Parameter>
                            <asp:Parameter DbType="Date" Name="MANUFECTURING_DATE"></asp:Parameter>
                            <asp:Parameter Name="PPES" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="SPILL_KIT" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="FIRST_AID_KIT" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="SAFETY_CONES" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="TRACKER_COMPANY" Type="String"></asp:Parameter>
                            <asp:Parameter DbType="Date" Name="TRACKER_EXPIRE"></asp:Parameter>
                            <asp:Parameter Name="TRACKER_ID" Type="String"></asp:Parameter>
                            <asp:Parameter Name="TRACKER_PASSWORD" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Description" Type="String"></asp:Parameter>
                            <asp:Parameter Name="VehicleCode" Type="String"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>


                    <asp:SqlDataSource runat="server" ID="sds_RTS_KPI" ConnectionString='<%$ ConnectionStrings:MyPNC %>' SelectCommand="sp_RTS_VehicleDoc" SelectCommandType="StoredProcedure" InsertCommand="sp_RTS_VehicleDoc" InsertCommandType="StoredProcedure" UpdateCommand="sp_RTS_VehicleDoc" UpdateCommandType="StoredProcedure">
                        <InsertParameters>
                            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="VehicleCode" Type="String"></asp:Parameter>
                            <asp:Parameter Name="iDocID" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="Op" Type="Int32"></asp:Parameter>
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter SessionField="LoginName" DefaultValue="Admin" Name="UserName" Type="String"></asp:SessionParameter>
                            <asp:QueryStringParameter QueryStringField="key" Name="VehicleCode" DefaultValue="0006" Type="String"></asp:QueryStringParameter>
                            <asp:Parameter DefaultValue="0" Name="iDocID" Type="Int32"></asp:Parameter>
                            <asp:Parameter DefaultValue="1" Name="Op" Type="Int32"></asp:Parameter>
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="VehicleCode" Type="String"></asp:Parameter>
                            <asp:Parameter Name="iDocID" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="Op" Type="Int32"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="col-sm-9 col-md-3" style="background-color: pink;">
                </div>
            </div>

        </form>
    </div>
</body>
</html>
