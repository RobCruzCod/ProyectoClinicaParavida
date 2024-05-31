using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoClinicaParavida.Modelo
{
    public class Cita
    {
        public int ID_Usuario { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public int Edad { get; set; }
        public string Sexo { get; set; }
        public string Correo { get; set; }
        public string Clave { get; set; }
        public int Rol { get; set; }
    }
}