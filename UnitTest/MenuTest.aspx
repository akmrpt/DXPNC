<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuTest.aspx.cs" Inherits="DXWebApplication1.UnitTest.MenuTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <dx:ASPxMenu ID="ASPxMenu1"  runat="server"></dx:ASPxMenu>

           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:MyPNC %>' 
               SelectCommand="SELECT * FROM [WebMenu] WHERE ([IsActive] = @IsActive)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="IsActive" Type="Int32"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
