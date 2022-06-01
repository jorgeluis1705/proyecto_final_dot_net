using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Shop : System.Web.UI.Page
{
    private ProductosServicio productosServicio = new ProductosServicio();
    protected void Page_Load(object sender, EventArgs e)
    {
            RepeaterShop.DataSource = productosServicio.GetAllProducts();
            RepeaterShop.DataBind();
    }
}