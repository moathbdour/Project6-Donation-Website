using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6v2
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["donationid"] == null  )
            {
               
                Response.Redirect("https://localhost:44300/Account/Login.aspx");
            }
           
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand($"select * from Services where ServiceId = {Request.QueryString["donationid"].ToString()}", connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                DonName.InnerText = reader[2].ToString();
                DonQuantity.InnerText = $"Qantity:{reader[9].ToString()}";
                DonCondition.InnerText = "Condition: Good";
                DonBrief.InnerText = reader[3].ToString();
                DonImg.Attributes.Add("src", $"{reader[4]}");
                DonImg.Attributes.Add("style", $"height:300px;");
                Session["name"] = reader[2].ToString();
            }
            connection.Close();
        }

        protected void PostRequest_Click(object sender, EventArgs e)
        {

            if (Session["id"] == null || Session["id"].ToString() == string.Empty)
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"fail(\"\" ,\"Please log in first\");", true);


            }
            else
            {

                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand($"insert into Orders  values(@DonationId, @BenId , @Date , @OrderStatus , @Quantity)", connection);
                command.Parameters.AddWithValue("@DonationId", Convert.ToInt32(Request.QueryString["donationid"].ToString()));
                command.Parameters.AddWithValue("@BenId", $"{Session["id"].ToString()}");
                command.Parameters.AddWithValue("@Date", DateTime.Now.ToString());
                command.Parameters.AddWithValue("@OrderStatus", "wait");
                command.Parameters.AddWithValue("@Quantity", TextBox1.Text);

                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message(\" {TextBox1.Text}\" ,\"{Session["name"].ToString()}\");", true);
            }


        }
    }
}