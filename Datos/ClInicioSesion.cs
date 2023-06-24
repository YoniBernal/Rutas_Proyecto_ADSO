using SitioWebRutas.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Datos
{
    public class ClInicioSesion
    {
        public List<ClInicioSesionE> mtdlistar()
        {
            string consul = "select * from Rol";
            ClProcesosSQL sql = new ClProcesosSQL();
            DataTable tblRol = sql.mtdSelectDes(consul);

            List<ClInicioSesionE> ListRoles = new List<ClInicioSesionE>();
            ClInicioSesionE obDatRol = null;

            for (int i = 0; i < tblRol.Rows.Count; i++)
            {
                obDatRol = new ClInicioSesionE();
                obDatRol.idRol = int.Parse(tblRol.Rows[i]["idRol"].ToString());
                obDatRol.TipoUsuario = tblRol.Rows[i]["TipoUsuario"].ToString();
                obDatRol.Descripcion = tblRol.Rows[i]["Descripcion"].ToString();
                ListRoles.Add(obDatRol);
            }
            return ListRoles;




        }





    }
}