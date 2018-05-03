<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Fnatic_Gear.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div id="container">
        <h1>Log in</h1>
        <p>Username&nbsp;
            <asp:TextBox ID="TxtUserLog" runat="server" Width="168px"></asp:TextBox>
        </p>
        <p>Password&nbsp;
            <asp:TextBox ID="TxtPassLog" runat="server" Width="168px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="BtnLogin" runat="server" Height="33px" OnClick="BtnLogin_Click" Text="Log - In" Width="159px" />
        </p>
        <p>
            <asp:Literal ID="LitErrorMsg" runat="server"></asp:Literal>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <h1>Account Registration</h1>
        <p>Username&nbsp;
            <asp:TextBox ID="TxtRegUser" runat="server" Width="155px"></asp:TextBox>
        </p>
        <p>Password&nbsp;
            <asp:TextBox ID="TxtRegPass" runat="server" Width="166px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="BtnReg" runat="server" Height="35px" OnClick="BtnReg_Click" Text="Register" Width="153px" />
        </p>
        <p>
            <asp:Literal ID="LitErrorReg" runat="server"></asp:Literal>
        </p>
    </div>
    </form>
</asp:Content>
