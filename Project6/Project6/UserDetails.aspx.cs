﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void bb_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["f"] == "1") { 
            Response.Redirect("UsersInfo.aspx?c=c");
            }
            else Response.Redirect("UsersInfo.aspx?c=p");

        }
    }
}