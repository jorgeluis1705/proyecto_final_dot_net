using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Taller
/// </summary>
public class Taller
{
    public Taller()
    {
        
    }
    public int id_taller { get; set; }
    public string nom_taller{ get; set; }
    public DateTime hora_taller { get; set; }
    public int id_tallerista { get; set; }
}