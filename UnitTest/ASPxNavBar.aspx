<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASPxNavBar.aspx.cs" Inherits="DXWebApplication1.UnitTest.ASPxNavBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <dx:ASPxNavBar ID="ASPxNavBar1" runat="server">
           <Groups>
                <dx:NavBarGroup>
                    <Items>
                        <dx:NavBarItem Enabled="False"></dx:NavBarItem>
                    </Items>
                </dx:NavBarGroup>
                <dx:NavBarGroup Name="Group 1" HeaderImage-IconID="navigation_home_16x16">
                    <Items>
                        <dx:NavBarItem></dx:NavBarItem>
                    </Items>
                </dx:NavBarGroup>
            </Groups>
        </dx:ASPxNavBar>

    </div>
    </form>
</body>
</html>
