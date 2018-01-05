using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NBDdatabase;
using NBDdatabase.NBD_SBDataSetTableAdapters;
using System.Data;

namespace NBD_Project
{
    public partial class DesignBidResult : System.Web.UI.Page
    {
        private static NBD_SBDataSet dsNBD = new NBD_SBDataSet();
        private static DataRow[] rows;

        static DesignBidResult()
        {

            CLIENTTableAdapter daClient = new CLIENTTableAdapter();
            PROJECTTableAdapter daProject = new PROJECTTableAdapter();

            try
            {
                daClient.Fill(dsNBD.CLIENT);
                daProject.Fill(dsNBD.PROJECT);
            }
            catch (Exception ex)
            {
            }
        }
        
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
            mainDiv.Visible = false;
            
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            authenticationManager.SignOut();

            Response.Redirect("~/Login.aspx");
        }

        private static int clientID = -1;

        protected void btnClient_Click(object sender, EventArgs e)
        {
            if(dsNBD.PROJECT.Count > 0)
            {
                clientID = Convert.ToInt32(ddlClients.SelectedValue);
                rows = (clientID != -1) ? dsNBD.PROJECT.Select("clientID = " + clientID.ToString()) : dsNBD.PROJECT.Select();
                DisplayBids();
            }
            else
            {
                this.lblDesignBids.Text = "No Bids found.";
            }
        }

        private void DisplayBids()
        {
            this.lbBids.Items.Clear();
            foreach(DataRow row in rows)
            {
                this.lbBids.Items.Add(row.ItemArray[1].ToString());
            }

            lblDesignBids.Text = "Design Bids: " + ((rows.Length > 0) ? rows.Length.ToString() : "0");
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
                mainDiv.Visible = true;
        }
    }
}