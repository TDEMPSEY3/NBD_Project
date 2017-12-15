using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NBD_Project
{
    public partial class Pending_Approvals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //make sure user is logged into the system
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/LogIn.aspx");
            else
                lblWelcome.Text += " " + User.Identity.Name;

            details.Visible = false;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            authenticationManager.SignOut();

            Response.Redirect("~/Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            details.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            details.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            details.Visible = true;
        }
    }
}