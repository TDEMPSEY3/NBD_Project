using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace NBD_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //declare store and manager to log in user
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
            //call manager find method to check for user with valid password
            IdentityUser user = manager.Find(txtUser.Text, txtPass.Text);
            
            if (user == null)
            {
                lblMessage.Text = " Username or password is incorrect";
            }
            else
            {
                //sign in valid user and redirect to welcome page
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(userIdentity);
                Response.Redirect("~/HomePage.aspx");
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
        }
    }
}