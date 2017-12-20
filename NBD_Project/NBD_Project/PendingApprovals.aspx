<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PendingApprovals.aspx.cs" Inherits="NBD_Project.Pending_Approvals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pending Approvals</title>
        <style type="text/css">
            .auto-style1 {
                text-align: center;
            }
            .auto-style2 {
                width: 1293px;
                height: 78px;
            }
            .auto-style7 {
                height: 26px;
                width: 258px;
            }
            .auto-style8 {
                height: 26px;
                width: 259px;
            }
            .auto-style9 {
                width: 100%;
            }
            .auto-style10 {
                width: 160px;
            }
            .auto-style11 {
                width: 160px;
                height: 26px;
            }
            .auto-style12 {
                height: 26px;
            }
            .auto-style13 {
                width: 240px;
            }
            .auto-style14 {
                height: 26px;
                width: 240px;
            }
            .auto-style15 {
                width: 170px;
            }
            .auto-style16 {
                height: 26px;
                width: 170px;
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
                <asp:HyperLink ID="ClientLink" runat="server" href="ClientPage.aspx" CssClass="link">Client</asp:HyperLink>
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
                <asp:HyperLink ID="ReportLink" runat="server" href="ReportPage.aspx" CssClass="link">Report</asp:HyperLink>
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
                <asp:HyperLink ID="AdminLink" runat="server" href="Administrator.aspx" CssClass="link">Administrator</asp:HyperLink>
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
                        <asp:LinkButton ID="lnkLogout" runat="server" Visible="True" OnClick="lnkLogout_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>    
            <br />
        </div>
        
        <div id="mainDiv">
            <div class="auto-style1">
                <h1>Pending Approvals</h1>
                <br />
            </div>
            <div>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style7"><strong>Project Name</strong></td>
                        <td class="auto-style7"><strong>Reports</strong></td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">SJSU</td>
                        <td class="auto-style7">Design Bid</td>
                        <td class="auto-style7">
                            <asp:Button ID="Button1" runat="server" Text="View Details" Width="163px" OnClick="Button1_Click" CssClass="addbutton" />
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">LS Mall</td>
                        <td class="auto-style7">Production Plan</td>
                        <td class="auto-style7">
                            <asp:Button ID="Button2" runat="server" Text="View Details" Width="162px" OnClick="Button2_Click" CssClass="addbutton" />
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Fremont</td>
                        <td class="auto-style7">Design Budget</td>
                        <td class="auto-style7">
                            <asp:Button ID="btnVwDtls" runat="server" Text="View Details" Width="161px" OnClick="Button3_Click" CssClass="addbutton" />
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                </table>
            </div>
            <div runat="server" id="details">
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style10"><strong>Client</strong></td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Client Name:</td>
                        <td class="auto-style14">London Sq. Mall</td>
                        <td class="auto-style16"></td>
                        <td class="auto-style11">Contact:</td>
                        <td class="auto-style12">Amy Benson, Mngr.</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Client Address:</td>
                        <td class="auto-style13">12638 Mall Drive</td>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style10">Phone:</td>
                        <td>(408)838-5603</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style13">Scotts Drive, CA 95060</td>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style10">Contact Date:</td>
                        <td>April 15, 2017</td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
