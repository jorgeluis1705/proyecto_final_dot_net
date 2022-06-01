<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="NuevoProducto.aspx.cs" Inherits="Pages_NuevoProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="row container">
    <div class="col-6">
        <asp:TextBox  type="text" class="form-control" placeholder="Nombre del producto" ID="inputNameProductNew" runat="server"></asp:TextBox>
    </div>
    <div class="col-6">
        <asp:TextBox  type="text" class="form-control" placeholder="Nombre del producto" ID="inputImageProductNew" runat="server"></asp:TextBox>
    </div>
      </div>
    <div class="row container" style="margin-top: 2rem;">
    <div class="col-4">
      <input type="text" class="form-control" placeholder="Last name">
    </div>
    <div class="col-4">
      <input type="text" class="form-control" placeholder="Last name">
    </div>

  </div>

</asp:Content>