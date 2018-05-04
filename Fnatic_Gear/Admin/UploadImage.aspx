<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="Fnatic_Gear.Admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Style.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <h1>Upload Product Image</h1>
        <p>
            <asp:FileUpload ID="FileUploadControl" runat="server" Height="34px" Width="356px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        &nbsp;&nbsp;
            <asp:Button ID="BtnImgUpload" runat="server" Height="36px" OnClick="BtnImgUpload_Click" Text="Upload" Width="148px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        </p>
        <p>
            &nbsp;</p>
        <p>&nbsp;</p>
        <p>
            <asp:Image ID="CurrentImage" runat="server" />
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="BtnBack" runat="server" Height="24px" OnClick="BtnBack_Click" Text="Back" Width="168px" BackColor="#333333" ForeColor="White" />
        </p>

    </div>
    <br />
</asp:Content>
