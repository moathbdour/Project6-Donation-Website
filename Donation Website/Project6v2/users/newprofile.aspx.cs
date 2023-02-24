using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6v2.users
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (User.Identity.GetUserId() == null)
            {
                Response.Redirect("https://localhost:44300/Account/Login");
            }
            else
            {
                Session["id"] = User.Identity.GetUserId();
            }
            
                if (!IsPostBack) {

                Session["id"] = User.Identity.GetUserId();
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9HB31TL;Initial Catalog=Project6;Integrated Security=True");
            SqlCommand command = new SqlCommand($"SELECT [Email], [UserStatus]  FROM [AspNetUsers] where id='{Session["id"]}'", conn);
                SqlCommand command9 = new SqlCommand($"SELECT [fullname], [photo],[phoneNumber],[city]  FROM [userdetails] where id='{Session["id"]}'", conn);
                conn.Open();
            SqlDataReader moath = command.ExecuteReader();
            while (moath.Read())
            {
                //username.InnerText = moath[5].ToString();
                //Image1.ImageUrl = moath[2].ToString();
                //city.InnerText = moath[4].ToString();
                state.InnerText = moath[1].ToString();
                //username2.InnerText = moath[5].ToString();
                P4.InnerText = moath[0].ToString();
                email2.InnerText = moath[0].ToString();
                //phone.InnerText = moath[1].ToString();
                //city2.InnerText = moath[4].ToString();
                //editphone.Text = moath[1].ToString();
                //editusername.Text = moath[5].ToString();
                //if (moath[4].ToString() != null && moath[4].ToString() != string.Empty)
                //{
                //    DropDownList1.SelectedValue = moath[4].ToString();
                //}
              
                
                
           

                }
                conn.Close();
                conn.Open();
                SqlDataReader moath2 = command9.ExecuteReader();
                while (moath2.Read())
                {
                    username.InnerText = moath2[0].ToString();
                    Image1.ImageUrl = moath2[1].ToString();
                    city.InnerText = moath2[3].ToString();
                    username2.InnerText = moath2[0].ToString();
                    phone.InnerText = moath2[2].ToString();
                    city2.InnerText = moath2[3].ToString();
                    editphone.Text = moath2[2].ToString();
                    editusername.Text = moath2[0].ToString();
                    if (moath2[3].ToString() != " ")
                    {
                        DropDownList1.SelectedValue = moath2[3].ToString();
                    }
                }

                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
                Session["id"]=User.Identity.GetUserId();
            string commandd = $"SELECT [OrderID], Orders.[ServiceID],[Email],[ServiceName], [CustomerID],[fullname], [OrderTime], [OrderStatus],[Image], [SerQuantity],userdetails.[phoneNumber] FROM [Orders] Inner join  AspNetUsers on Orders.CustomerID = AspNetUsers.Id left join userdetails on Orders.CustomerID=userdetails.ID left join Services on Services.ServiceID=Orders.ServiceID where Orders.CustomerID='{Session["id"]}' And OrderStatus='Accept'  ";
            string commandd3 = $"SELECT [OrderID], Orders.[ServiceID],[Email],[ServiceName], [CustomerID],[fullname], [OrderTime], [OrderStatus],[Image], [SerQuantity],userdetails.[phoneNumber] FROM [Orders]" +
                    $" Inner join  AspNetUsers on Orders.CustomerID = AspNetUsers.Id left join userdetails on Orders.CustomerID=userdetails.ID left join Services on Services.ServiceID=Orders.ServiceID where Orders.CustomerID='{Session["id"]}' And OrderStatus='Reject' ";
            SqlCommand command2 = new SqlCommand(commandd, Con);
            SqlCommand command3 = new SqlCommand(commandd3, Con);
            Con.Open();
            SqlDataReader reader= command2.ExecuteReader();
            if (reader.Read())

            {
                    mydiv.InnerHtml = "";

                string mm = reader[8].ToString();
                mm = mm.Substring(1);
                mm = ".." + mm;
                mydiv.InnerHtml += $"  <hr /> \r\n                <div class=\"col-9\" >\r\n   " +
                    $"                 <p class=\"mb-1\" style=\"font-size: 0.8rem;\"> " +
                    $" Donation Name : {reader[3]} </p>\r\n        " +
                  
                    $"             <p class=\"mb-1\" style=\"font-size:0.8rem;\"> Doner phone: {reader[10]}</p>\r\n    " +
                    $"          </div>\r\n                    <div class=\"col-2\">\r\n                " +
                    $"        <img alt=\"\" src=\"{mm}\" height=\"70px\"  />\r\n      " +
                    $"              </div>\r\n                    <hr />";
                while (reader.Read())
            {

                string mm2 = reader[8].ToString();
                mm2=mm2.Substring(1);
                mm2 = ".." + mm2;
                mydiv.InnerHtml += $"  <hr /> \r\n                <div class=\"col-9\" >\r\n   " +
                    $"                 <p class=\"mb-1\" style=\"font-size: 0.8rem;\"> " +
                    $" Donation Name : {reader[3]} </p>\r\n        " +
                  
                    $"             <p class=\"mb-1\" style=\"font-size:0.8rem;\"> Doner phone: {reader[10]}</p>\r\n    " +
                    $"          </div>\r\n                    <div class=\"col-2\">\r\n                " +
                    $"        <img alt=\"\" src=\"{mm2}\" height=\"70px\"  />\r\n      " +
                    $"              </div>\r\n                    <hr />";
                                
            }
            }
            else
            {
                    mydiv.InnerHtml = "";
                        mydiv.InnerHtml = "<h6>There are no Accepted  donations </h6>";
            };
            Con.Close();
            Con.Open();
            SqlDataReader reader2 = command3.ExecuteReader();


            if (reader2.Read())

            {
                    Div1.InnerHtml = "";

                string mm = reader2[8].ToString();
                mm = ".."+ mm.Substring(1,mm.Length-1);
               
                    Div1.InnerHtml += $"  <hr /> \r\n                <div class=\"col-9\" >\r\n   " +
                    $"                 <p class=\"mb-1\" style=\"font-size: 0.8rem;\"> " +
                    $" Donation Name : {reader2[3]} </p>\r\n        " +
                   
                    $"             <p class=\"mb-1\" style=\"font-size:0.8rem;\"> Doner phone: {reader2[10]}</p>\r\n    " +
                    $"          </div>\r\n                    <div class=\"col-2\">\r\n                " +
                    $"        <img alt=\"\" src=\"{mm}\" height=\"70px\"  />\r\n      " +
                    $"              </div>\r\n                    <hr />";
                while (reader2.Read())
                {

                    string mm2 = reader2[8].ToString();
                    mm2 = mm2.Substring(1);
                    mm2 = ".." + mm2;
                        Div1.InnerHtml += $"  <hr /> \r\n                <div class=\"col-9\" >\r\n   " +
                        $"                 <p class=\"mb-1\" style=\"font-size: 0.8rem;\"> " +
                        $" Donation Name : {reader2[3]} </p>\r\n        " +
                       
                        $"             <p class=\"mb-1\" style=\"font-size:0.8rem;\"> Doner phone: {reader2[10]}</p>\r\n    " +
                        $"          </div>\r\n                    <div class=\"col-2\">\r\n                " +
                        $"        <img alt=\"\" src=\"{mm2}\" height=\"70px\"  />\r\n      " +
                        $"              </div>\r\n                    <hr />";

                }
            }
            else
            {
                    Div1.InnerHtml = "";
                    Div1.InnerHtml = "<h6>There are no Rejected donations </h6>";
            };
            Con.Close();
                
              
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            Panel1.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/users/newprofile.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            string path1 = Server.MapPath("~/images/");
            string image = Image1.ImageUrl;
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(path1 + Path.GetFileName(FileUpload1.FileName));
                image= "~/images/" + Path.GetFileName(FileUpload1.FileName);
              
            }


            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            string query = $"UPDATE [userdetails] SET [phoneNumber] = @PhoneNumber, [photo] = @userimages, [City] = @City, [fullname] = @UserName WHERE [id] = '{User.Identity.GetUserId()}'";
            SqlCommand rolecommand = new SqlCommand(query, Con);
            rolecommand.Parameters.AddWithValue("@PhoneNumber", editphone.Text);
            rolecommand.Parameters.AddWithValue("@userimages", image);
            rolecommand.Parameters.AddWithValue("@City", DropDownList1.SelectedValue);
            rolecommand.Parameters.AddWithValue("@UserName", editusername.Text);
          

            rolecommand.ExecuteNonQuery();
            Con.Close();

            //SqlConnection conn = new SqlConnection("Data Source=DESKTOP-21PN5QP;Initial Catalog=Project6;Integrated Security=True");
            //conn.Open();
            //SqlCommand up = new SqlCommand("UPDATE [AspNetUsers] SET [PhoneNumber] = @PhoneNumber, [userimages] = @userimages, [City] = @City, [UserName] = @UserName WHERE [Id] = @Id",conn);

            //up.Parameters.AddWithValue("@PhoneNumber", editphone.Text);
            //up.Parameters.AddWithValue("@userimages", image);
            //up.Parameters.AddWithValue("@City", DropDownList1.SelectedValue);
            //up.Parameters.AddWithValue("@UserName", editusername.Text);
            //up.Parameters.AddWithValue("@ID", Session["id"].ToString());
            //up.ExecuteNonQuery();
            //conn.Close();


            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message();", true);
            Response.Redirect("/users/newprofile.aspx");
        }
        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message();", true);
            DropDownList DL = GridView2.Rows[e.RowIndex].FindControl("DropDownList6") as DropDownList;

            SqlDataSource2.UpdateParameters["OrderStatus"].DefaultValue = DL.SelectedValue; ;

            SqlDataSource2.Update();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            string query = $"select Image FROM Services where ProviderID='" + Session["DIO"] ;
            SqlCommand rolecommand = new SqlCommand(query, Con);
            string IMAGE = rolecommand.ExecuteScalar().ToString();

            FileUpload fileUpload = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;


            if (fileUpload.FileName != null && fileUpload.FileName != string.Empty)
            {
                fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("img"), fileUpload.FileName));
                SqlDataSource1.UpdateParameters["Image"].DefaultValue = "~/img/" + fileUpload.FileName;
            }
            else
            {
                SqlDataSource1.UpdateParameters["Image"].DefaultValue = IMAGE;
            }
            DropDownList DL = GridView1.Rows[e.RowIndex].FindControl("DropDownList5") as DropDownList;

            SqlDataSource1.UpdateParameters["CategoryName"].DefaultValue = DL.SelectedValue; ;

            SqlDataSource1.Update();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //foreach(TableRow xx in GridView1.Rows)
            //{
            //    xx.Cells[7].Text = "Accept";
            //    if (xx.Cells[5].Text == "1")
            //    {
            //        xx.Cells[5].Text = "Accept";
            //    }
            //    //else if (xx.Cells[5].Text == "0")
            //    //{
            //    //    xx.Cells[5].Text = "Waiting";

            //    //}
            //    //else if (xx.Cells[5].Text == "3")
            //    //{
            //    //    xx.Cells[5].Text = "Rejected";

            //    //}
            //}

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}