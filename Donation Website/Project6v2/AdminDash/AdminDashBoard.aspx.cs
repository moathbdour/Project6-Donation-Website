﻿using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject6
{
    public partial class AdminDashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.GetUserId() == null)
            {
                Response.Redirect("../Account/Login.aspx");
            }
            
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            string query = $"select COUNT(*) FROM AspNetUsers";
            SqlCommand rolecommand = new SqlCommand(query, Con);
            string NUMUSER = rolecommand.ExecuteScalar().ToString();
            int x = Convert.ToInt32(NUMUSER);
            x--;
            Session["totalnum"] = x;

            string query2 = $"select COUNT(*) FROM AspNetUsers inner join AspNetUserRoles on Id=UserId and RoleId=2";
            SqlCommand rolecommand2 = new SqlCommand(query2, Con);
            string prov = rolecommand2.ExecuteScalar().ToString();
            Session["provnum"] = prov;


            string query3 = $"select COUNT(*) FROM AspNetUsers inner join AspNetUserRoles on Id=UserId and RoleId=3";
            SqlCommand rolecommand3 = new SqlCommand(query3, Con);
            string use = rolecommand3.ExecuteScalar().ToString();
            Session["usernum"] = use;

            double u = Convert.ToDouble(Session["usernum"]);
            double p = Convert.ToDouble(Session["provnum"]);
            double tot = Convert.ToDouble(Session["totalnum"]);
            double userper = (u / tot) * 100;
            int xxx = Convert.ToInt32(userper);
            double provper = (p / tot) * 100;
            int yyy = Convert.ToInt32(provper);
            /***************************************************************/
            string all = $"select COUNT(*) FROM Services";
            SqlCommand commandall = new SqlCommand(all, Con);
            string NUMALL = commandall.ExecuteScalar().ToString();
            double allD = Convert.ToDouble(NUMALL);
            Session["ALLDon"] = allD;
            /**************************************************************/
            string app = $"select COUNT(*) FROM Services where Status='Accept'";
            SqlCommand commandapp = new SqlCommand(app, Con);
            string NUMApp = commandapp.ExecuteScalar().ToString();
            double appro = Convert.ToDouble(NUMApp);
            Session["approval"] = appro;
            double donaPer = (appro / allD) * 100;
            int IdonaPer = Convert.ToInt32(donaPer);
            /***************************************************************/
            Con.Close();
            //percent1.Attributes.Add("stroke-dasharray", $"{xxx}, 100");
            //firstPercent.InnerText = Convert.ToString(xxx) + "%";

            //percent2.Attributes.Add("stroke-dasharray", $"{IdonaPer}, 100");
            //secPercent.InnerText = Convert.ToString(IdonaPer) + "%";

            //percent3.Attributes.Add("stroke-dasharray", $"{yyy}, 100");
            //thirdPercent.InnerText = Convert.ToString(yyy) + "%";
            //Label6.Text = "The Number Of Users Is : " + Session["usernum"]+ "<br/> <span style='color:red; font-weight:bold'> (" + xxx + " % )</span> ";
            //Label7.Text = "The Number Of Donors Is : " + Session["provnum"] + "<br/> <span style='color:red; font-weight:bold'> (" + yyy + " % )</span>";

            percent1.Attributes.Add("stroke-dasharray", $"{xxx}, 100");
            firstPercent.InnerText = Convert.ToString(xxx) + "%";

            percent2.Attributes.Add("stroke-dasharray", $"{IdonaPer}, 100");
            secPercent.InnerText = Convert.ToString(IdonaPer) + "%";

            percent3.Attributes.Add("stroke-dasharray", $"{yyy}, 100");
            thirdPercent.InnerText = Convert.ToString(yyy) + "%";
            //Label6.Text = "The Number Of Users Is : " + Session["usernum"]+ "<br/> <span style='color:red; font-weight:bold'> (" + xxx + " % )</span> ";
            //Label7.Text = "The Number Of Donors Is : " + Session["provnum"] + "<br/> <span style='color:red; font-weight:bold'> (" + yyy + " % )</span>";
            //BB.Text = u.ToString();
            //DD.Text = p.ToString();
            //DON.Text = appro.ToString();

            NUMbe.Text = u.ToString();
            NUMdr.Text = p.ToString();
            Numdn.Text = appro.ToString();
        }


        protected void Dashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashBoard.aspx");

        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            Response.Redirect("../Default.aspx");
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



     
    }
}




