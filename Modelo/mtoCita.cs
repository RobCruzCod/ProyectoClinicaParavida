using ProyectoClinicaParavida.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Security.Claims;
using System.Configuration;

namespace ProyectoClinicaParavida.Modelo
{
    public class mtoCita
    {
        private SqlConnection conexion;

        private void conectar()
        {
            string cadconexion = ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString();
            conexion = new SqlConnection(cadconexion);
        }

        public void AgregarUsuario(Usuario usuario)
        {
            string query = "INSERT INTO dbo.Usuarios (Nombres, Apellidos, Edad, Sexo, Correo, Clave, Rol) VALUES (@Nombres, @Apellidos, @Edad, @Sexo, @Correo, @Clave, @Rol)";

            using (SqlCommand comando = new SqlCommand(query, conexion))
            {
                comando.Parameters.AddWithValue("@Nombres", usuario.Nombres);
                comando.Parameters.AddWithValue("@Apellidos", usuario.Apellidos);
                comando.Parameters.AddWithValue("@Edad", usuario.Edad);
                comando.Parameters.AddWithValue("@Sexo", usuario.Sexo);
                comando.Parameters.AddWithValue("@Correo", usuario.Correo);
                comando.Parameters.AddWithValue("@Clave", usuario.Clave);
                comando.Parameters.AddWithValue("@Rol", usuario.Rol);

                conexion.Open();
                comando.ExecuteNonQuery();
                conexion.Close();
            }
        }


        public void ActualizarUsuario(Usuario usuario)
        {
            string query = "UPDATE dbo.Usuarios SET Nombres = @Nombres, Apellidos = @Apellidos, Edad = @Edad, Sexo = @Sexo, Correo = @Correo, Clave = @Clave, Rol = @Rol WHERE ID_Usuario = @ID_Usuario";

            using (SqlCommand comando = new SqlCommand(query, conexion))
            {
                comando.Parameters.AddWithValue("@ID_Usuario", usuario.ID_Usuario);
                comando.Parameters.AddWithValue("@Nombres", usuario.Nombres);
                comando.Parameters.AddWithValue("@Apellidos", usuario.Apellidos);
                comando.Parameters.AddWithValue("@Edad", usuario.Edad);
                comando.Parameters.AddWithValue("@Sexo", usuario.Sexo);
                comando.Parameters.AddWithValue("@Correo", usuario.Correo);
                comando.Parameters.AddWithValue("@Clave", usuario.Clave);
                comando.Parameters.AddWithValue("@Rol", usuario.Rol);

                conexion.Open();
                comando.ExecuteNonQuery();
                conexion.Close();
            }
        }


        public void EliminarUsuario(int idUsuario)
        {
            string query = "DELETE FROM dbo.Usuarios WHERE ID_Usuario = @ID_Usuario";

            using (SqlCommand comando = new SqlCommand(query, conexion))
            {
                comando.Parameters.AddWithValue("@ID_Usuario", idUsuario);

                conexion.Open();
                comando.ExecuteNonQuery();
                conexion.Close();
            }
        }


        public Usuario ObtenerUsuario(int idUsuario)
        {
            Usuario usuario = null;
            string query = "SELECT * FROM dbo.Usuarios WHERE ID_Usuario = @ID_Usuario";

            using (SqlCommand comando = new SqlCommand(query, conexion))
            {
                comando.Parameters.AddWithValue("@ID_Usuario", idUsuario);

                conexion.Open();
                using (SqlDataReader reader = comando.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        usuario = new Usuario
                        {
                            ID_Usuario = Convert.ToInt32(reader["ID_Usuario"]),
                            Nombres = reader["Nombres"].ToString(),
                            Apellidos = reader["Apellidos"].ToString(),
                            Edad = Convert.ToInt32(reader["Edad"]),
                            Sexo = reader["Sexo"].ToString(),
                            Correo = reader["Correo"].ToString(),
                            Clave = reader["Clave"].ToString(),
                            Rol = Convert.ToInt32(reader["Rol"])
                        };
                    }
                }
                conexion.Close();
            }

            return usuario;
        }


        public Usuario Usuario_Nick(int idUsuario)
        {
            Usuario usuario = null;
            string query = "SELECT * FROM dbo.Usuarios WHERE ID_Usuario = @ID_Usuario";

            using (SqlCommand comando = new SqlCommand(query, conexion))
            {
                comando.Parameters.AddWithValue("@ID_Usuario", idUsuario);

                conexion.Open();
                using (SqlDataReader reader = comando.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        usuario = new Usuario
                        {
                            ID_Usuario = Convert.ToInt32(reader["ID_Usuario"]),
                            Nombres = reader["Nombres"].ToString(),
                            Apellidos = reader["Apellidos"].ToString(),
                            Edad = Convert.ToInt32(reader["Edad"]),
                            Sexo = reader["Sexo"].ToString(),
                            Correo = reader["Correo"].ToString(),
                            Clave = reader["Clave"].ToString(),
                            Rol = Convert.ToInt32(reader["Rol"])
                        };
                    }
                }
                conexion.Close();
            }

            return usuario;
        }


    }
}