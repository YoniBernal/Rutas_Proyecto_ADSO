using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SitioWebRutas.Vista
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Vista/Proviniciaa.aspx");
        }

        protected void CrearR_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Vista/Login.aspx");
        }
    }
}