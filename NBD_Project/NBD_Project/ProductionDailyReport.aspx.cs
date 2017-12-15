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
            {
                if (!IsPostBack)
                    lblWelcome.Text += " " + User.Identity.Name;
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            authenticationManager.SignOut();

            Response.Redirect("~/Login.aspx");

        }

       
        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HomePage.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PDRResults.aspx");
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ProductionDailyReportPage.aspx");
        }

        protected void BtnAdd2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ProductionDailyReportPage.aspx");
        }
    }
}