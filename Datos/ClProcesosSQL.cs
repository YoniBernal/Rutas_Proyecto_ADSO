﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Datos
{
    public class ClProcesosSQL
    {
        public DataTable mtdSelectDes(string consul)
        {
            ClConexion objConexion = new ClConexion();
            SqlDataAdapter adaptador = new SqlDataAdapter(consul, objConexion.mtdConexion());
            DataTable tblDatos = new DataTable();
            adaptador.Fill(tblDatos);
            objConexion.mtdConexion().Close();
            return tblDatos;
        }

        //Ejecuta consulta Select de forma Conectada y retorna DataReader 
        public void mtdSelectConec(string consul)
        {
            ClConexion obConexion = new ClConexion();
            obConexion.mtdConexion().Open();
            SqlCommand comando = new SqlCommand(consul, obConexion.mtdConexion());
            SqlDataReader regis = comando.ExecuteReader();
            obConexion.mtdConexion().Close();

        }

        //Ejecuta SQL Insert, Delet, Update en forma conectada y retorna conectada y retorna entero

        public int mtdIUDconect(string consul)
        {
            ClConexion conexion = new ClConexion();
            SqlCommand comando = new SqlCommand(consul, conexion.mtdConexion());
            int regis = comando.ExecuteNonQuery();
            conexion.mtdConexion().Close();
            return regis;

        }
    }
}