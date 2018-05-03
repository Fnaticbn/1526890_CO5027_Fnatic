<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Fnatic_Gear.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Style.css" rel="stylesheet" type="text/css" runat="server"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form1" runat="server">
        <!--Main Slider-->
                <img src="~/Images/Slider.jpg" class="Main-Picture" runat="server"/>
            <!--Section--> 
    <div id="container">
        <h1>Products</h1>
        <p>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div id="Repeater">
                                <ul>
                                    <li>
                                        <a href="<%#Eval("ProductId", "Pages/Product.aspx?id={0}") %>"><asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/ProductImages/" + Eval("ProductId") + ".jpg" %>' /></a>
                                        <h3><a href="<%#Eval("ProductId", "Pages/Product.aspx?id={0}") %>"><%#Eval("ProductName")%></a></h3>
                                        <p><b>Product Description</b></p>
                                        <%#Eval("ProductDesc") %>
                                        <p><b>Price</b></p>
                                        <p>BND <%#Eval("Price") %></p>
                                    </li>
                                </ul>
                            </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" ProviderName="<%$ ConnectionStrings:IdentityConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
        </p>
    </div>
        </form>
</asp:Content>
