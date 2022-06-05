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

    public User LoginUser(string email,string password)
    {
        User userLogged = new User();
        Connectar();
        try
        {
            MySqlCommand comando = new MySqlCommand("loginUser", cnn);
            comando.CommandType = System.Data.CommandType.StoredProcedure;

            comando.Parameters.Add(new MySqlParameter("@Email", email));
            comando.Parameters.Add(new MySqlParameter("@Psw", password));
            comando.ExecuteNonQuery();
            MySqlDataReader reader = comando.ExecuteReader();
            while (reader.Read())
            {

                userLogged.Name = reader["name"] + " ";
                    userLogged.Password = reader["password"] + " ";
                userLogged.Email = reader["email"] + " ";
                userLogged.Id = int.Parse(reader["id"] + " ");
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
        return userLogged;
    }
}