using SitioWebRutas.Entidades;
using SitioWebRutas.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace SitioWebRutas
{
    public partial class Sesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSesionIni_Click(object sender, EventArgs e)
        {
            string correo = txtcontrasena.Text;
            string clave = txtcorreo.Text;


            ClSesionL sesionLogi = new ClSesionL();
            ClLoginE entidses = sesionLogi.mtdLogicaDatos(correo, clave);

            if (entidses != null)
            {
                Session["Usuario"] = entidses.Nombres + "" + entidses.Apelidos;
                Response.Redirect("~/Vista/Proviniciaa.aspx");
            }
            else
            {

            }
            //else
            //{
            //    MessageBox.Show("Errir");
            //}
        }
    }
}