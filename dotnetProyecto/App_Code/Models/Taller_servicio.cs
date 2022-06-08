using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

/// <summary>
/// Descripción breve de Taller_servicio
/// </summary>
public class Taller_servicio:Coneccion
{
    public Taller_servicio()
    {
        
    }
    public List<Taller> Todos_talleres()
    {
        List<Taller> tallers = new List<Taller>();
        try
        {
            Connectar();

            MySqlCommand comando = new MySqlCommand("getAllTaller", cnn);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            MySqlDataReader reader = comando.ExecuteReader();
            while (reader.Read())
            {
                Taller taller = new Taller()
                {
                    id_taller = int.Parse((reader[0] + "").ToString()),
                    nom_taller = reader["nom_taller"].ToString(),
                    hora_taller = DateTime.Parse(reader["hora_taller"] + ""),
                    id_tallerista = int.Parse(reader["id_tallerista"] + "")
                };
                tallers.Add(taller);
            }
            reader.Close();
            comando.Dispose();
        }
        catch(Exception e)
        {
            Console.WriteLine(e.Message);
        }
        finally
        {
            Desconectar();
        }
        return tallers;
    }
}