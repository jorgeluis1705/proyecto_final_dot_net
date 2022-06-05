using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Shop : System.Web.UI.Page
{
    private ProductosServicio productosServicio = new ProductosServicio();
    List<Producto> productos = new List<Producto>();
    protected void Page_Init(object sender, EventArgs e)
    {
        this.productos = productosServicio.GetAllProducts();
        RepeaterShop.DataSource = productos;
        RepeaterShop.DataBind();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
  
    }
    public void onBtnAddProductToCart(object sender, CommandEventArgs e)
    {
        var prod = new Producto();        

        foreach(var p in productos)
        {
            if(p.Id == int.Parse(e.CommandName))
            {
                prod = p;
            }
        }
        var cartItem = new CartItem()
        {
            Quantity = 1,
            ProductId = int.Parse(e.CommandName),
            Product = prod
        };
        ShopCart.AddProductToCartShop(int.Parse(e.CommandName), prod);

        Response.Write(ShopCart.cartItems.Count);
        Response.Write(" ");


    }
}