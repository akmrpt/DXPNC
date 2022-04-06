<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Design.aspx.cs" Inherits="DXWebApplication1.Design" %>

<%@ Register Assembly="DevExpress.Dashboard.v16.2.Web, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

 
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" Height="50%" Width="100%" DashboardStorageFolder="~/App_Data/Dashboards" UseDashboardConfigurator="True"></dx:ASPxDashboard>

</asp:Content>

