using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Pages_Login : System.Web.UI.Page
{
    UserService userService = new UserService() { };
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void BtnIngresar_Click(object sender, EventArgs e)
    {
       var user= userService.LoginUser(tbUsuario.Text,tbPassword.Text.Trim());

        if(user.Email.Length>0 && user.Id.ToString().Length >0)
        {
            Response.Redirect("/Pages/Home");
        }
    }
}