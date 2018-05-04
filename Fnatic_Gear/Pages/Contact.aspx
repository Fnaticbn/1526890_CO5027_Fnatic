<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Fnatic_Gear.Pages.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Style.css" rel="stylesheet" type="text/css" runat="server"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div id="container">
        <h1>Contact Us</h1>
            Name&nbsp;
            <asp:TextBox ID="TxtName" runat="server" Width="179px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Name Required" ControlToValidate="TxtName"></asp:RequiredFieldValidator>
            <br />
            <br />
            Email&nbsp;
            <asp:TextBox ID="TxtEmail" runat="server" Width="180px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="23px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Email Required" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Invalid Email Format" ControlToValidate="TxtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            Subject&nbsp;
            <asp:TextBox ID="TxtSubject" runat="server" Width="180px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="21px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Subject Required" ControlToValidate="TxtSubject"></asp:RequiredFieldValidator>
            <br />
            <br />
            Message<br />
            <br />
            <asp:TextBox ID="TxtMsg" runat="server" Height="123px" Width="304px" TextMode="MultiLine" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Message Required" ControlToValidate="TxtMsg"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="BtnSubmit" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="23px" OnClick="BtnSubmit_Click" Text="Send" Width="115px" />
            <br />
            <br />
            <asp:Literal ID="LitErrorMsg" runat="server"></asp:Literal>
            <br />
     <h1 class="auto-style4">Where Are We?</h1>
        <p><b>FNATIC GEAR BN</b><br />+673 23226788<br />Plaza Abdul Razak<br />Jalan Laksamana Abdul Razak<br />Bandar Seri Begawan BA 1712<br />Email: 
Fnaticbn@gmail.com@gmail.com</p><br />
        <div id="map">
            <script src="../JS/map.js"></script>
            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMbQSF0HDT8zXAPbwS06xjp3Pwf4WRbj0&callback=initMap">
            </script>
        </div>
            <h1>Static Map</h1>
            <div id="Staticmap">
                <img src="../Images/staticmap.PNG" alt="Static Map of Company" />
            </div>
        </div>
        </form>
</asp:Content>
