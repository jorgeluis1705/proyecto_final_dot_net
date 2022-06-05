<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master"
AutoEventWireup="true" CodeFile="NuevoProducto.aspx.cs"
Inherits="Pages_NuevoProducto" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  Runat="Server"
>
  <div class="row container">
    <div class="col-6">
      <asp:TextBox
        required="true"
        type="text"
        class="form-control"
        placeholder="Nombre del producto"
        ID="inputNameProductNew"
        runat="server"
      ></asp:TextBox>
    </div>
    <div class="col-6">
      <asp:TextBox
        required="true"
        type="text"
        class="form-control"
        placeholder="Imagen del producto"
        ID="inputImageProductNew"
        runat="server"
      ></asp:TextBox>
    </div>
    <div
      class="row container d-flex justify-content-center"
      style="margin-top: 2rem"
    >
      <div class="col-4">
        <asp:TextBox
          required="true"
          type="number"
          class="form-control"
          placeholder="Precio del producto"
          ID="inputPrecioProductNew"
          runat="server"
        ></asp:TextBox>
      </div>
      <div class="col-4">
        <asp:TextBox
          required="true"
          type="number"
          class="form-control"
          placeholder="Cantidad del procuto"
          ID="inputCantidadProductNew"
          runat="server"
        ></asp:TextBox>
      </div>
      <div class="d-flex justify-content-center m-15">
        <asp:Button
          ID="BtnAddProducto"
          runat="server"
          Text="Añadir"
          class="btn btn-warning btn-block"
          style="margin-top: 0.5rem"
          onClick="btnClick"
        />
      </div>
    </div>
  </div>
</asp:Content>
