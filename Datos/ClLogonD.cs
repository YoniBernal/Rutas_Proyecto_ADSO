using SitioWebRutas.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Datos
{
    public class ClLogonD
    {
        public ClLoginE dLogin()
        {
            ClConexion con = new ClConexion();
            SqlCommand cmd = new SqlCommand("PROlOGON", con.mtdConexion());
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable tbl = new DataTable(cmd.ToString());

            ClLoginE entidad = null;

            if (tbl.Rows.Count == 1)
            {
                entidad = new ClLoginE();
                cmd.Parameters.AddWithValue("@Correo", entidad.usuario);
                cmd.Parameters.AddWithValue("@Clave", entidad.clave);
            }
            SqlDataAdapter tab = new SqlDataAdapter(cmd);
            tab.Fill(tbl);
            return entidad;

        }
    }
}
