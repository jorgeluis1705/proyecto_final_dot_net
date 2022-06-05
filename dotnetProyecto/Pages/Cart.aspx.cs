using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Cart : System.Web.UI.Page
{
    private List<Producto> productos = new List<Producto>();
    private List<CartItem> results = new List<CartItem>();
    private  ProductosServicio productosServicio = new ProductosServicio();

    protected void Page_Init(object sender, EventArgs e)
    {
        productos = productosServicio.GetAllProducts();
        if (!IsPostBack)
        {
            foreach (var item in ShopCart.cartItems.GroupBy(x => x.Product.Id))
            {
                var element = new CartItem();
                foreach (var i in productos)
                {

                    if (i.Id == item.Key)
                    {
                        element.Product = i;
                        element.Product.Id = i.Id;
                        element.Product.Nombre = i.Nombre;
                        element.Product.Precio = i.Precio;
                    }
                }
                element.Quantity = item.Count();
                element.ProductId = item.Key;
                results.Add(element);

            }
            Repeater1.DataSource = results;
            Repeater1.DataBind();

        }
        lblTotal.Text = ShopCart.cartItems.Count == 0 ? "No hay productos en el carro" : "Total " + ShopCart.getTotalPriceFromCart().ToString();
        btnPayShop.Style.Add("display", ShopCart.cartItems.Count== 0? "none": "block");
    }

    public void onBtnDeleteProductFromCart(object sender, CommandEventArgs e){
        try
        {
            for (var ele = 0; ele < ShopCart.cartItems.Count; ele++ )
            {
                ShopCart.cartItems.Remove(ShopCart.cartItems[ele]);
            }
            this.Page_Init(sender, e);
            Response.Redirect("/Pages/Loading?redirect=" +  "Cart");

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    
        }

    public void onBtnPay(object sender, EventArgs e)
    {
        Response.Redirect("/Pages/Home");
    }
}   