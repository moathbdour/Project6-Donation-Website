using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Project6v2
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string catCommand = " select * from Services where status='Accept' and CategoryName =";
                int leng = catCommand.Length;
                // filterContainer.InnerHtml = "   <span class=\"label label-info pull-left\">Filter:</span>\r\n                        <span class=\"label label-info pull-right\">clear</span> <br />";
                for (int i = 0; i < CheckBoxList1.Items.Count; i++)
                {
                    if (CheckBoxList1.Items[i].Selected)
                    {

                        //  filterContainer.InnerHtml += $"  <span class=\"label label-info\">{CheckBoxList1.Items[i].Value.ToString()}</span>";
                        catCommand += $"'{CheckBoxList1.Items[i].Value.ToString()}' or CategoryName=";
                    }
                }
                if (catCommand.ToCharArray()[catCommand.Length - 1] == '=')
                {
                    catCommand = catCommand.Substring(0, catCommand.Length - 18) ;
                }
                Session["car"] = catCommand.ToString();


                if (DropDownList1.SelectedValue != "Sort")
                {
                    // filterContainer.InnerHtml += $"  <span class=\"label label-danger\">{DropDownList1.Text}</span>";

                }


                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand cmd;
                if (Session["car"] != null && Session["car"].ToString().Length != leng)
                {
                    if (DropDownList1.SelectedValue != "Sort")
                    {
                        cmd = new SqlCommand($"{Session["car"].ToString()} ORDER BY ServiceName {DropDownList1.SelectedValue.ToString()}", connection);
                    }
                    else
                    {
                        cmd = new SqlCommand($"{Session["car"].ToString()}", connection);


                    }
                }
                else
                {
                    if (DropDownList1.SelectedValue != "Sort")
                    {
                        cmd = new SqlCommand($"select * from Services where status='Accept' ORDER BY ServiceName {DropDownList1.SelectedValue.ToString()}", connection);
                    }
                    else
                    {
                        cmd = new SqlCommand($"select * from Services where status='Accept'", connection);

                    }
                }

                SqlDataReader reader = cmd.ExecuteReader();

                ListView.InnerHtml = "";
                Cards.InnerHtml = "";


                while (reader.Read())
                {
                    string imgpath = reader[4].ToString();
                    imgpath=".." +imgpath.Substring(1,imgpath.Length - 1);
                    Cards.InnerHtml +=
                        $"<div class=\"col-lg-3 col-md-6 col-12\" >" +
                           $"<div class=\"single-product shadow\"  style=\"border:1px solid #39B5E0;padding:2px;height:400px;\">" +
                                      $"<div class=\"product-img\">" +
                                     $"<img class=\"default-img\" style=\" height:249px; min-height:240px; \"  src=\"{imgpath}\" alt=\"#\">" +
                                       $"<div class=\"button-head\">" +
                                          $"<div class=\"product-action\">" +
                                               $"<a onclick='modlar(\"{imgpath}\",\"{reader[2]}\",\"{reader[0]}\",\"{reader[9]}\",\"{reader[3]}\" , this)' data-toggle=\"modal\" data-target=\"#exampleModal\" title=\"Quick View\" href=\"#\" class=\"btn\" style=\"     text-align: left;\r\n    font-size: 12px;\r\n    font-weight: 600;\r\nwidth:116.05px;height:39.6px;    text-transform: uppercase;\r\n    line-height: 1;\r\n background-color:#06283D;top:0;color:white;   display: inline-block\">Request</a>" +
                                             $"</div>" +
                                          $"<div class=\"product-action-2\">" +
                                               $"<a class=\"btn\" href='SingleDonation?donationid={reader[0]}' style=\"color:white;background-color:#06283D\">Details</a>" +
                                          $"</div>" +
                                        $"</div>" +
                                       $"</div>" +

                                $"<div class=\"product-content\" style='padding-left:10px;'>" +
                                   $"<h3>{reader[2]}</h3>" +
                                    $"<div class=\"product-price\">" +
                                        $"<span>Condition:{reader[10]}</span>" +
                                    $"</div>" +
                                $"</div>" +
                            $"</div>" +
                        $"</div>";



                }


                Grid.Attributes.Add("class", "active");
                grid = true;
                list = false;
                List.Attributes.Clear();
                connection.Close();
            }




        }
        protected void goToDetails(object sender, EventArgs e)
        {
            Button thisbtn = (Button)sender;


            Response.Redirect($"users\\singleDonation.aspx?donationid={thisbtn.ID.Split('-')[1]}");
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (list == true)
            {
                ItemView2_Click(null, EventArgs.Empty);
            }
            if (grid == true)
            {
                ItemView1_Click(null, EventArgs.Empty);
            }



        }

        protected void adad(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_DataBound(object sender, EventArgs e)
        {

            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {

                if (CheckBoxList1.Items[i].Text == "0")
                {
                    CheckBoxList1.Items[i].Enabled = false;

                    CheckBoxList1.Items[i].Text = $"<span style='color:grey';>{CheckBoxList1.Items[i].Value} </span> <span class=\"badge-info pull-right\" style='width:10%;position:absolute;right:2%;text-align:center;background-color:grey;'>{CheckBoxList1.Items[i].Text.ToString()}</span>";
                    CheckBoxList1.Items[i].Attributes.Add("style", "color:grey");
                }
                else
                {
                    CheckBoxList1.Items[i].Text = $"{CheckBoxList1.Items[i].Value}  <span class=\"badge-secondary pull-right\" style='width:10%;position:absolute;right:2%;text-align:center;background-color:#39B5E0'>{CheckBoxList1.Items[i].Text.ToString()}</span>";

                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (list == true)
            {
                ItemView2_Click(null, EventArgs.Empty);
            }
            if (grid == true)
            {
                ItemView1_Click(null, EventArgs.Empty);
            }


        }

        protected void PostRequest_Click(object sender, EventArgs e)
        {
            if (User.Identity.GetUserId() == null)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"fail(\"\" ,\"Please log in first\");", true);

            }
            else
            {
                Session["id"] = User.Identity.GetUserId();
            

            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand($"insert into Orders values(@DonationId, @BenId , @Date , @OrderStatus , @Quantity)", connection);
            command.Parameters.AddWithValue("@DonationId", HiddenField1.Value.ToString());
            command.Parameters.AddWithValue("@BenId", $"{Session["id"]}");
            command.Parameters.AddWithValue("@Date", DateTime.Now.ToString());
            command.Parameters.AddWithValue("@Quantity", TextBox1.Text);
            command.Parameters.AddWithValue("@OrderStatus", "wait");
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message(\" {TextBox1.Text}\" ,\"{HiddenField2.Value.ToString()}\");", true);

            }
        }

        protected void ItemView1_Click(object sender, EventArgs e)
        {

            string catCommand = " select * from Services where status='Accept' and CategoryName =";
            int leng = catCommand.Length;
            // filterContainer.InnerHtml = "   <span class=\"label label-info pull-left\">Filter:</span>\r\n                        <span class=\"label label-info pull-right\">clear</span> <br />";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {

                    //  filterContainer.InnerHtml += $"  <span class=\"label label-info\">{CheckBoxList1.Items[i].Value.ToString()}</span>";
                    catCommand += $"'{CheckBoxList1.Items[i].Value.ToString()}' or CategoryName='";
                }
            }
            if (catCommand.ToCharArray()[catCommand.Length - 1] == '\'')
            {
                catCommand = catCommand.Substring(0, catCommand.Length - 17)  ;
            }
            //else
            //{
            //    catCommand = catCommand.Substring(0, catCommand.Length - 18);
            //}
            Session["car"] = catCommand.ToString();

            



            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand cmd;
            if (Session["car"] != null && Session["car"].ToString().Length != leng)
            {
                if (DropDownList1.SelectedValue != "Sort")
                {
                    cmd = new SqlCommand($" { Session["car"].ToString()} ORDER BY ServiceName {DropDownList1.SelectedValue.ToString()}", connection);
                }
                else
                {
                    cmd = new SqlCommand($"{Session["car"].ToString()}", connection);


                }
            }
            else
            {
                if (DropDownList1.SelectedValue != "Sort")
                {
                    cmd = new SqlCommand($"select * from Services where status='Accept' ORDER BY ServiceName {DropDownList1.SelectedValue.ToString()}", connection);
                }
                else
                {
                    cmd = new SqlCommand($"select * from Services where status='Accept'", connection);

                }
            }

            SqlDataReader reader = cmd.ExecuteReader();

            ListView.InnerHtml = "";
            Cards.InnerHtml = "";


            while (reader.Read())
            {
                string imgpath = reader[4].ToString();
                imgpath = ".." + imgpath.Substring(1, imgpath.Length - 1);

                Cards.InnerHtml +=
                        $"<div class=\"col-lg-3 col-md-6 col-12\" >" +
                           $"<div class=\"single-product shadow\"  style=\"border:1px solid #39B5E0;padding:2px;height:400px;\">" +
                                      $"<div class=\"product-img\">" +
                                     $"<img class=\"default-img\" style=\" height:249px; min-height:240px; \" src=\"{imgpath}\" alt=\"#\">" +
                                       $"<div class=\"button-head\">" +
                                          $"<div class=\"product-action\">" +
                                $"<a onclick='modlar(\"{imgpath}\",\"{reader[2]}\",\"{reader[0]}\",\"{reader[9]}\",\"{reader[3]}\", this)' data-toggle=\"modal\" data-target=\"#exampleModal\" title=\"Quick View\" href=\"#\" class=\"btn\" style=\"     text-align: left;\r\n    font-size: 12px;\r\n    font-weight: 600;\r\nwidth:116.05px;height:39.6px;    text-transform: uppercase;\r\n    line-height: 1;\r\n background-color:#06283D;top:0;color:white;   display: inline-block\">Request</a>" +

                                             $"</div>" +
                                          $"<div class=\"product-action-2\">" +
                                               $"<a class=\"btn\" href='SingleDonation.aspx?donationid={reader[0]}' style=\"color:white;background-color:#06283D\">Details</a>" +
                                          $"</div>" +
                                        $"</div>" +
                                       $"</div>" +

                                $"<div class=\"product-content\" style='padding-left:10px;'>" +
                                   $"<h3>{reader[2]}</h3>" +
                                    $"<div class=\"product-price\">" +
                                        $"<span>Condition:{reader[10]}</span>" +
                                    $"</div>" +
                                $"</div>" +
                            $"</div>" +
                        $"</div>";




            }


            Grid.Attributes.Add("class", "active");
            grid = true;
            list = false;
            List.Attributes.Clear();







            connection.Close();
        }

        protected void ItemView2_Click(object sender, EventArgs e)
        {

            string catCommand = " select * from Services where  status='Accept' and CategoryName =";
            int leng = catCommand.Length;
            // filterContainer.InnerHtml = "   <span class=\"label label-info pull-left\">Filter:</span>\r\n                        <span class=\"label label-info pull-right\">clear</span> <br />";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {

                    //  filterContainer.InnerHtml += $"  <span class=\"label label-info\">{CheckBoxList1.Items[i].Value.ToString()}</span>";
                    catCommand += $"'{CheckBoxList1.Items[i].Value.ToString()}' or CategoryName='";
                }
            }
            if (catCommand.ToCharArray()[catCommand.Length - 1] == '\'')
            {
                catCommand = catCommand.Substring(0, catCommand.Length - 17);
            }
            //else
            //{
            //    catCommand = catCommand.Substring(0, catCommand.Length - 18);
            //}
            Session["car"] = catCommand.ToString();


            if (DropDownList1.SelectedValue != "Sort")
            {
                // filterContainer.InnerHtml += $"  <span class=\"label label-danger\">{DropDownList1.Text}</span>";

            }


            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand cmd;
            if (Session["car"] != null && Session["car"].ToString().Length != leng)
            {
                if (DropDownList1.SelectedValue != "Sort")
                {
                    cmd = new SqlCommand($"{Session["car"].ToString()} ORDER BY ServiceName {DropDownList1.SelectedValue.ToString()}", connection);
                }
                else
                {
                    cmd = new SqlCommand($"{Session["car"].ToString()}", connection);


                }
            }
            else
            {
                if (DropDownList1.SelectedValue != "Sort")
                {
                    cmd = new SqlCommand($"select * from Services where status='Accept' ORDER BY ServiceName {DropDownList1.SelectedValue.ToString()}", connection);
                }
                else
                {
                    cmd = new SqlCommand($"select * from Services where status='Accept'", connection);

                }
            }

            SqlDataReader reader = cmd.ExecuteReader();

            ListView.InnerHtml = "";
            Cards.InnerHtml = "";

            while (reader.Read())
            {
                string imgpath = reader[4].ToString();
                imgpath = ".." + imgpath.Substring(1, imgpath.Length - 1);
                ListView.InnerHtml += $" <div class=\"col-md-12\" style='margin-bottom:20px'>\r\n  " +
                    $"          <div class=\"row p-2 bg-white\" style=\"border:2px solid #39B5E0\">\r\n " +
                    $"               <div class=\"col-md-3 mt-1\">" +
                    $"<img class=\"img-fluid img-responsive rounded product-image\" style=\" height:249px; min-height:240px; \" src=\"{imgpath}\">" +
                    $"</div>\r\n                <div class=\"col-md-6 mt-1\">\r\n            " +
                    $"        <h5>{reader[2]}</h5>\r\n          " +
                    $"          <div class=\"d-flex flex-row\">\r\n             " +
                    $"           <span>Quantity: {reader[8]}</span>\r\n     " +
                    $"               </div>\r\n                  " +
                    $"  <div class=\"mt-1 mb-1 spec-1\"><span></span><span class=\"dot\">" +
                    $"</span><span></span><span class=\"dot\"></span><span><br></span></div>\r\n    " +
                    $"                <div class=\"mt-1 mb-1 spec-1\"><span>{reader[3]}</span><span class=\"dot\">" +
                    $"</span><span> </span><span class=\"dot\"></span><span> <br></span></div>\r\n      " +
                    $"              <p class=\"text-justify text-truncate para mb-0\"><br><br></p>\r\n      " +
                    $"          </div>\r\n                <div class=\"align-items-center align-content-center col-md-3 border-left mt-1\">\r\n                \r\n                 \r\n                    <div class=\"d-flex flex-column mt-4\">\r\n\t\t\t\t\t\t" +
                    $"<a class=\"btn btn-primary btn-sm\" href='SingleDonation.aspx?donationid={reader[0]}' style=\"color:white\">Details</a>\r\n               <a onclick=\"modlar('{imgpath}','{reader[2]}','{reader[0]}','{reader[9]}','{reader[3]}')\" data-toggle=\"modal\" data-target=\"#exampleModal\" title=\"Quick View\"  href = \"#\" class=\"btn btn-outline-primary btn-sm mt-2\" style=\"color:white\">Request</a>\r\n\r\n " +
                    $"                   </div>\r\n                </div>\r\n            </div>\r\n           \r\n</div>";
            }
            List.Attributes.Add("class", "active");
            list = true;
            grid = false;
            Grid.Attributes.Clear();
            connection.Close();
        }


        static bool list = false;
        static bool grid = false;
    }
}