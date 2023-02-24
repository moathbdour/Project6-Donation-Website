using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAdminDashBoardProject6.AdminDash
{
    public partial class OrgRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Dashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashBoard.aspx");

        }
        protected void Logout_Click(object sender, EventArgs e)
        {

        }
        protected void Beneficiary_Click(object sender, EventArgs e)
        {

            Response.Redirect("BeneficieryINFO.aspx");


        }
        protected void Doners_Click(object sender, EventArgs e)
        {

            Response.Redirect("DonerINFO.aspx");

        }
        protected void Donations_Click(object sender, EventArgs e)
        {
            Response.Redirect("DonationINFO.aspx");



        }
        protected void Waiting_Click(object sender, EventArgs e)
        {

            Response.Redirect("WaitingINFO.aspx");


        }



        protected void ORGdon_Click(object sender, EventArgs e)
        {

            Response.Redirect("OrganizationDon.aspx");


        }

        protected void ORGwait_Click(object sender, EventArgs e)
        {

            Response.Redirect("WaitingOrgDon.aspx");


        }


        protected void Req_Click(object sender, EventArgs e)
        {

            Response.Redirect("OrgRequest.aspx");


        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
              ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message();", true);
            DropDownList DL = GridView1.Rows[e.RowIndex].FindControl("DropDownList1") as DropDownList;

            SqlDataSource2.UpdateParameters["OrderStatus"].DefaultValue = DL.SelectedValue; ;

            SqlDataSource2.Update();
        }
    }
}