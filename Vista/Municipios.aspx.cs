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
    public partial class Municipios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idMunicipio"] != null)
            {
                int idMunicipio = int.Parse(Request.QueryString["idMunicipio"]);

                ClLogica LogicaSoga = new ClLogica();
                var municipio = LogicaSoga.mtdMunicipiosL(idMunicipio);

                if (municipio.Count > 0)
                {
                    ClEntidades muni = municipio[0];
                    lblNombre.Text = muni.Nombre;
                    //lblNomC.Text = lblNombre.Text;
                    lblN_Habitantes.Text = muni.Numerohabitantes;
                    lblLatitud.Text = muni.Latitud;
                    lblLongitud.Text = muni.Longitud;
                    lblExtension.Text = muni.Extension;
                    lbldescripcion.Text = muni.DEscripcion;
                    lblUbicacion.Text = muni.Ubicacion;

                }
            }
        }
              
    }
}