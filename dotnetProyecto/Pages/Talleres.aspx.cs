using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Pages_Default : System.Web.UI.Page
{
    Taller_servicio ts= new Taller_servicio();
    List<Taller> Items= new List<Taller>();
    public object Keys { get; private set; }

    protected void Page_Init(object sender, EventArgs e)
    {
        Items = ts.Todos_talleres();
        gvTalleres.DataSource = Items;
        gvTalleres.DataBind();
        Response.Write(ts.Todos_talleres().Count);

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Pages/Home.aspx");
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    DateTime hoy = DateTime.Now;
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
       
    }

}