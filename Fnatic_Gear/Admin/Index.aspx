<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Fnatic_Gear.Admin.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <h1>Administrator Account</h1>
        <p>Welcome to the Administrator Account !</p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="BtnAdd" runat="server" BackColor="#333333" ForeColor="#FFFFCC" Height="29px" OnClick="BtnAdd_Click" Text="Add Products" Width="167px" />
&nbsp;<asp:Button ID="BtnList" runat="server" BackColor="#333333" ForeColor="White" Height="30px" OnClick="BtnList_Click" Text="List Products" Width="166px" />
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="BtnLogOut" runat="server" Height="30px" OnClick="BtnLogOut_Click" Text="Log Out" Width="170px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        </p>
        <p>
            &nbsp;</p>
    </div>
</asp:Content>
