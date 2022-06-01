<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master"
AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Pages_Shop" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  Runat="Server"
  class="container"
  style="display: flex"
>
    <style>
    .card:hover{
        cursor: pointer;
          box-shadow: 0 0 11px rgba(33,33,33,.2); 
    }
</style>
  <div
    class="d-flex flex-row justify-content-center align-content-between"
    style="gap: 2rem"
  >
    <asp:Repeater ID="RepeaterShop" runat="server">
      <ItemTemplate>
        <div class="card " style="width: 18rem" >
          <img class="card-img-top mask rgba-red-strong" src="<%# Eval("Imagen")
          %>" alt="Card image cap">
          <div class="card-body">
            <h5 class="card-title"><%# Eval("Nombre") %></h5>
            <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> -->
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">$<%# Eval("Precio") %></li>
            <li class="list-group-item">Disponibles <%# Eval("Cantidad") %></li>
          </ul>
          <div class="card-body d-flex  flex-row justify-content-center" style="max-height:4rem">
            <button
              type="button"
              class="btn btn-outline-secondary waves-effect px-3"
            >
              <i class="fas fa-cart-arrow-down"></i>
            </button>
            <button
              type="button"
              class="btn btn-outline-info waves-effect px-3"
            >
              <i class="fas fa-thumbtack" aria-hidden="true"></i>
            </button>
          </div>
        </div>
      </ItemTemplate>
    </asp:Repeater>
  </div>
</asp:Content>
