using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductosServicio
/// </summary>
public class ProductosServicio : Coneccion
{
    List<Producto> productosCart = new List<Producto>();
    public ProductosServicio()
    {

        //
        // TODO: Add constructor logic here
        //
    }
    public void AddProductCar(Producto producto)
    {
        this.productosCart.Add(producto);
    }
    public void DeleteProductCart(Producto producto)
    {
        this.productosCart.Remove(producto);
    }

    public List<Producto> GetAllProducts()
    {
        List<Producto> productos = new List<Producto>();
        Connectar();
        try
        {
            MySqlCommand comando = new MySqlCommand("Listar", cnn);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            MySqlDataReader reader = comando.ExecuteReader();
            while (reader.Read())
            {
                Producto producto = new Producto()
                {
                    Id = int.Parse((reader[0] + "").ToString()),
                    Nombre = reader["nombre"].ToString(),
                    Precio = int.Parse(reader["precio"] + ""),
                    Cantidad = int.Parse(reader["cantidad"] + ""),
                    Imagen = (reader["imagen"] + ""),
                };
                productos.Add(producto);
            }
            reader.Close();
            comando.Dispose();
        }
        catch (Exception e)
        {
            Console.WriteLine(e.Message);
        }
        finally
        {
            Desconectar();
        }
        return productos;
    }
}