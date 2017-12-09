using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NBD_Project
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
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
    }
}