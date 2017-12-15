<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignBid.aspx.cs" Inherits="NBD_Project.DesignBid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Design Bid</title>
        <style type="text/css">
            .auto-style1 {
                width: 591px;
            }
            .auto-style9 {
                width: 98px;
            }
            .auto-style10 {
                width: 30px;
            }
            .auto-style11 {
                width: 40px;
            }
            .auto-style12 {
                width: 100%;
            }
            .auto-style13 {
                width: 260px;
                height: 36px;
            }
            .auto-style14 {
                height: 30px;
            }
            .auto-style15 {
                height: 31px;
            }
            .auto-style16 {
                height: 36px;
            }
    </style>
    <link rel="stylesheet" runat="server" media="screen" href="~/CSS/style.css" />
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
            <div>
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style13"><strong>Select a client:</strong>&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="136px">
                                <asp:ListItem Value="0">Select a client</asp:ListItem>
                                <asp:ListItem>Client1</asp:ListItem>
                                <asp:ListItem>Client2</asp:ListItem>
                                <asp:ListItem>Client3</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style16">
                            <asp:Button ID="btnStart" runat="server" OnClick="btnStart_Click" Text="Start Design Bid" />
                        </td>
                    </tr>
                </table>
                <br />
            </div>
            <div id="bidDiv" runat="server">
                Design Bid<br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style14" colspan="5"><strong>Client</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Client Name:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblClientName" runat="server" Text="Client Name"></asp:Label>
                        </td>
                        <td class="auto-style9"><strong>Contact:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblContactName" runat="server" Text="Contact Name"></asp:Label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Client Address:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblClientAddress" runat="server" Text="Client Address"></asp:Label>
                        </td>
                        <td class="auto-style9"><strong>Phone:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblClientPhone" runat="server" Text="Client Phone #"></asp:Label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15" colspan="5"><strong>NBD Staff</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Sales Asoc:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblSalesAsoc" runat="server" Text="Sales Ascociate"></asp:Label>
                        </td>
                        <td class="auto-style9"><strong>Phone:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblSalesPhone" runat="server" Text="Sales Phone #"></asp:Label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Designer:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblDesigner" runat="server" Text="Designer"></asp:Label>
                        </td>
                        <td class="auto-style9"><strong>Phone:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblDesignePhone" runat="server" Text="Designer Phone #"></asp:Label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14" colspan="5"><strong>Project</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Bid Date:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblBidDate" runat="server" Text="Bid Date"></asp:Label>
                        </td>
                        <td class="auto-style9"><strong>Project Site:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblProjectSite" runat="server" Text="Site Address"></asp:Label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Est. Begin Date:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblBeginDate" runat="server" Text="Begin Date"></asp:Label>
                        </td>
                        <td class="auto-style9"><strong>Bid Amount:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblBid" runat="server" Text="Bid Amount"></asp:Label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Est. Compl. Date:</strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="lblComplDate" runat="server" Text="Compl. Date"></asp:Label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14" colspan="5"><strong>Material Requirements</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5"><strong>Plants:</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Qty</strong></td>
                        <td class="auto-style9"><strong>Desc</strong></td>
                        <td class="auto-style9"><strong>Size</strong></td>
                        <td class="auto-style9"><strong>Unit Price</strong></td>
                        <td class="auto-style9"><strong>Extended Price</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox33" runat="server" Width="65px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox34" runat="server" Width="65px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox35" runat="server" Width="65px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:Button ID="btnAddPlant" runat="server" Text="Add" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5"><strong>Pottery:</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Qty</strong></td>
                        <td class="auto-style9"><strong>Desc</strong></td>
                        <td class="auto-style9"><strong>Size</strong></td>
                        <td class="auto-style9"><strong>Unit Price</strong></td>
                        <td class="auto-style9"><strong>Extended Price</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox27" runat="server" Width="65px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox28" runat="server" Width="65px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:Button ID="btnAddPottery" runat="server" Text="Add" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5"><strong>Materials:</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Qty</strong></td>
                        <td class="auto-style9"><strong>Desc</strong></td>
                        <td class="auto-style9"><strong>Size</strong></td>
                        <td class="auto-style9"><strong>Unit Price</strong></td>
                        <td class="auto-style9"><strong>Extended Price</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox17" runat="server" Width="65px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox18" runat="server" Width="65px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:Button ID="btnAddMaterial" runat="server" Text="Add" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" colspan="5"></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14" colspan="5"><strong>Labor Requirements</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Hours</strong></td>
                        <td class="auto-style9"><strong>Desc</strong></td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style9"><strong>Unit Price</strong></td>
                        <td class="auto-style9"><strong>Extended Price</strong></td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox4" runat="server" Width="196px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox48" runat="server" Width="196px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox49" runat="server" Width="196px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:Button ID="btnAddLabor" runat="server" Text="Add" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
