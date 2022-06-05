<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master"
AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Pages_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  Runat="Server"
>
  <style>
    .card:hover {
      cursor: pointer;
      box-shadow: 0 0 11px rgba(33, 33, 33, 0.2);
    }
  </style>

  <div
    class="d-flex flex-row justify-content-center align-content-between"
    style="gap: 2rem"
  >
    <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
        <div class="card" style="width: 18rem">
          <img class="card-img-top mask rgba-red-strong" src="<%#
          Eval("Product.Imagen") %>" alt="Card image cap">
          <div class="card-body">
            <h5 class="card-title"><%# Eval("Product.Nombre") %></h5>
            <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> -->
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">$<%# Eval("Product.Precio") %></li>
            <li class="list-group-item">
              Cantidad
              <asp:TextBox
                disabled
                type="number"
                ID="inputShopCartQuantity"
                runat="server"
                Text=' <%# Eval("Quantity") %>'
              ></asp:TextBox>
            </li>
          </ul>
          <div
            class="card-body d-flex flex-row justify-content-center"
            style="max-height: 4rem"
          >
            <asp:Button
              CommandName='<%# Eval("Product.Id") %>'
              onCommand="onBtnDeleteProductFromCart"
              CommandArgument='<%# Eval("Product.Id") %>'
              ID="btnShopCartDelete"
              runat="server"
              Text="Eliminar"
              CssClass="btn btn-danger btn-sm"
            />
          </div>
        </div>
      </ItemTemplate>
    </asp:Repeater>
  </div>
  <div class="d-flex flex-column justify-content-center align-content-center">
    <asp:Label
      ID="lblTotal"
      runat="server"
      Text="Label"
      CssClass="h2"
    ></asp:Label>
    <asp:Button
      ID="btnPayShop"
      runat="server"
      Text="Pagar"
      CssClass="btn btn-danger btn-sm"
    />
  </div>
</asp:Content>
