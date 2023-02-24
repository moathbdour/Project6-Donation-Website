using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6v2
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "other")
            {
                othh.Visible = true;
            }
            else { othh.Visible = false; }
        }

        protected void send_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message();", true);

            string path1 = Server.MapPath("~/img/");
            FileUpload1.SaveAs(path1 + Path.GetFileName(FileUpload1.FileName));
            string IMG = "~/img/" + Path.GetFileName(FileUpload1.FileName);


            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            string insSERVICE = "insert into OrgPerInfo(OrgName,OrgEmail,OrgPhone,OrgAddress,City) values(@OrgName,@OrgEmail,@OrgPhone,@OrgAddress,@City)";

            SqlCommand ss = new SqlCommand(insSERVICE, Con);
            ss.Parameters.AddWithValue("@OrgName", name.Text);
            ss.Parameters.AddWithValue("@OrgEmail", email.Text);
            ss.Parameters.AddWithValue("@OrgPhone", phone.Text);
            ss.Parameters.AddWithValue("@OrgAddress", address.Text);
            ss.Parameters.AddWithValue("@City", city.SelectedValue);

            ss.ExecuteNonQuery();
            Con.Close();

            var connectionString2 = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con2 = new SqlConnection(connectionString2);
            Con2.Open();
            string don = "insert into OrgDon(DonerPhone,DonName,DonDesc,DonCate,DonSta,Image,Quantity,OrStatus) " +
                "values(@DonerPhone,@DonName,@DonDesc,@DonCate,@DonSta,@Image,@Quantity,@OrStatus)";

            SqlCommand dona = new SqlCommand(don, Con2);
            dona.Parameters.AddWithValue("@DonerPhone", phone.Text);

            dona.Parameters.AddWithValue("@OrStatus", "wait");
            dona.Parameters.AddWithValue("@DonName", DonName.Text);
            dona.Parameters.AddWithValue("@DonDesc", DonDes.Value);
            dona.Parameters.AddWithValue("@Image", IMG);
            dona.Parameters.AddWithValue("@DonSta", DropDownList3.SelectedValue);
            dona.Parameters.AddWithValue("@DonCate", DropDownList1.SelectedValue);
            dona.Parameters.AddWithValue("@Quantity", Quan.Text);
            dona.ExecuteNonQuery();




            Con2.Close();

        }
    }
}