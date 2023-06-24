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

       

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClLoginE registrarE = new ClLoginE();
            //registrarE.Correo = .Text;
            //registrarE.Clave = txtClaveR.Text;


            ClSesionL objRegisL = new ClSesionL();
            int regis = objRegisL.mtdregistroL(registrarE);


            string mensaje = "¡El registro fue exitoso!!";
            string script = "<script type=\"text/javascript\">alert('" + mensaje + "');</script>";


            if (regis == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);
            }

        }

        

        protected void btnInicioS_Click(object sender, EventArgs e)
        {
            string correo = txtCorreoUsuario.Text;
            string clave = txtClaveUsuario.Text;
            

            ClSesionL sesionL = new ClSesionL();
            ClLoginE datosE = sesionL.mtdLogicaDatos(correo, clave);
            if (datosE != null)
            {
                Session["Usuario"] = datosE.Nombres + " " + datosE.Apelidos;

                if (ddlListUsuario.SelectedValue == "1")
                {
                    Session["Turista"] = ddlListUsuario;
                    Response.Redirect("~/Vista/Mapa.aspx");

                }
                else if (ddlListUsuario.SelectedValue == "2")
                {
                    Session["Comerciante"] = ddlListUsuario;
                    Response.Redirect("~/Vista/Ruta.aspx");
                }
                else if (ddlListUsuario.SelectedValue == "3")
                {
                    Session["Alcalde"] = ddlListUsuario;
                    Response.Redirect("~/Vista/Municipios.aspx");
                }
                else if (ddlListUsuario.SelectedValue == "4")
                {
                    Session["Administrador"] = ddlListUsuario;
                    Response.Redirect("~/Vista/Ruta.aspx");
                }
            }

        }

    }
}


