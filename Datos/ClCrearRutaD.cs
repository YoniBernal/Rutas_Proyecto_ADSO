using SitioWebRutas.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;

namespace SitioWebRutas.Datos
{
    public class ClCrearRutaD
    {

        public List<ClCrearRutaE> mtdRutaMunicipioo()
        {
            string sqlRmunicipio = "SELECT Municipio.Nombre, Municipio.Descripcion, RutaMunicipio.idRuta, RutaMunicipio.idMunicipio, RutaMunicipio.TituloComentario, RutaMunicipio.Comentario, RutaMunicipio.Imagen " +
                            "FROM RutaMunicipio " +
                            "INNER JOIN Municipio ON RutaMunicipio.idMunicipio = Municipio.idMunicipio";

            ClProcesosSQL selectD = new ClProcesosSQL();
            DataTable dtRutaMu = selectD.mtdSelectDes(sqlRmunicipio);

            List<ClCrearRutaE> RutaMuLis = new List<ClCrearRutaE>();

            for (int i = 0; i < dtRutaMu.Rows.Count; i++)
            {
                ClCrearRutaE Ramunicipio = new ClCrearRutaE();
                Ramunicipio.NombreTM = dtRutaMu.Rows[i]["Nombre"].ToString();
                Ramunicipio.DescripcionTM = dtRutaMu.Rows[i]["Descripcion"].ToString();
                //Ramunicipio.idRutaMr = int.Parse(dtRutaMu.Rows[i]["idRuta"].ToString());
                Ramunicipio.IdMunicipio = int.Parse(dtRutaMu.Rows[i]["idMunicipio"].ToString());
                Ramunicipio.TituloComentario = dtRutaMu.Rows[i]["TituloComentario"].ToString();
                Ramunicipio.Comentario = dtRutaMu.Rows[i]["Comentario"].ToString();
                Ramunicipio.Imagen = dtRutaMu.Rows[i]["Imagen"].ToString();

                RutaMuLis.Add(Ramunicipio);
            }

            return RutaMuLis;
        }

        public int comentariosRM(ClCrearRutaE Comentario)
        {
            string insertCome = "INSERT INTO RutaMunicipio(TituloComentario, Comentario)" + "VALUES('" + Comentario.TituloComentario + "','" + Comentario.Comentario + "')";
            ClProcesosSQL comen = new ClProcesosSQL();
            int squsu = comen.mtdIUDconect(insertCome);
            return squsu;

        }








    }
}