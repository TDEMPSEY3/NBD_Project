using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NBDdatabase;
using NBDdatabase.NBD_SBDataSetTableAdapters;


namespace NBD_Project
{
    public partial class Search : System.Web.UI.Page
    {
        private static NBD_SBDataSet dsNBD;
        private static DataRow[] rows;

        static Search()
        {
            
            dsNBD = new NBD_SBDataSet();

            CLIENTTableAdapter daClient = new CLIENTTableAdapter();

            NBDstaff daStaff = new NBDstaff();
            PROJECTTableAdapter daProject = new PROJECTTableAdapter();
            LabourRequirementsTableAdapter daLabour = new LabourRequirementsTableAdapter();
            MaterialReqMaterialsTableAdapter daMRMaterials = new MaterialReqMaterialsTableAdapter();
            MaterialReqPlantTableAdapter daMRPlant = new MaterialReqPlantTableAdapter();
            MaterialReqPotteryTableAdapter daMRPottery = new MaterialReqPotteryTableAdapter();
           
            try
            {
                daClient.Fill(dsNBD.CLIENT);
                daStaff.Fill(dsNBD.NBDstaff);
                daProject.Fill(dsNBD.PROJECT);
                             
            }
            catch { }
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

            createDiv.Visible = false;
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            authenticationManager.SignOut();

            Response.Redirect("~/Login.aspx");
        }

        protected void ddlBid_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlBid.SelectedValue == "Between")
            {
                txtBid2.Visible = true;
                lblAnd.Visible = true;
            }
            else
            {
                txtBid2.Visible = false;
                lblAnd.Visible = false;
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            searchDiv.Visible = false;
            createDiv.Visible = true;
        }

        protected void btnCreateClient_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ClientPage.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (dsNBD.CLIENT.Count > 0)
            {
                string criteria = GetDesignBid();
                rows = (criteria.Length > 0) ? dsNBD.CLIENT.Select(criteria) : dsNBD.CLIENT.Select();
                DisplayBids();
            }
          
        }

        private string GetDesignBid()
        {
            string criteria = "";
            criteria = (this.txtName.Text.Length > 0) ? "cliName LIKE '" + txtName.Text + "'*" : " ";
            criteria += (this.ddlBid.SelectedIndex == 0 && this.txtBid1.Text.Length > 0 && criteria.Length > 0) ? "WHERE projEstCost > " + this.txtBid1.Text : " ";
            criteria += (this.ddlBid.SelectedIndex == 1 && this.txtBid1.Text.Length > 0 && criteria.Length > 0) ? "WHERE projEstCost < " + this.txtBid1.Text : " ";
            criteria += (this.ddlBid.SelectedIndex == 2 && this.txtBid1.Text.Length > 0 && this.txtBid2.Text.Length > 0 && criteria.Length > 0) ? "WHERE projEstCost Between " + this.txtBid1.Text + "AND" + this.txtBid2.Text : " ";
            criteria += (this.txtDateStart.Text.Length > 0 && this.txtDateEnd.Text.Length > 0 && criteria.Length > 0) ? "WHERE projBidDate BETWEEN '" + txtDateStart.Text + "' AND '" + txtDateEnd.Text + "'" : " ";
            return criteria;
        }

        private static bool refresh = true;
        
        private void DisplayBids()
        {
            refresh = true;
            this.Clear();
            foreach (DataRow row in rows)
                Label1.Text = "Search Results: " + ((rows.Length > 0) ? rows.Length.ToString() : "0"); ;
                //Link needs to be created to next page in this method
        }

        private void Clear()
        {
            this.txtName.Text = "";
            this.txtBid1.Text = "";
            this.txtBid2.Text = "";
            this.txtDateStart.Text = "";
            this.txtDateEnd.Text = "";
            this.ddlBid.SelectedIndex = -1;
            
        }
    }
}