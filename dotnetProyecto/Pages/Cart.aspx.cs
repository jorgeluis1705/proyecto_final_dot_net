﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(ShopCart.cartItems.Count);
        Repeater1.DataSource = ShopCart.cartItems;
        Repeater1.DataBind();
    }
}