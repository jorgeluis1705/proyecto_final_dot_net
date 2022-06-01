using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Producto
/// </summary>
public class Producto
{
    int id,cantidad, precio;
    string nombre, imagen;
    public Producto()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    
    public int Id
    {
        get { return id; }   // get method
        set { id = value; }  // set method
    }
    public int Cantidad
    {
        get { return cantidad; }   // get method
        set { cantidad = value; }  // set method
    }
    public int Precio
    {
        get { return precio; }   // get method
        set { precio = value; }  // set method
    }
    public string Nombre
    {
        get { return nombre; }   // get method
        set { nombre = value; }  // set method
    }
    public string Imagen
    {
        get { return imagen; }   // get method
        set { imagen = value; }  // set method
    }
}