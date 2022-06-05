<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master"
AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  Runat="Server"
>
  <div class="form-control">
    <div class="row">
      <asp:Label
        class="h2"
        ID="lblBienvenida"
        runat="server"
        Text="Bienvenido/a al Sistema"
      ></asp:Label>
    </div>
    <div>
      <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
      <asp:TextBox
        ID="tbUsuario"
        CssClass="form-control"
        runat="server"
        placeholder="Nombre de Usuario"
      ></asp:TextBox>
    </div>
    <div>
      <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
      <asp:TextBox
        ID="tbPassword"
        CssClass="form-control"
        TextMode="Password"
        runat="server"
        placeholder="Password"
      ></asp:TextBox>
    </div>
    <hr />
    <div class="row">
      <asp:Label
        runat="server"
        CssClass="alert-danger"
        ID="lblError"
      ></asp:Label>
    </div>
    <br />
    <div class="row">
      <asp:Button
        ID="BtnIngresar"
        CssClass="btn btn-primary btn-dark"
        runat="server"
        Text="Ingresar"
        OnClick="BtnIngresar_Click"
      />
    </div>
  </div>
</asp:Content>
