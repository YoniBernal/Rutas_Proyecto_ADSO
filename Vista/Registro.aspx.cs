using SitioWebRutas.Datos;
using SitioWebRutas.Entidades;
using SitioWebRutas.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SitioWebRutas.Vista
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadAllElements();
             
            }
        }


        public void LoadAllElements()
        {
            LogProvincias objUsuEnt = new LogProvincias();
            //var mtdGetMunicipios = objUsuEnt.mtdGetMunicipios();
            //var mtdEstablecimiento = objUsuEnt.mtdEstablecimiento();

            //LoadMunicipiosToDdl(mtdGetMunicipios, ddlMunicipio);
            //    LoadMunicipiosToDdl(mtdGetMunicipios, ddlComercianteMunicipios);
            //    LoadEstablecimientoDdl(mtdEstablecimiento, ddlTipoEstablecimiento);
        }

        public void LoadMunicipiosToDdl(List<EntMunicipios> municipios, DropDownList dropDownList)
            {
                dropDownList.DataSource = municipios;
                dropDownList.DataTextField = "Nombre";
                dropDownList.DataValueField = "idMunicipio";
                dropDownList.DataBind();
            }

            //public void LoadEstablecimientoDdl(List<TipoEstablecimiento> establecimiento, DropDownList dropDownList)
            //{
            //    dropDownList.DataSource = establecimiento;
            //    dropDownList.DataTextField = "Nombre";
            //    dropDownList.DataValueField = "idTipo";

            //    dropDownList.DataBind();
            //}

            public void btnLogin_Click(object sender, EventArgs e)
        {
            LogProvincias objUser = new LogProvincias();

            string Email = txtCorreoUsuario.Text;
            string Clave = txtClaveUsuario.Text;

            if (string.IsNullOrEmpty(Email) || string.IsNullOrEmpty(Clave))
            {
                string mensaje = "Debe digitar un usuario y una contraseña";
                string script = "<script type=\"text/javascript\">alert('" + mensaje + "');</script>";

                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);

                return;
            }

            var obUsr = objUser.mtdLogearUsuario(Email, Clave);
            if (obUsr.idUsuario > 0)
            {
                Session["idUsuario"] = obUsr.idUsuario;
                Session["idRol"] = obUsr.idRol;
                Response.Redirect("~/Vista/Inicio.aspx");
            }
            else if (obUsr.idUsuario == 0)
            {
                string mensaje = "Datos no encontrados, debe registrarse";
                string script = "<script type=\"text/javascript\">alert('" + mensaje + "');</script>";

                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Usuario objsUsers = new Usuario();
            objsUsers.Documento = txtDocumento.Text;
            objsUsers.Nombre = txtNombre.Text;
            objsUsers.Email = txtEmail.Text;
            objsUsers.Celular = txtCelular.Text;
            //objsUsers.Foto = 
            objsUsers.Clave = txtContraseña.Text;
            objsUsers.idRol = Convert.ToInt32(rblTipoUsuario.SelectedValue);
            objsUsers.idMunicipio = Convert.ToInt32(ddlMunicipio.SelectedValue);
            
            if(objsUsers.idRol == 3)
            {
                objsUsers.idMunicipio = 0;
            }

            LogProvincias objUslogic = new LogProvincias();
            string result = objUslogic.mtdRegistroUser(objsUsers.Documento, objsUsers.Nombre, objsUsers.Email, objsUsers.Celular, 
                objsUsers.Foto,objsUsers.Clave, objsUsers.idMunicipio, objsUsers.idRol);

            string script;
            if (string.IsNullOrEmpty(result))
            {
                string mensaje = "Datos Registrados";
                script = "<script type=\"text/javascript\">alert('" + mensaje + "');</script>";
                Response.Redirect("~/Vista/Registro.aspx");
            }
            else
            {
                script = "<script type=\"text/javascript\">alert('" + result + "');</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);
            }
            ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);

        }
    }
}