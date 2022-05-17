using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;


public class Coneccion
{

    protected MySqlConnection cnn;
    protected MySqlCommand cmd;
    protected string connectionCadena = "server = mysql-jorgeluispenareal.alwaysdata.net; database = jorgeluispenareal_prueba; Uid = 254084_root; pwd =gB0az0YYqK7wsSG;";
    /*
     Si necesitan crear un Store procedure o una nueva tabla usen estas credenciales
     server https://phpmyadmin.alwaysdata.com/
     username 254084_team
     password gB0az0YYqK7wsSG
     */
    public Coneccion()
    {
    }
    public void Connectar()
    {
        try
        {
            cnn = new MySqlConnection(connectionCadena);
            cnn.Open();
        }
        catch (Exception e)
        {
            Console.WriteLine(e.StackTrace);
        }
    }

    public void Desconectar()
    {
        try
        {
            cnn.Close();
            cnn.Dispose();
        }
        catch (Exception e)
        {
            Console.WriteLine(e.Message);
        }
    }

}