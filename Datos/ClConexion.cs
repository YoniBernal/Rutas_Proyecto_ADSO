using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Datos
{
    public class ClConexion
    {
        SqlConnection conexion = null;
            public SqlConnection mtdConexion()
            {
                conexion = new SqlConnection("Data Source=SOGAPRRBCFSD551;Initial Catalog=R_Boyaca;Integrated Security=True");
                conexion.Open();
                return conexion;
            }
        }
}