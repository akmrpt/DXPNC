<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DXWebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <link href="Content/Login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" class="frmalg">

       <h4 >DXApp </h4>
        <asp:Login ID="Login1" CssClass="container" runat="server" OnAuthenticate="ValidateUser" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Width="100%">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black"></InstructionTextStyle>


            <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" CssClass="lgnbtn" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98"></LoginButtonStyle>

            <TextBoxStyle Font-Size="0.8em"></TextBoxStyle>

            <TitleTextStyle Font-Bold="True" Font-Size="0.9em" ForeColor="White" BackColor="#507CD1"></TitleTextStyle>
                                        <LoginButtonStyle CssClass="lgnbtn" />
               
                 
                                    </asp:Login>

    
       <%--  <div class="container">
            
                
            
            <label for="uname"><b>Username</b></label>
            <asp:TextBox runat="server" ID="txt_Username" placeholder="Enter Username"></asp:TextBox>
            <label for="psw"><b>Password</b></label>
            <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" OnClick="ValidateUser"  />
            <asp:Button runat="server" ID="btn_cancel" Text="Cancel" class="cnbtn"  />
        </div>--%>


         

 

    


    
    </form>
</body>
</html>
