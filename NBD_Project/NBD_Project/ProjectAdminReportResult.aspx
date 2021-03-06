﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectAdminReportResult.aspx.cs" Inherits="NBD_Project.ProjectAdminReportResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project Admin Report</title>
        <style type="text/css">
            .auto-style4 {
                width: 731px;
            }
            .auto-style7 {
                width: 72px;
            }
            .auto-style8 {
                width: 73px;
            }
            .auto-style9 {
                text-align: center;
            }
            .auto-style10 {
                text-align: center;
                font-size: x-large;
                text-decoration: underline;
            }
            .auto-style11 {
                font-size: large;
            }
            .auto-style12 {
                text-decoration: underline;
            }
            .auto-style13 {
                height: 42px;
            }
            .auto-style14 {
                width: 73px;
                text-align: center;
            }
            .auto-style15 {
                width: 72px;
                text-align: center;
            }
    </style>
    <link rel="stylesheet" runat="server" media="screen" href="~/CSS/style.css" />
     <link href="https://fonts.googleapis.com/css?family=Montserrat:300|Raleway:300,400" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="NavMenu">
            <asp:HyperLink ID="HomeLink" runat="server" href="HomePage.aspx" CssClass="link" Font-Size="20px">Home</asp:HyperLink>
            <p>
                <asp:HyperLink ID="ClientLink" runat="server" href="ClientPage.aspx" CssClass="link" Font-Size="20px">Client</asp:HyperLink>
            </p>
            <p style="margin-left: 40px">
                <asp:HyperLink ID="ClientInfoLink" runat="server" href="ClientInfo.aspx" CssClass="link">Client Information</asp:HyperLink>
            </p>
            <div style="margin-left: 40px">
                <asp:HyperLink ID="DBidLink" runat="server" href="DesignBid.aspx" CssClass="link">Design Bid</asp:HyperLink>
            </div>
            <p style="margin-left: 40px">
                <asp:HyperLink ID="DBudgetLink" runat="server" href="DesignBudget.aspx" CssClass="link">Design Budget</asp:HyperLink>
            </p>
            <div style="margin-left: 40px">
                <asp:HyperLink ID="PPlanLink" runat="server" href="ProductionPlan.aspx" CssClass="link">Production Plan</asp:HyperLink>
            </div>
            <p>            
                <asp:HyperLink ID="ReportLink" runat="server" href="ReportPage.aspx" CssClass="link" Font-Size="20px">Report</asp:HyperLink>
            </p>
            <div style="margin-left: 40px">
                <p>
                <asp:HyperLink ID="DDReportLink" runat="server" href="DesignDailyReport.aspx" CssClass="link">Design Daily Report</asp:HyperLink>
                <br />
                </p>
                </div>
            
             <div style="margin-left: 40px">
                <p>
                <asp:HyperLink ID="PDReportLink" runat="server" href="ProductionDailyReport.aspx" CssClass="link">Production Daily Report</asp:HyperLink>
                    </p>
            </div>

            <p>
                <asp:HyperLink ID="AdminLink" runat="server" href="Administrator.aspx" CssClass="link" Font-Size="20px">Administrator</asp:HyperLink>
            </p>
            <div style="margin-left: 40px">
                <asp:HyperLink ID="PApprovalsLink" runat="server" href="PendingApprovals.aspx" CssClass="link">Pending Approvals</asp:HyperLink>
            </div>
            <p style="margin-left: 40px">
                <asp:HyperLink ID="TAssemblyLink" runat="server" href="TeamAssembly.aspx" CssClass="link">Team Assembly</asp:HyperLink>
            </p>
            <div style="margin-left: 40px">
                <asp:HyperLink ID="PAdminReportLink" runat="server" href="ProjectAdminReport.aspx" CssClass="link">Project Administrator Report</asp:HyperLink>
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
                        <asp:LinkButton ID="lnkLogout" runat="server" Visible="True" OnClick="lnkLogout_Click" CssClass="link">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>    
            <br />
        </div>
        
        <div id="mainDiv">
            <h1>Results</h1>
            <div>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style10" colspan="10"><strong>Project Administration Report</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="10"><strong>
                            <asp:Label ID="lblReportDate" runat="server" CssClass="auto-style11" Text="Date"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11" colspan="10"><strong>Bid Stage Projects</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13" colspan="2"><strong>Project</strong></td>
                        <td class="auto-style13" colspan="2"><strong>Est. Bid</strong></td>
                        <td class="auto-style13" colspan="2"><strong>Actual/Est Design Hours</strong></td>
                        <td class="auto-style13" colspan="2"><strong>Actual/Est Design&nbsp; Costs</strong></td>
                        <td class="auto-style13" colspan="2"><strong>Hrs/$ Remaining</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2">Project Name</td>
                        <td class="auto-style9" colspan="2">$</td>
                        <td class="auto-style9" colspan="2">#/#</td>
                        <td class="auto-style9" colspan="2">$/$</td>
                        <td class="auto-style9" colspan="2">#/$</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2">Project Name</td>
                        <td class="auto-style9" colspan="2">$</td>
                        <td class="auto-style9" colspan="2">#/#</td>
                        <td class="auto-style9" colspan="2">$/$</td>
                        <td class="auto-style9" colspan="2">#/$</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2">Project Name</td>
                        <td class="auto-style9" colspan="2">$</td>
                        <td class="auto-style9" colspan="2">#/#</td>
                        <td class="auto-style9" colspan="2">$/$</td>
                        <td class="auto-style9" colspan="2">#/$</td>
                    </tr>
                    <tr>
                        <td colspan="10">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11" colspan="10"><strong>Production Stage Projects</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style7"><strong>Project</strong></td>
                        <td class="auto-style8"><strong>Bid $</strong></td>
                        <td class="auto-style8"><strong>Prod Plan Est.</strong></td>
                        <td class="auto-style8"><strong>Total Cost to date</strong></td>
                        <td class="auto-style8"><strong>Actual Mtl $</strong></td>
                        <td class="auto-style8"><strong>Est. Mtl $</strong></td>
                        <td class="auto-style8"><strong>Actual Labor $ Prod</strong></td>
                        <td class="auto-style8"><strong>Est. Labor $ Prod</strong></td>
                        <td class="auto-style8"><strong>Actual Labor $ Design</strong></td>
                        <td class="auto-style8"><strong>Est. Labor $ Design</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style15">Project Name</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                    </tr>
                    <tr>
                        <td class="auto-style15">Project Name</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                        <td class="auto-style14">$</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style9" colspan="2">
                            <asp:Button ID="btnDone" runat="server" OnClick="btnDone_Click" Text="Done" Width="100px" CssClass="button"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
