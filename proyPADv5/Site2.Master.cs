﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyPADv5
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inscripcion.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Listado.aspx");
        }
    }
}