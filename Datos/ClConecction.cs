using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Datos
{
    public class ClConnection
    {
        SqlConnection conexion = null;
        public SqlConnection mtdConexion()
        {
            conexion = new SqlConnection("Data Source=DESKTOP-D3NBMD5;Initial Catalog=DBO_Rutas_Boyaca;Integrated Security=True");
            conexion.Open();
            return conexion;
        }
    }
}
