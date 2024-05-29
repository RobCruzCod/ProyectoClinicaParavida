using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoClinicaParavida
{
    public partial class MenuEnfermera : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void BtnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

       

       

        protected void BtnProgramarCita_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProgramarCita.aspx");
        }

      
        protected void BtnLLenadoExpe_Click(object sender, EventArgs e)
        {
            Response.Redirect("LlenadoExpe.aspx");
        }

        protected void BtnCitas_Click(object sender, EventArgs e)
        {
            Response.Redirect("CitasProgramadas.aspx");
        }

        protected void BtnCitasPendientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("CitasSolicitadas.aspx");
        }
    }
}