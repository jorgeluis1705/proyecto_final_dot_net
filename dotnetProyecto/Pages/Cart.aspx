<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Pages_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <p> <%# Eval("Product.Nombre") %>></p>
            <p> <%# Eval("Quantity") %></p>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

