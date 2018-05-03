<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Fnatic_Gear.Admin.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <h1>Administrator Account</h1>
        <p>Welcome to the Administrator Account !</p>
        <p>
            <asp:Button ID="BtnLogOut" runat="server" Height="30px" OnClick="BtnLogOut_Click" Text="Log Out" Width="170px" />
        </p>
    </div>
</asp:Content>
