using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoClinicaParavida
{
    public partial class MenuPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void BtnCitasActivas_Click(object sender, EventArgs e)
        {
            Response.Redirect("CitasActivas.aspx");
        }

        protected void BtnCitasPendientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("CitasPendientes.aspx");
        }

        protected void BtnHistorial_Click(object sender, EventArgs e)
        {
            Response.Redirect("Historial.aspx");
        }

        protected void BtnReservarCitas_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReservarCitas.aspx");
        }
    }
}