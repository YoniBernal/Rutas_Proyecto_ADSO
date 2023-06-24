using SitioWebRutas.Datos;
using SitioWebRutas.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Logica
{
    public class ClSesionL
    {

        public ClLoginE mtdLogicaDatos(string usuario, string clave)
        {
            ClSesion sesionDa = new ClSesion();
            ClLoginE DatosE = sesionDa.mtdsesion(usuario, clave);
            return DatosE;
        }


        public int mtdregistroL(ClLoginE Regits)
        {
            ClSesion registroD = new ClSesion();
            int regi = registroD.mtsregistrar(Regits);
            return regi;
        }


    }
}