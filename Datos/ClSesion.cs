using SitioWebRutas.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Datos
{
    public class ClSesion
    {

        public ClLoginE mtdsesion(string correo , string clave )
        {

            string datossql = "Select * from Usuario Where Correo='"+ correo + "' and clave='" + clave +"'";
            ClProcesosSQL SQLSESIOON = new ClProcesosSQL();
            DataTable tblsesion = SQLSESIOON.mtdSelectDes(datossql);

            ClLoginE sesionE = null;

            if (tblsesion.Rows.Count == 1)
            {
                sesionE = new ClLoginE();
                sesionE.idUsuario = int.Parse(tblsesion.Rows[0]["idUsuario"].ToString());
                sesionE.Nombres = tblsesion.Rows[0]["Nombres"].ToString();
                sesionE.Apelidos = tblsesion.Rows[0]["Apellidos"].ToString();
                sesionE.Correo = tblsesion.Rows[0]["Correo"].ToString();
                sesionE.Clave = tblsesion.Rows[0]["Clave"].ToString();
 
            }

            return sesionE;

        }

    }
}