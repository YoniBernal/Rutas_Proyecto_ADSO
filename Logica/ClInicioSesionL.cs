using SitioWebRutas.Datos;
using SitioWebRutas.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Logica
{
    public class ClInicioSesionL
    {
        public List<ClInicioSesionE> mtdLista()
        {
            ClInicioSesion obRolD = new ClInicioSesion();
            List<ClInicioSesionE> LisRoles = obRolD.mtdlistar();
            return LisRoles;

        }
    }
}