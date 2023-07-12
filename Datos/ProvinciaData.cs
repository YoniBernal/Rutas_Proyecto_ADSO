using SitioWebRutas.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Claims;
using System.Web;

namespace SitioWebRutas.Datos
{
    public class ProvinciaData
    {
        public List<EntMunicipios> mtdGetMunicipiosById(int idProvincia)
        {
            ProcesosSQL selectdesconet = new ProcesosSQL();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@idProvincia", idProvincia)
            };

            DataTable dtMunicipio = selectdesconet.CallExecProcedure("GetMunicipiosById", parameters);
            List<EntMunicipios> Municipios = new List<EntMunicipios>();

            for (int i = 0; i < dtMunicipio.Rows.Count; i++)
            {
                EntMunicipios objMunic = new EntMunicipios();
                objMunic.idMunicipio = int.Parse(dtMunicipio.Rows[i]["idMunicipio"].ToString());
                objMunic.Nombre = dtMunicipio.Rows[i]["Nombre"].ToString();

                Municipios.Add(objMunic);
            }
            return Municipios;
        }

        public List<EntProvincias> mtdProvinciasById(int idProvincia)
        {
            ProcesosSQL selectdesconet = new ProcesosSQL();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@idProvincia", idProvincia)
            };

            DataTable dtProvincia = selectdesconet.CallExecProcedure("GET_Provincia_BY_ID", parameters);
            List<EntProvincias> TablaProvincia = new List<EntProvincias>();

            for (int i = 0; i < dtProvincia.Rows.Count; i++)
            {
                EntProvincias objProvincia = new EntProvincias();
                objProvincia.idProvincia = int.Parse(dtProvincia.Rows[i]["idProvincia"].ToString());
                objProvincia.NombreProvincia = dtProvincia.Rows[i]["NombreProvincia"].ToString();
                objProvincia.Descripcion = dtProvincia.Rows[i]["Descripcion"].ToString();
                objProvincia.Imagen = dtProvincia.Rows[i]["Imagen"].ToString();

                TablaProvincia.Add(objProvincia);
            }

            return TablaProvincia;
        }


        public List<EntProvincias> mtdGetActiveProvincias(bool Estado)
        {
            ProcesosSQL selectdesconet = new ProcesosSQL();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@Estado", Estado)
            };

            DataTable dtProvincia = selectdesconet.CallExecProcedure("GET_Active_Provincias", parameters);
            List<EntProvincias> ProvinciaEstado = new List<EntProvincias>();

            for (int i = 0; i < dtProvincia.Rows.Count; i++)
            {
                EntProvincias objProvincia = new EntProvincias();
                objProvincia.idProvincia = int.Parse(dtProvincia.Rows[i]["idProvincia"].ToString());
                objProvincia.NombreProvincia = dtProvincia.Rows[i]["NombreProvincia"].ToString();
                objProvincia.Descripcion = dtProvincia.Rows[i]["Descripcion"].ToString();
                objProvincia.Imagen = dtProvincia.Rows[i]["Imagen"].ToString();
                objProvincia.Estado = Convert.ToBoolean(dtProvincia.Rows[i]["Estado"].ToString());

                ProvinciaEstado.Add(objProvincia);
            }
            return ProvinciaEstado;
        }

        public List<EntMunicipios> mtdGetMunicipios()
        {
            ProcesosSQL selectdesconet = new ProcesosSQL();

            DataTable dtMunicipio = selectdesconet.CallExecProcedure("GetMunicipios", null);
            List<EntMunicipios> Municipios = new List<EntMunicipios>();

            for (int i = 0; i < dtMunicipio.Rows.Count; i++)
            {
                EntMunicipios objMunic = new EntMunicipios();
                objMunic.idMunicipio = int.Parse(dtMunicipio.Rows[i]["idMunicipio"].ToString());
                objMunic.Nombre = dtMunicipio.Rows[i]["Nombre"].ToString();

                Municipios.Add(objMunic);
            }
            return Municipios;
        }

        public List<TipoEstablecimiento> mtdSelectEstablecimiento()
        {
            ProcesosSQL selectdesconet = new ProcesosSQL();

            DataTable dtEstablecimiento = selectdesconet.CallExecProcedure("SELECT_ Tipo_Establecimiento", null);
            List<TipoEstablecimiento> Establecimiento = new List<TipoEstablecimiento>();


            for (int i = 0; i < dtEstablecimiento.Rows.Count; i++)
            {
                TipoEstablecimiento objEstable = new TipoEstablecimiento();
                objEstable.idTipo = int.Parse(dtEstablecimiento.Rows[i]["idTipo"].ToString());
                objEstable.Nombre = dtEstablecimiento.Rows[i]["Nombre"].ToString();


                Establecimiento.Add(objEstable);
            }

            return Establecimiento;
        }


        public Usuario mtdIngreso(string Email, string Clave)
        {
            ProcesosSQL selectdesconet = new ProcesosSQL();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@Email", Email),
                new SqlParameter("@Clave", Clave)
            };

            DataTable dtIngreso = selectdesconet.CallExecProcedure("Ingresar_User", parameters);
            Usuario objUser = new Usuario();


            if (dtIngreso.Rows.Count > 0)
            {
                var rowData = dtIngreso.Rows[0];

                objUser.idUsuario = int.Parse(rowData["idUsuario"].ToString());
                objUser.Nombre = rowData["Nombre"].ToString();
                objUser.Documento = rowData["Documento"].ToString();
                objUser.Email = rowData["Email"].ToString();
                objUser.Celular = rowData["Celular"].ToString();
                objUser.Foto = rowData["Foto"].ToString();
                objUser.Clave = rowData["Clave"].ToString();
                objUser.idMunicipio = int.Parse(rowData["idMunicipio"].ToString());
                objUser.idRol = int.Parse(rowData["idRol"].ToString());

            }

            return objUser;

        }

        public string mtdRegistrar(string Documento, string Nombre, string Email,
            string Celular, string Foto, string Clave, int idMunicipio, int idRol)
        {
            ProcesosSQL selectdesconet = new ProcesosSQL();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@Documento", Documento),
                new SqlParameter("@Nombre", Nombre),
                new SqlParameter("@Email", Email),
                new SqlParameter("@Celular", Celular),
                new SqlParameter("@Foto", Foto),
                new SqlParameter("@Clave", Clave),
                new SqlParameter("@idMunicipio", idMunicipio),
                new SqlParameter("@idRol", idRol)
            };

            DataTable dtIngreso = selectdesconet.CallExecProcedure("Register_User", parameters);

            if (dtIngreso.Rows.Count > 0)
            {
                var row = dtIngreso.Rows[0];

                if (!Convert.ToBoolean(row["Result"].ToString()))
                {
                    return row[1].ToString();
                }

            }
            return "";
        }
    }
}




