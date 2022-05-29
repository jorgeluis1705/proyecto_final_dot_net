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
            MySqlCommand comando = new MySqlCommand("Listar", cnn);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            MySqlDataReader reader = comando.ExecuteReader();
            while (reader.Read())
            {
                User persona = new User()
                {
                    Id =(reader[0] + "").ToString(),
                    Name = reader["name"].ToString(),
                    age = int.Parse(reader["age"] +""),
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