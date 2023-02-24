using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6v2
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FileUpload DL3 = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;

            SqlDataSource1.UpdateParameters["userimages"].DefaultValue = DL3.FileName;

            SqlDataSource1.Update();
        }
    }
}