using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ADSO_Proyecto_Rutas
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["Usuario"] = "externo";


            Session["Turista"] = "";
            Session["Comerciante"] = "";
            Session["Alcalde"] = "";
            Session["Administrador"] = "";
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Session["Usuario"] = "";
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}