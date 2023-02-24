using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAdminDashBoardProject6.AdminDash
{
    public partial class OrgReqDetails : System.Web.UI.Page
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

        protected void bb_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["x"] == "1")
            {
                Response.Redirect("OrgRequest.aspx");
            }
            
        }
    }


}