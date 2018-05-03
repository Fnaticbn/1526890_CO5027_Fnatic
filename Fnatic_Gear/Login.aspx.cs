using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Microsoft.Owin.Security;

namespace Fnatic_Gear
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);


            var user = userManager.Find(TxtUserLog.Text, TxtPassLog.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                LitErrorMsg.Text = "Log-in Successful !";

            }
            else
            {
                LitErrorMsg.Text = "Invalid username or password";
                ;
            }
        }

        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(
                user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString["~/Login.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/Login.aspx"]);
            }

            else
            {
                String userRoles = userManager.GetRoles(user.Id).FirstOrDefault();

                if (userRoles.Equals("Admin"))
                {
                    Response.Redirect("~/Admin/Index.aspx");
                }
            }
        }

       
    }
}