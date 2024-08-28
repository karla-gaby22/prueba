using System;
using System.Data;
using System.Data.SqlClient;

namespace prueba
{
    public class UsuarioManager
    {
        private string conexionstring = "server=DESKTOP-0IPFGCI\\SQLEXPRESS; database=WePlotPrueba; integrated security=true";

        public bool RegistrarUsuario(string nombre, string apellido, string correo, string contraseña, string comidaFavorita, string artistaFavorito, string lugarFavorito, string colorFavorito)
        {
            using (SqlConnection conexion = new SqlConnection(conexionstring))
            {
                try
                {
                    conexion.Open();
                    string query = "INSERT INTO Usuarios ([Nombre], [Apellido], [CorreoElectronico], [Contraseña], [ComidaFavorita], [ArtistaFavorito], [LugarFavorito], [ColorFavorito]) " +
                                   "VALUES (@Nombre, @Apellido, @CorreoElectronico, @Contraseña, @ComidaFavorita, @ArtistaFavorito, @LugarFavorito, @ColorFavorito)";

                    using (SqlCommand comando = new SqlCommand(query, conexion))
                    {
                        comando.Parameters.AddWithValue("@Nombre", nombre);
                        comando.Parameters.AddWithValue("@Apellido", apellido);
                        comando.Parameters.AddWithValue("@CorreoElectronico", correo);
                        comando.Parameters.AddWithValue("@Contraseña", contraseña);
                        comando.Parameters.AddWithValue("@ComidaFavorita", comidaFavorita);
                        comando.Parameters.AddWithValue("@ArtistaFavorito", artistaFavorito);
                        comando.Parameters.AddWithValue("@LugarFavorito", lugarFavorito);
                        comando.Parameters.AddWithValue("@ColorFavorito", colorFavorito);

                        comando.ExecuteNonQuery();
                    }

                    return true; 
                }
                catch (Exception ex)
                {
                  
                    Console.WriteLine("Error: " + ex.Message);
                    return false; 
                }
            }
        }

        public bool ValidarUsuario(string correo, string contraseña)
        {
            using (SqlConnection conexion = new SqlConnection(conexionstring))
            {
                try
                {
                    conexion.Open();
                    string query = "SELECT COUNT(*) FROM Usuarios WHERE CorreoElectronico = @CorreoElectronico AND Contraseña = @Contraseña";

                    using (SqlCommand comando = new SqlCommand(query, conexion))
                    {
                        comando.Parameters.AddWithValue("@CorreoElectronico", correo);
                        comando.Parameters.AddWithValue("@Contraseña", contraseña);

                        int resultado = (int)comando.ExecuteScalar();
                        return resultado > 0;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error: " + ex.Message);
                    return false;
                }
            }
        }
    }
}
