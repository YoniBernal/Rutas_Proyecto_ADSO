using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.DynamicData;

namespace SitioWebRutas.Datos
{
    public class ProcesosSQL
    {

        public DataTable mtdSelectDes(string consul)
        {
            ClConnection objConexion = new ClConnection();
            SqlDataAdapter adaptador = new SqlDataAdapter(consul, objConexion.mtdConexion());
            DataTable tblDatos = new DataTable();
            adaptador.Fill(tblDatos);
            objConexion.mtdConexion().Close();
            return tblDatos;
        }

        //Ejecuta consulta Select de forma Conectada y retorna DataReader 
        public void mtdSelectConec(string consul)
        {
            ClConnection obConexion = new ClConnection();
            obConexion.mtdConexion().Open();
            SqlCommand comando = new SqlCommand(consul, obConexion.mtdConexion());
            SqlDataReader regis = comando.ExecuteReader();
            obConexion.mtdConexion().Close();

        }

        //Ejecuta SQL Insert, Delet, Update en forma conectada y retorna conectada y retorna entero

        public int mtdIUDconect(string consul)
        {
            ClConnection conexion = new ClConnection();
            SqlCommand comando = new SqlCommand(consul, conexion.mtdConexion());
            int regis = comando.ExecuteNonQuery();
            conexion.mtdConexion().Close();
            return regis;

        }

        public DataTable CallExecProcedure(string procedure, SqlParameter[] parameters = null)
        {
            DataTable dataTable = new DataTable();

            ClConnection conexion = new ClConnection();

            using (SqlCommand command = new SqlCommand(procedure, conexion.mtdConexion()))
            {
                command.CommandType = CommandType.StoredProcedure;

                if (parameters != null)
                {
                    command.Parameters.AddRange(parameters);
                }

                using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
                {
                    dataAdapter.Fill(dataTable);
                }
            }

            return dataTable;

        }

    }
}
