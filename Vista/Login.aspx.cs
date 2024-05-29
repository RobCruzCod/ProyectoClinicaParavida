using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoClinicaParavida.Controlador;

namespace ProyectoClinicaParavida
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ingresar_Click(object sender, EventArgs e)
        {
            string usu = TxtUsuario.Text;
            string clave = TxtContra.Text;

            ctrlLogin ctrl = new ctrlLogin();
            bool r = ctrl.ingresar(usu, clave);

            if (r)
            {
                Response.Write("<script>alert('USUARIO CORRECTO')</script>");
                Response.Redirect("MenuPaciente.aspx");
            }
            else
            {
                Response.Write("<script>alert('USUARIO INCORRECTO')</script>");
            }
        }
    }
}