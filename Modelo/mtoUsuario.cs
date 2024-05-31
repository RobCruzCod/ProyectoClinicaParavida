using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Security.Claims;

namespace ProyectoClinicaParavida.Models
{
    public class mtoUsuario
    {
        private SqlConnection conexion;

        private void Conectar()
        {
            string cadconexion = ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString();
            conexion = new SqlConnection(cadconexion);
        }

        public List<Usuario> ListarTodos()
        {
            Conectar();
            List<Usuario> Usuarios = new List<Usuario>();
            SqlCommand comando = new SqlCommand("SELECT ID_Usuario, Usuario_Nick, Nombres, Apellidos, Edad, Sexo, Direccion, Correo, Clave, Rol FROM Usuarios", conexion);

            conexion.Open();

            SqlDataReader Registros = comando.ExecuteReader();
            while ( Registros.Read())
            {
                Usuario model = new Usuario()
                {
                    ID_Usuario = Convert.ToInt32(Registros["ID_Usuario"]),
                    Usuario_Nick = Convert.ToString(Registros["Usuario_Nick"]),
                    Nombres = Convert.ToString(Registros["Nombres"]),
                    Apellidos = Convert.ToString(Registros["Apellidos"]),
                    Edad = Convert.ToInt32(Registros["Edad"]),
                    Sexo = Convert.ToString(Registros["Sexo"]),
                    Direccion = Convert.ToString(Registros["Direccion"]),
                    Correo = Convert.ToString(Registros["Correo"]),
                    Clave = Convert.ToString(Registros["Clave"]),
                    Rol = Convert.ToInt32(Registros["Rol"])
                };

                Usuarios.Add(model);
            }

            conexion.Close();

            return Usuarios;
        }

        public Usuario Cosultar(int ID_Usuario)
        {
            Conectar();
            SqlCommand comando = new SqlCommand("SELECT Usuario_Nick, Nombres, Apellidos, Edad, Sexo, Direccion, Correo, Clave, Rol FROM Usuarios WHERE ID_Usuario = @id_Usuario", conexion);

            comando.Parameters.Add("@id_Usuario", SqlDbType.Int);
            comando.Parameters["@id_Usuario"].Value = ID_Usuario;

            conexion.Open();

            SqlDataReader Registros = comando.ExecuteReader();
            Usuario model = new Usuario();

            if (Registros.Read())
            {
                model.Usuario_Nick = Convert.ToString(Registros["Usuario_Nick"]);
                model.Nombres = Convert.ToString(Registros["Nombres"]);
                model.Apellidos = Convert.ToString(Registros["Apellidos"]);
                model.Edad = Convert.ToInt32(Registros["Edad"]);
                model.Sexo = Convert.ToString(Registros["Sexo"]);
                model.Direccion = Convert.ToString(Registros["Direccion"]);
                model.Correo = Convert.ToString(Registros["Correo"]);
                model.Clave = Convert.ToString(Registros["Clave"]);
                model.Rol = Convert.ToInt32(Registros["Rol"]);
            }

            conexion.Close();

            return model;
        }



        public bool ConsultarUsuario(string Usuario, string Clave)
        {
            Conectar();
            SqlCommand comando = new SqlCommand("SELECT ID_Usuario FROM Usuarios WHERE Usuario_Nick = @usuario_Nick AND Clave = @clave", conexion);

            comando.Parameters.Add("@usuario_Nick", SqlDbType.VarChar);
            comando.Parameters.Add("@clave", SqlDbType.VarChar);
            comando.Parameters["@usuario_Nick"].Value = Usuario;
            comando.Parameters["@clave"].Value = Clave;

            conexion.Open();

            SqlDataReader Registro = comando.ExecuteReader();
            bool r = Registro.Read();

            conexion.Close();

            return r;
        }

