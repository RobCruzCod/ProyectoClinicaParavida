using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoClinicaParavida
{
    public partial class Historial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }

        protected void BtnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPaciente.aspx");
        }

        protected void BtnExpe_Click(object sender, EventArgs e)
        {
            Response.Redirect("PacientesExpe.aspx");
        }
        private void BindGridView()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("Nombre Doctor");
            dt.Columns.Add("Fecha");
            dt.Columns.Add("Hora");
            dt.Columns.Add("Notas");
            dt.Columns.Add("Estado");

            // Agregar datos de prueba
            dt.Rows.Add("6", "Dr. Laura Martinez", "2024-05-06", "03:00 PM", "Examen preventivo", "Archivado");
            dt.Rows.Add("7", "Dr. Pedro Torres", "2024-05-07", "04:00 PM", "Revisión de diagnóstico", "Archivado");
            dt.Rows.Add("8", "Dr. Sofia Herrera", "2024-05-08", "10:30 AM", "Consulta de seguimiento", "Denegado");
            dt.Rows.Add("9", "Dr. Andres Castillo", "2024-05-09", "11:00 AM", "Evaluación de tratamiento", "Denegado");
            dt.Rows.Add("10", "Dr. Julia Nunez", "2024-05-10", "01:30 PM", "Consulta de segunda opinión", "Archivado");

            GvHistorial.DataSource = dt;
            GvHistorial.DataBind();
        }
    }
}