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
            string correo = txtUsuario.Text;
            string clave = txtClave.Text;

            ClEncripL ddd = new ClEncripL();
            string h = ddd.mtdescri(txtClave.Text);


            ClSesionL sesionL = new ClSesionL();
            ClLoginE datosE = sesionL.mtdLogicaDatos(correo, clave);

            if (datosE != null )
            {
                Session["Usuario"] = datosE.Nombres + " " + datosE.Apelidos;
                Response.Redirect("~/Vista/Proviniciaa.aspx");

            }
            else
            { 
            
            }

        }
    }
}