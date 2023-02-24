using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAdminDashBoardProject6.AdminDash
{
    public partial class WaitingOrgDon : System.Web.UI.Page
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
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.CompareTo("Accepted") == 0)
            {
                int productID = Convert.ToInt32(GridView1.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                string query = $"Update OrgDon set OrStatus='Accept' where DonID={productID}";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();



                string query1 = $"select * from OrgDon where DonID={productID}";
                SqlCommand rolecomman1d = new SqlCommand(query1, Con);
                SqlDataReader re = rolecomman1d.ExecuteReader();
                while(re.Read())
                {
                    Session["DonName"]= re[2].ToString();
                    Session["DonDesc"]= re[3].ToString();
                    Session["DonCate"]= re[4].ToString();
                    Session["DonSta"]= re[5].ToString();
                    Session["Image"]= re[6].ToString();
                    Session["Quantity"]= re[7].ToString();
                    Session["OrStatus"]= re[8].ToString();
                }
                Con.Close();


                var connectionString2 = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con2 = new SqlConnection(connectionString2);
                Con2.Open();

                string ser = $"insert into Services(ProviderID,ServiceName,Description,Image,Status,CategoryName,Quantity,LeftQuantity,DonationStatus)" +
                    $" values(@ProviderID,@ServiceName,@Description,@Image,@Status,@CategoryName,@Quantity,@LeftQuantity,@DonationStatus);";
                SqlCommand sercommand = new SqlCommand(ser, Con2);

                sercommand.Parameters.AddWithValue("@ProviderID", "6cafe636-ccd6-4d16-852e-62f8b06e05a4");
                sercommand.Parameters.AddWithValue("@ServiceName", Session["DonName"].ToString());
                sercommand.Parameters.AddWithValue("@Description", Session["DonDesc"].ToString());
                sercommand.Parameters.AddWithValue("@Image", Session["Image"].ToString());
                sercommand.Parameters.AddWithValue("@Status", "Accept");
                sercommand.Parameters.AddWithValue("@CategoryName", Session["DonCate"].ToString());
                sercommand.Parameters.AddWithValue("@Quantity", Session["Quantity"].ToString());
                sercommand.Parameters.AddWithValue("@LeftQuantity", Session["Quantity"].ToString());
                sercommand.Parameters.AddWithValue("@DonationStatus", Session["DonSta"].ToString());

                sercommand.ExecuteNonQuery();
                Con2.Close();
                Response.Redirect("WaitingOrgDon.aspx");
            }

            else if (e.CommandName.CompareTo("Rejected") == 0)
            {

                int productID = Convert.ToInt32(GridView1.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                string query = $"Update OrgDon set OrStatus='Reject' where DonID={productID}";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();
                Con.Close();
                Response.Redirect("WaitingOrgDon.aspx");
            }

        }

      
    }
}