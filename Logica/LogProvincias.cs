using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SitioWebRutas.Entidades;
using SitioWebRutas.Datos;

namespace SitioWebRutas.Logica
{
    public class LogProvincias
    {
        ProvinciaData objEstb = new ProvinciaData();

        public List<EntProvincias> mtdProvinciasById(int idProvincia)
        {
            return objEstb.mtdProvinciasById(idProvincia);
        }

        public List<EntProvincias> mtdGetActiveProvincias(bool Estado)
        {
            return objEstb.mtdGetActiveProvincias(Estado);
        }

        public List<EntMunicipios> mtdGetMunicipiosByIds(int idProvincia)
        {
            return objEstb.mtdGetMunicipiosById(idProvincia);
        }

        public List<TipoEstablecimiento> mtdEstablecimiento()
        {
            return objEstb.mtdSelectEstablecimiento();
        }

        public Usuario mtdLogearUsuario(string Email, string Clave)
        {
           return objEstb.mtdIngreso(Email, Clave);
        }

        public string mtdRegistroUser(string Documento, string Nombre, string Email,
            string Celular, string Foto, string Clave, int idMunicipio, int idRol)
        {
            return objEstb.mtdRegistrar(Documento, Nombre, Email, Celular, Foto, Clave, idMunicipio, idRol);
        }
    }
}