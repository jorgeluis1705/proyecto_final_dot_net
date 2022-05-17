using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UserService userService = new UserService();

        GridView1.DataSource = userService.GetAllPersonas();
        GridView1.DataBind();

        Response.Write(userService.GetAllPersonas().Count);
    }

}