using SitioWebRutas.Entidades;
using SitioWebRutas.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace SitioWebRutas.Vista
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sesion_Click(object sender, EventArgs e)
        {
            string usuario = txtcorreo.Text;
            string clve = txtcontra.Text;

            ClLoginL lonL = new ClLoginL();
            ClLoginE entidad = lonL.mtdlogin(usuario, clve);

            if (entidad != null)
            {
                Session["usuario"] = entidad.usuario + "" + entidad.clave;
            }
            else
            {
                MessageBox.Show("Error");
            }
        }
    }
}