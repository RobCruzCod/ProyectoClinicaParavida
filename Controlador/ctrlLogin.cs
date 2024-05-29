using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoClinicaParavida.Models;

namespace ProyectoClinicaParavida.Controlador
{
    public class ctrlLogin
    {
        public bool ingresar(string usuario, string clave)
        {
            mtoUsuario modelo = new mtoUsuario();
            return modelo.ConsultarUsuario(usuario, clave);
        }
    }
}