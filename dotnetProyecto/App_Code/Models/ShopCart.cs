using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ShopCart
/// </summary>
public static class ShopCart
{
    public static ProductosServicio productosServicio = new ProductosServicio();
    public static List<CartItem> cartItems = new List<CartItem>()

    {
    };
    public static void AddProductToCartShop(int ProductId, Producto producto)
    {
        CartItem newItem = new CartItem()
        {
            ProductId = ProductId,
            Product = producto
        };

        // If this item already exists in our list of items, increase the quantity
        // Otherwise, add the new item to the list
        if (cartItems.Contains(newItem))
        {
            foreach (CartItem item in cartItems)
            {
                if (item.Equals(newItem))
                {
                    item.Quantity++;
                    return;
                }
            }
        }
        else
        {
            newItem.Quantity = 1;
            cartItems.Add(newItem);
        }

    }

        public static double getTotalPriceFromCart()
    {
        var total = 0.00;

        cartItems.ForEach((element) =>
        {
            total += element.Product.Precio * element.Quantity;
        });

        if(total < 0)
        {
            total = 0;
        }
        return total;
    }



}