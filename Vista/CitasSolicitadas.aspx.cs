using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoClinicaParavida
{
    public partial class CitasSolicitadas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuEnfermera.aspx");
        }

        protected void BtnRegresar_Click1(object sender, EventArgs e)
        {
            Response.Redirect("MenuEnfermera.aspx");
        }
    }
}