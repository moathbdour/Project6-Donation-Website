using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using Project6.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6.Account
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = FullName.Text, Email = Email.Text,  };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-21PN5QP;Initial Catalog=Project6;Integrated Security=True");
                SqlCommand command = new SqlCommand($" Insert into AspNetUserRoles values ('{user.Id}' , {Convert.ToInt32(RadioButtonList1.SelectedValue)})", conn);
                conn.Open();
                command.ExecuteNonQuery();
                conn.Close();
                //string folderpath = Server.MapPath("~/userimages/");
                //FileUpload1.SaveAs(folderpath + Path.GetFileName(FileUpload1.FileName));
                //SqlCommand command2 = new SqlCommand($"update AspNetUsers set userimages = '~/userimages/{FileUpload1.FileName}' , City='{DropDownList1.SelectedValue}' where Id = '{user.Id}'", conn);
                //conn.Open();
                //command2.ExecuteNonQuery();
                //conn.Close();


                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
            }
        }
    }
}