using SitioWebRutas.Datos;
using SitioWebRutas.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Logica
{
    public class ClLogica
    {
        public List<ClEntidades> mtdMunicipiosL(int idMunicipio)
        {
            ClMunicipios objMunicipiosD = new ClMunicipios();
            List<ClEntidades> idporMunicipio = objMunicipiosD.mtdMunicipios(idMunicipio);

            return idporMunicipio;

        }

    }
}