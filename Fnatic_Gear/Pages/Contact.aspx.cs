using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fnatic_Gear.Pages
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
           
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("Fnaticbn@gmail.com", "Fnaticbn@gmail.com");
            msg.Subject = TxtSubject.Text;
            msg.Body = TxtMsg.Text;

            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;
            
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("Fnaticbn@gmail.com", "Fnatic$1234");
            smtpClient.Credentials = credentials;

            try
            {
                smtpClient.Send(msg);
                LitErrorMsg.Text = "<p> Success ! Mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                LitErrorMsg.Text = "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }

        }
    }
}