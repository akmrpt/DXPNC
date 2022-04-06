<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="List_ACL.aspx.cs" Inherits="DXWebApplication1.List_ACL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="width:100%">

<div>

 

</div>

<div style="width:95%;float:left;">

 
     <h2>Black Listed Drivers</h2>

                    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Export" OnClick="ASPxButton1_Click"></dx:ASPxButton>  

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" Border-BorderStyle="None" Theme="BlackGlass" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="RecID">
        <SettingsPager PageSize="100"></SettingsPager>

        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <Settings ShowFooter="True" ></Settings>
        
        <SettingsPopup>
            <EditForm Modal="True" HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter"></EditForm>
        </SettingsPopup>
        
        <SettingsSearchPanel Visible="True" ShowClearButton="True"></SettingsSearchPanel>
        
        <Columns>
            <dx:GridViewCommandColumn ShowNewButtonInHeader="True" VisibleIndex="0" ShowEditButton="True" ShowDeleteButton="true" ButtonRenderMode="Button" ButtonType="Button"></dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="RecID" ReadOnly="True" Visible="false" VisibleIndex="1">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="DriverName" VisibleIndex="2"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="FatherName" VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CNIC" VisibleIndex="4"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LicenseNo" VisibleIndex="5"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TL_Number" VisibleIndex="6"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BlackListedBy" VisibleIndex="7"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="BlackListOn" VisibleIndex="8"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Remarks" VisibleIndex="9"></dx:GridViewDataTextColumn>

        </Columns>
        <TotalSummary>
            <dx:ASPxSummaryItem SummaryType="Count" FieldName="DriverName"></dx:ASPxSummaryItem>
        </TotalSummary>
        <FormatConditions>
            <dx:GridViewFormatConditionHighlight ShowInColumn="Black Listed By" Expression="[BlackListedBy] = &#39;PNC&#39;" Format="GreenFillWithDarkGreenText" ApplyToRow="True" FieldName="BlackListedBy"></dx:GridViewFormatConditionHighlight>
        </FormatConditions>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:MyPNC %>'
        DeleteCommand="DELETE FROM [tblDriverBlackListed] WHERE [RecID] = @RecID"
        InsertCommand="INSERT INTO [tblDriverBlackListed] ([DriverName], [FatherName], [CNIC], [LicenseNo], [TL_Number], [BlackListedBy], [BlackListOn], [Remarks]) VALUES (@DriverName, @FatherName, @CNIC, @LicenseNo, @TL_Number, @BlackListedBy, @BlackListOn, @Remarks)"
        SelectCommand="SELECT
                        RecID,
                        DriverName,
                        FatherName,
                        CNIC,
                        LicenseNo,
                        TL_Number,
                        BlackListedBy,
                        FORMAT (BlackListOn, 'dd/MM/yyyy ') AS BlackListOn,
                        Remarks
                        FROM
                        tblDriverBlackListed Order by DriverName"
        UpdateCommand="UPDATE [tblDriverBlackListed] SET [DriverName] = @DriverName, [FatherName] = @FatherName, [CNIC] = @CNIC, [LicenseNo] = @LicenseNo, [TL_Number] = @TL_Number, [BlackListedBy] = @BlackListedBy, [BlackListOn] = @BlackListOn, [Remarks] = @Remarks WHERE [RecID] = @RecID">
        <DeleteParameters>
            <asp:Parameter Name="RecID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DriverName" Type="String"></asp:Parameter>
            <asp:Parameter Name="FatherName" Type="String"></asp:Parameter>
            <asp:Parameter Name="CNIC" Type="String"></asp:Parameter>
            <asp:Parameter Name="LicenseNo" Type="String"></asp:Parameter>
            <asp:Parameter Name="TL_Number" Type="String"></asp:Parameter>
            <asp:Parameter Name="BlackListedBy" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="BlackListOn"></asp:Parameter>
            <asp:Parameter Name="Remarks" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DriverName" Type="String"></asp:Parameter>
            <asp:Parameter Name="FatherName" Type="String"></asp:Parameter>
            <asp:Parameter Name="CNIC" Type="String"></asp:Parameter>
            <asp:Parameter Name="LicenseNo" Type="String"></asp:Parameter>
            <asp:Parameter Name="TL_Number" Type="String"></asp:Parameter>
            <asp:Parameter Name="BlackListedBy" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="BlackListOn"></asp:Parameter>
            <asp:Parameter Name="Remarks" Type="String"></asp:Parameter>
            <asp:Parameter Name="RecID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" GridViewID="ASPxGridView1" runat="server"></dx:ASPxGridViewExporter>  

    </div>

</div>
</asp:Content>