        public int Ingresar(Usuario model)
        {
            Conectar();
            SqlCommand comando = new SqlCommand("INSERT INTO Usuarios(Usuario_Nick, Nombres, Apellidos, Edad, Sexo, Direccion, Correo, Clave, Rol) values (@usuario_Nick, @nombres, @apellidos, @edad, @sexo, @direccion, @correo, @clave, @rol)", conexion);

            comando.Parameters.Add("@usuario_Nick", SqlDbType.VarChar);
            comando.Parameters.Add("@nombres", SqlDbType.VarChar);
            comando.Parameters.Add("@apellidos", SqlDbType.VarChar);
            comando.Parameters.Add("@edad", SqlDbType.Int);
            comando.Parameters.Add("@sexo", SqlDbType.VarChar);
            comando.Parameters.Add("@direccion", SqlDbType.VarChar);
            comando.Parameters.Add("@correo", SqlDbType.VarChar);
            comando.Parameters.Add("@clave", SqlDbType.VarChar);
            comando.Parameters.Add("@rol", SqlDbType.Int);

            comando.Parameters["@usuario_Nick"].Value = model.Usuario_Nick;
            comando.Parameters["@nombres"].Value = model.Nombres;
            comando.Parameters["@apellidos"].Value = model.Apellidos;
            comando.Parameters["@edad"].Value = model.Edad;
            comando.Parameters["@sexo"].Value = model.Sexo;
            comando.Parameters["@direccion"].Value = model.Direccion;
            comando.Parameters["@correo"].Value = model.Correo;
            comando.Parameters["@clave"].Value = model.Clave;
            comando.Parameters["@rol"].Value = model.Rol;

            conexion.Open();

            int r = comando.ExecuteNonQuery();

            conexion.Close();

            return r;
        }

        public int Modificar(Usuario model)
        {
            Conectar();
            SqlCommand comando = new SqlCommand("UPDATE Usuarios SET Usuario_Nick = @usuario_Nick, Nombres = @nombres, Apellidos = @apellidos, Edad = @edad, Sexo = @sexo, Direccion = @direccion, Correo = @correo, Clave = @clave, Rol = @rol WHERE ID_Usuario = @id_Usuario", conexion);

            comando.Parameters.Add("@usuario_Nick", SqlDbType.VarChar);
            comando.Parameters.Add("@nombres", SqlDbType.VarChar);
            comando.Parameters.Add("@apellidos", SqlDbType.VarChar);
            comando.Parameters.Add("@edad", SqlDbType.Int);
            comando.Parameters.Add("@sexo", SqlDbType.VarChar);
            comando.Parameters.Add("@direccion", SqlDbType.VarChar);
            comando.Parameters.Add("@correo", SqlDbType.VarChar);
            comando.Parameters.Add("@clave", SqlDbType.VarChar);
            comando.Parameters.Add("@rol", SqlDbType.Int);

            comando.Parameters["@usuario_Nick"].Value = model.Usuario_Nick;
            comando.Parameters["@nombres"].Value = model.Nombres;
            comando.Parameters["@apellidos"].Value = model.Apellidos;
            comando.Parameters["@edad"].Value = model.Edad;
            comando.Parameters["@sexo"].Value = model.Sexo;
            comando.Parameters["@direccion"].Value = model.Direccion;
            comando.Parameters["@correo"].Value = model.Correo;
            comando.Parameters["@clave"].Value = model.Clave;
            comando.Parameters["@rol"].Value = model.Rol;

            conexion.Open();

            int r = comando.ExecuteNonQuery();

            conexion.Close();

            return r;
        }

        public int Borrar(int ID_Usuario)
        {
            Conectar();
            SqlCommand comando = new SqlCommand("DELETE FROM Usuarios WHERE ID_Usuario = @id_Usuario", conexion);

            comando.Parameters.Add("@id_Usuario", SqlDbType.Int);
            comando.Parameters["@id_Usuario"].Value = ID_Usuario;

            conexion.Open();

            int r = comando.ExecuteNonQuery();

            conexion.Close();

            return r;
        }
    }
}