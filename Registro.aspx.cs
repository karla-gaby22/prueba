using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
//Registro
namespace prueba
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        UsuarioManager usuarioManager = new UsuarioManager();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnUnirme_Click(object sender, EventArgs e)
        {
            
            if (TxtContraseña.Text != TxtConfirmaContra.Text)
            {
                CompareValidator1.ErrorMessage = "Las contraseñas no coinciden.";
                CompareValidator1.IsValid = false;
                return; 
            }

            bool registrado = usuarioManager.RegistrarUsuario(
                TxtNombre.Text,
                TxtApellido.Text,
                TxtEmail.Text,
                TxtContraseña.Text,
                TxtComidaF.Text,
                TxtArtistaF.Text,
                TxtLugarF.Text,
                TxtColorF.Text
            );

            if (registrado)
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("Ocurrió un error al registrar el usuario.");
            }
        }
    }
}