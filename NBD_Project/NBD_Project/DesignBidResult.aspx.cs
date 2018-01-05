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
        DataRow clientRow;
        DataRow projectRow;
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
            //clientRow = dsNBD.CLIENT.cliNameColumn.ToString();
            //projectRow = dsNBD.PROJECT.projEstStartColumn.ColumnName.ToString();
            lblClientName.Text = clientRow.ItemArray[1].ToString();
            lblBeginDate.Text = projectRow.ItemArray[4].ToString();
            lblComplDate.Text = projectRow.ItemArray[5].ToString();
            lblBid.Text = projectRow.ItemArray[8].ToString();
            //foreach(DataRow row in dsNBD.CLIENT)
            //{
            //    this.DropDownList1.Items.Add(row.ItemArray[1].ToString());
            //}
            //if (this.IsPostBack) return;
            //foreach (DataRow row in dsNBD.CLIENT)
            //{
            //    this.DropDownList1.Items.Add(row.ItemArray[1].ToString());
            //}
            //GetClient();
        }

        //private string GetClient()
        //{
        //    string client = "";
        //    client = "cliName = '" + this.lblClientName.Text + "'";
        //    return client;
        //}

        //private void DisplayClients()
        //{
            
        //}

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            authenticationManager.SignOut();

            Response.Redirect("~/Login.aspx");
        }
    }
}