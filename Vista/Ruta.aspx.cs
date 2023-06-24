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
    public partial class Ruta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatosRutaMunicipio();
            }
        }


        protected void CargarDatosRutaMunicipio()
        {
            ClCrearRutaL rutaL = new ClCrearRutaL();
            List<ClCrearRutaE> lista = new List<ClCrearRutaE>();
            lista = rutaL.RMunicipioL();

            mySelect.DataSource = lista;
            mySelect.DataTextField = "NombreTM";
            mySelect.DataValueField = "IdMunicipio";
            mySelect.DataBind();
        }



    }
}