using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SitioWebRutas.Entidades;
using SitioWebRutas.Datos;
using SitioWebRutas.Logica;

namespace SitioWebRutas.Vista
{
    public partial class InformacionProvincia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["idProvincia"] != null)
            {
                int idProvincia = int.Parse(Request.QueryString["idProvincia"]);

                LogProvincias LogicaProvi = new LogProvincias();
                var provincia = LogicaProvi.mtdProvinciasById(idProvincia);

                if (provincia.Count > 0)
                {
                    EntProvincias prov = provincia[0];
                    lblNombre.Text = prov.NombreProvincia;
                    lbldescripcion.Text = prov.Descripcion;
                }

                var municipios = LogicaProvi.mtdGetMunicipiosByIds(idProvincia);

                if (municipios.Count > 0)
                {                    
                    ListaMunicipios.DataSource = municipios;
                    ListaMunicipios.DataBind();
                }

            }
        }
    }
}

    
