<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DS_Design.aspx.cs" Inherits="DXWebApplication1.DS_Design" %>

<%@ Register Assembly="DevExpress.ExpressApp.Dashboards.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.ExpressApp.Dashboards.Web" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
     <cc1:XafDashboardDesigner ID="XafDashboardDesigner1" runat="server" DashboardStorageFolder="~/App_Data/Dashboards"></cc1:XafDashboardDesigner>


    </div>
    </form>
</body>
</html>
