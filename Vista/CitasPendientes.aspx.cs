using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoClinicaParavida
{
    public partial class CitasPendientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }

        protected void BtnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPaciente.aspx");
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
            dt.Rows.Add("1", "Dr. Juan Perez", "2024-05-01", "10:00 AM", "Consulta general", "Activo");
            dt.Rows.Add("2", "Dr. Maria Gomez", "2024-05-02", "11:30 AM", "Revisión anual", "Activo");
            dt.Rows.Add("3", "Dr. Carlos Sanchez", "2024-05-03", "09:00 AM", "Chequeo de seguimiento", "Activo");
            dt.Rows.Add("4", "Dr. Ana Lopez", "2024-05-04", "01:00 PM", "Consulta especializada", "Activo");
            dt.Rows.Add("5", "Dr. Luis Ramirez", "2024-05-05", "02:30 PM", "Control de rutina", "Activo");

            GvCitasPendientes.DataSource = dt;
            GvCitasPendientes.DataBind();
        }
    }
}