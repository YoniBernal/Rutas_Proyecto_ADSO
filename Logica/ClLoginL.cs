using SitioWebRutas.Datos;
using SitioWebRutas.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Logica
{
    public class ClLoginL
    {
        public ClLoginE mtdlogin(string usuario, string clave)
        {
            ClLogonD mtdloginD = new ClLogonD();
            ClLoginE tbl = mtdloginD.dLogin();
            return tbl;
        }
    }
}
    
