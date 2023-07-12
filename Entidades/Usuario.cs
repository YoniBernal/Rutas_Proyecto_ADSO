using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SitioWebRutas.Entidades
{
    public class Usuario
    {

        public int idUsuario { get; set; }
        public string Documento { get; set; }
        public string Nombre { get; set; }
        public string Email { get; set; }
        public string Celular { get; set; }
        public string Foto { get; set; }
        public string Clave { get; set; }
        public int idMunicipio { get; set; }
        public int idRol { get; set; }

    }
}