using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NBD_Project
{
    public partial class ProductionDailyReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //make sure user is logged into the system
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/LogIn.aspx");
            else
                lblWelcome.Text += " " + User.Identity.Name;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            authenticationManager.SignOut();

            Response.Redirect("~/Login.aspx");

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MaterialPanel.Visible = false;
            LaborPanel.Visible = false;
            if (DropDownList1.SelectedIndex==1)
            {
                MaterialPanel.Visible = true;
            }
            if(DropDownList1.SelectedIndex==2)
            {
                LaborPanel.Visible = true;
            }
        }

        
    }
}