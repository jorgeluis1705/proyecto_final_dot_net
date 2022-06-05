using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Pages_Loading : System.Web.UI.Page
{
    private string redirectPath = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        redirectPath = Request.QueryString["redirect"] != null ? Request.QueryString["redirect"] : "Home";
    }

    protected override void OnSaveStateComplete(EventArgs e)
    {

        if (!IsPostBack)
        {
            Response.Write("Aqui sale desde 3 s");
            Response.Redirect("/Pages/" + redirectPath);
        }

    }
}