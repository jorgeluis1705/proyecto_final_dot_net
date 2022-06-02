using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_NuevoProducto : System.Web.UI.Page
{
    Producto producto;
    ProductosServicio productosServicio = new ProductosServicio();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void btnClick(object sender, EventArgs e)
    {


        producto = new Producto()
        {
            Nombre = inputNameProductNew.Text,
            Imagen = inputImageProductNew.Text,
            Cantidad=0,
            Precio=0,
        };
        productosServicio.createProductToDb(producto);
        Response.Redirect("/Pages/Home");
    }
}