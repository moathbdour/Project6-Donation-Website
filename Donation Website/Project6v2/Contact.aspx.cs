using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6v2
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add("ashrafshwayat16@gmail.com");
            mail.From = new MailAddress($"{TextEmail.Text}");
            mail.Subject = "Contact";

            mail.Body = message.InnerText;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587; // 25 465
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("ashrafshwayat16", "nepbwyehjwdtxlvu");
            smtp.Send(mail);
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message();", true);



            SqlDataSource1.InsertParameters["Name"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["Email"].DefaultValue = TextEmail.Text;
            SqlDataSource1.InsertParameters["maessage"].DefaultValue = message.InnerText;
            SqlDataSource1.Insert();
        }
    }

}