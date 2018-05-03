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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Email Username Required" ControlToValidate="TxtUserLog"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Invalid Email Format" ControlToValidate="TxtUserLog" ValidationExpression="\w+([-+.'']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p>Password&nbsp;
            <asp:TextBox ID="TxtPassLog" runat="server" Width="168px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Password Required" ControlToValidate="TxtPassLog"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="BtnLogin" runat="server" Height="33px" OnClick="BtnLogin_Click" Text="Log - In" Width="159px" />
        </p>
        <p>
            <asp:Literal ID="LitErrorMsg" runat="server"></asp:Literal>
        </p>
       
    </div>
    </form>
</asp:Content>
