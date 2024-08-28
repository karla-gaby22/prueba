using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


namespace prueba
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        UsuarioManager usuarioManager = new UsuarioManager();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnIniSesion_Click(object sender, EventArgs e)
        {
            string correo = TxtCorreo.Text;
            string contraseña = TxtContraseña.Text;

            bool esValido = usuarioManager.ValidarUsuario(correo, contraseña);

            if (esValido)
            {
                Response.Redirect("home.aspx"); 
            }
            else
            {
                Response.Redirect("IniciarSesion.aspx");
            }
            
        }
    }
}