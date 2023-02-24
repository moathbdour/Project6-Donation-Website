using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6v2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string moath = Session["id"].ToString();
            PlaceHolder2.Visible= false;
            PlaceHolder3.Visible= false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PlaceHolder1.Visible= false;
            PlaceHolder2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            PlaceHolder2.Visible = false;
            PlaceHolder3.Visible=true;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            PlaceHolder2.Visible=false;
            PlaceHolder1.Visible = true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            PlaceHolder3.Visible= false;
            PlaceHolder2.Visible=true;
        }
    }
}