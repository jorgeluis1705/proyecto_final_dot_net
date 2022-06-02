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
            MySqlCommand comando = new MySqlCommand("getAllProducts", cnn);
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

    public int DeleteProductFromDB(int id)
    {
        Connectar();
        try
        {
            MySqlCommand comando = new MySqlCommand("deleteProduct", cnn);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add(new MySqlParameter("@IdDelete", id));
            comando.ExecuteNonQuery();
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
        return id;
    }
    public Producto createProductToDb(Producto producto)
    {
        Connectar();
        try
        {
            MySqlCommand comando = new MySqlCommand("insertProduct", cnn);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add(new MySqlParameter("@Nombre", producto.Nombre));
            comando.Parameters.Add(new MySqlParameter("@Cantidad", (producto.Cantidad)));
            comando.Parameters.Add(new MySqlParameter("@Precio", producto.Precio));
            comando.Parameters.Add(new MySqlParameter("@Imagen", producto.Imagen));
            comando.ExecuteNonQuery();
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
        return producto;
    }
}