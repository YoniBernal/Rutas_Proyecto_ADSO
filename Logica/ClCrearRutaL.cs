using SitioWebRutas.Datos;
using SitioWebRutas.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Logica
{
    public class ClCrearRutaL
    {
        public List<ClCrearRutaE> RMunicipioL()
        {

            ClCrearRutaD crtRuta = new ClCrearRutaD();
            List<ClCrearRutaE> rutaMunicipios = crtRuta.mtdRutaMunicipioo();

            return rutaMunicipios;
        }





        public int mtdReComn(ClCrearRutaE RegComen)
        {
            ClCrearRutaD Comrentar = new ClCrearRutaD();
            int regicm = Comrentar.comentariosRM(RegComen);
            return regicm;
        }

    }
}