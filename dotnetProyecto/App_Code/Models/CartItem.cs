using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartItem
/// </summary>
public class CartItem
{
    public CartItem()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public int Quantity { get; set; }
    public int ProductId { get; set; }
    public virtual Producto Product { get; set; }

}