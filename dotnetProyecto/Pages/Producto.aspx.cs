using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Producto : System.Web.UI.Page
{
    private ProductosServicio productosServicio = new ProductosServicio();

    protected void Page_Load(object sender, EventArgs e)
    {
        RepeaterPersona.DataSource = productosServicio.GetAllProducts();
        RepeaterPersona.DataBind();
    }
    public void btnEditProducto(object sender, CommandEventArgs e)
    {
        //Response.Redirect("/Pages/ProductoEdit?id=" + e.CommandName);
    }
    public void btnDeleteProducto(object sender, CommandEventArgs e)
    {
        productosServicio.DeleteProductFromDB(int.Parse(e.CommandName));
        this.Page_Load(sender, e);
    }
    public void onBtnAddProducto(object sender, CommandEventArgs e)
    {
        Response.Redirect("/Pages/NuevoProducto");

    }
}