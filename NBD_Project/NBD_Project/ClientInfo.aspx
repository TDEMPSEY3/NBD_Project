<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientInfo.aspx.cs" Inherits="NBD_Project.ClientInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Client Information</title>
        <style type="text/css">       
            .auto-style1 {
                width: 756px;
            }
            .auto-style2 {
                height: 23px;
            }
            .auto-style3 {
                width: 151px;
            }
            .auto-style8 {
                height: 23px;
                width: 150px;
            }
            .auto-style9 {
                height: 23px;
                width: 151px;
            }
            .auto-style13 {
                width: 150px;
            }
            .auto-style14 {
                font-size: large;
            }
            .auto-style15 {
                height: 23px;
                font-size: large;
            }

    </style>
    <link rel="stylesheet" runat="server" media="screen" href="~/CSS/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300|Raleway:300,400" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
       <div id="NavMenu">
            <asp:HyperLink ID="HomeLink" runat="server" href="HomePage.aspx">Home</asp:HyperLink>
            <p>
                <asp:HyperLink ID="ClientLink" runat="server" href="ClientPage.aspx">Client</asp:HyperLink>
            </p>
            <p style="margin-left: 40px">
                <asp:HyperLink ID="ClientInfoLink" runat="server" href="ClientInfo.aspx">Client Information</asp:HyperLink>
            </p>
            <div style="margin-left: 40px">
                <asp:HyperLink ID="DBidLink" runat="server" href="DesignBid.aspx">Design Bid</asp:HyperLink>
            </div>
            <p style="margin-left: 40px">
                <asp:HyperLink ID="DBudgetLink" runat="server" href="DesignBudget.aspx">Design Budget</asp:HyperLink>
            </p>
            <div style="margin-left: 40px">
                <asp:HyperLink ID="PPlanLink" runat="server" href="ProductionPlan.aspx">Production Plan</asp:HyperLink>
            </div>
            <p>            
                <asp:HyperLink ID="ReportLink" runat="server" href="ReportPage.aspx">Report</asp:HyperLink>
            </p>
           
            <div style="margin-left: 40px">
                <p>
                <asp:HyperLink ID="DDReportLink" runat="server" href="DesignDailyReport.aspx">Design Daily Report</asp:HyperLink>
                <br />
                </p>
            </div>
                        
            <div style="margin-left: 40px">
                <p>
                <asp:HyperLink ID="PDReportLink" runat="server" href="ProductionDailyReport.aspx">Production Daily Report</asp:HyperLink>
                    </p>
            </div>

            <p>
                <asp:HyperLink ID="AdminLink" runat="server" href="Administrator.aspx">Administrator</asp:HyperLink>
            </p>
            <div style="margin-left: 40px">
                <asp:HyperLink ID="PApprovalsLink" runat="server" href="PendingApprovals.aspx">Pending Approvals</asp:HyperLink>
            </div>
            <p style="margin-left: 40px">
                <asp:HyperLink ID="TAssemblyLink" runat="server" href="TeamAssembly.aspx">Team Assembly</asp:HyperLink>
            </p>
            <div style="margin-left: 40px">
                <asp:HyperLink ID="PAdminReportLink" runat="server" href="ProjectAdminReport.aspx">Project Administrator Report</asp:HyperLink>
            </div>
            <p>&nbsp;</p>
        </div>
        
        <div id="welcome" style="height: 24px">   
            <table style="width:100%;">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td style="text-align: right">
                        <asp:Label ID="lblWelcome" runat="server" Text="Welcome" style="font-weight: 700; font-style: italic"></asp:Label>
                        <br />
                        <asp:LinkButton ID="lnkLogout" runat="server" Visible="True" OnClick="lnkLogout_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>
    
            <br />
        </div>
        
        <div id="mainDiv">
            <h1>Client Information</h1>
            <div>
                Design Bid<br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style14" colspan="5"><strong>Client</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Client Name:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblClientName" runat="server" Text="Client Name"></asp:Label>
                        </td>
                        <td class="auto-style3"><strong>Contact:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblContactName" runat="server" Text="Contact Name"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Client Address:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblClientAddress" runat="server" Text="Client Address"></asp:Label>
                        </td>
                        <td class="auto-style3"><strong>Phone:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblClientPhone" runat="server" Text="Client Phone #"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15" colspan="5"><strong>NBD Staff</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Sales Asoc:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblSalesAsoc" runat="server" Text="Sales Ascociate"></asp:Label>
                        </td>
                        <td class="auto-style3"><strong>Phone:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblSalesPhone" runat="server" Text="Sales Phone #"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Designer:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblDesigner" runat="server" Text="Designer"></asp:Label>
                        </td>
                        <td class="auto-style3"><strong>Phone:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblDesignePhone" runat="server" Text="Designer Phone #"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14" colspan="5"><strong>Project</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Bid Date:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblBidDate" runat="server" Text="Bid Date"></asp:Label>
                        </td>
                        <td class="auto-style3"><strong>Project Site:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblProjectSite" runat="server" Text="Site Address"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Est. Begin Date:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblBeginDate" runat="server" Text="Begin Date"></asp:Label>
                        </td>
                        <td class="auto-style3"><strong>Bid Amount:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblBid" runat="server" Text="Bid Amount"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Est. Compl. Date:</strong></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblComplDate" runat="server" Text="Compl. Date"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14" colspan="5"><strong>Material Requirements</strong></td>
                    </tr>
                    <tr>
                        <td colspan="5"><strong>Plants:</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Qty</strong></td>
                        <td class="auto-style3"><strong>Desc</strong></td>
                        <td class="auto-style3"><strong>Size</strong></td>
                        <td class="auto-style3"><strong>Unit Price</strong></td>
                        <td class="auto-style3"><strong>Extended Price</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">#</td>
                        <td class="auto-style3">plant description</td>
                        <td class="auto-style3"># gal</td>
                        <td class="auto-style3">$</td>
                        <td class="auto-style3">$</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">#</td>
                        <td class="auto-style3">plant description</td>
                        <td class="auto-style3"># gal</td>
                        <td class="auto-style3">$</td>
                        <td class="auto-style3">$</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">#</td>
                        <td class="auto-style3">plant description</td>
                        <td class="auto-style3"># gal</td>
                        <td class="auto-style3">$</td>
                        <td class="auto-style3">$</td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5"><strong>Pottery:</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Qty</strong></td>
                        <td class="auto-style3"><strong>Desc</strong></td>
                        <td class="auto-style3"><strong>Size</strong></td>
                        <td class="auto-style3"><strong>Unit Price</strong></td>
                        <td class="auto-style3"><strong>Extended Price</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">#</td>
                        <td class="auto-style3">pottery description</td>
                        <td class="auto-style3"># in</td>
                        <td class="auto-style3">$</td>
                        <td class="auto-style3">$</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">#</td>
                        <td class="auto-style3">pottery description</td>
                        <td class="auto-style3"># gal</td>
                        <td class="auto-style3">$</td>
                        <td class="auto-style3">$</td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5"><strong>Materials:</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><strong>Qty</strong></td>
                        <td class="auto-style9"><strong>Desc</strong></td>
                        <td class="auto-style9"><strong>Size</strong></td>
                        <td class="auto-style9"><strong>Unit Price</strong></td>
                        <td class="auto-style9"><strong>Extended Price</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">#</td>
                        <td class="auto-style3">material description</td>
                        <td class="auto-style3"># cu ft</td>
                        <td class="auto-style3">$</td>
                        <td class="auto-style3">$</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">#</td>
                        <td class="auto-style3">material description</td>
                        <td class="auto-style3"># yards</td>
                        <td class="auto-style3">$</td>
                        <td class="auto-style3">$</td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="5"></td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14" colspan="5"><strong>Labor Requirements</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Hours</strong></td>
                        <td class="auto-style3"><strong>Desc</strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3"><strong>Unit Price</strong></td>
                        <td class="auto-style3"><strong>Extended Price</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">#</td>
                        <td colspan="2">Description of labor</td>
                        <td class="auto-style3">$</td>
                        <td class="auto-style3">$</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">#</td>
                        <td colspan="2">Description of labor</td>
                        <td class="auto-style3">$</td>
                        <td class="auto-style3">$</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">#</td>
                        <td colspan="2">Description of labor</td>
                        <td class="auto-style3">$</td>
                        <td class="auto-style3">$</td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
