using SitioWebRutas.Entidades;
using SitioWebRutas.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADSO_Proyecto_Rutas.Vista
{
    public partial class Sesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                roles();
            }
        }

        protected void roles()
        {
            ClInicioSesionL obRol = new ClInicioSesionL();
            List<ClInicioSesionE> ListaRoles = new List<ClInicioSesionE>();
            ListaRoles = obRol.mtdLista();

            ddlListUsuario.DataSource = ListaRoles;
            ddlListUsuario.DataTextField = "TipoUsuario";
            ddlListUsuario.DataValueField = "idRol";
            ddlListUsuario.DataBind();
        }


        protected void btnsesionn_Click(object sender, EventArgs e)
        {
            string correo = txtCorreoUsuario.Text;
            string clave = txtClaveUsuario.Text;

            ClEncripL ddd = new ClEncripL();
            string h = ddd.mtdescri(txtClaveUsuario.Text);

            ClSesionL SeSIl = new ClSesionL();
            ClLoginE sesionE = SeSIl.mtdLogicaDatos(correo, clave);

            if (sesionE != null)
            {
                Session["Usuario"] = sesionE.Nombres + " " + sesionE.Apelidos;
                string rolSeleccionado = ddlListUsuario.SelectedItem.Value;

                if (rolSeleccionado == "Alcaldia")
                {
                    Response.Redirect("~/Vista/Municipios.aspx");
                }
                else if (rolSeleccionado == "Usuario")
                {
                    Response.Redirect("~/Vista/Mapa.aspx");

                }
                else if (rolSeleccionado == "Turista")
                {
                    
                }
                else if (rolSeleccionado == "Comerciante")
                {
                    
                }

            }
            else
            {
                lblMensaje.Text = "erorr";
            }
        }


    


        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

        }
    }
}