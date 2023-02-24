using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Project6v2.Models;

namespace Project6v2.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            
            if (result.Succeeded)
            {
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();

             

                SqlCommand command = new SqlCommand($"select Id from AspNetUsers where Email= '{Email.Text}' ", Con);
                string userID = command.ExecuteScalar().ToString();
                Con.Close();
                Session["id"]=userID;
                string query1 = $"insert into AspNetUserRoles values('{userID}',{Convert.ToInt32(RadioButtonList1.SelectedValue)})";
                SqlCommand rolecommand1 = new SqlCommand(query1, Con);
                Con.Open();
                rolecommand1.ExecuteNonQuery();
                Con.Close();

                Con.Open();
                string query = $"insert into userdetails values('{Session["id"]}','{FullName.Text}','default.jpg','{PhoneNumber.Text}',' ')";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();
                Con.Close();
                
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                //ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
            //var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            //SqlConnection Con = new SqlConnection(connectionString);

            //Con.Open();
            //Guid g = Guid.NewGuid();
            //SqlCommand command = new SqlCommand($"insert into AspNetUsers values('{g}','{Email.Text}',0,'AP9PN4vXAiCaMdMW++OumMI0Mfvoq1tGvwlDBwPj4GD95aJNAXrHc1jWc5bJG80uTw ==','AIa5VYrpJy2KqO29U','',0,0,1,1,0,'{Email.Text}')", Con);
            //command.ExecuteNonQuery();
            //string query = $"insert into AspNetUserRoles values('{g}',{RadioButtonList1.SelectedValue})";
            //SqlCommand rolecommand = new SqlCommand(query, Con);
            //rolecommand.ExecuteNonQuery();
            //Con.Close();

        }
    }
}


