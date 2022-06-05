using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for UserService
/// </summary>
public class UserService: Coneccion
{
    public UserService()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public List<User> GetAllPersonas()
    {
        List<User> personas = new List<User>();
        Connectar();
        try
        {
            MySqlCommand comando = new MySqlCommand("listarUsers", cnn);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            MySqlDataReader reader = comando.ExecuteReader();
            while (reader.Read())
            {
                User persona = new User()
                {
                    Name = reader["name"]+" ",
                    Password = reader["password"] + " ",
                    Email = reader["email"] + " ",
                    Id = int.Parse(reader["id"] + " "),
                };
                personas.Add(persona);
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
        return personas;
    }
}