<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignResultPage.aspx.cs" Inherits="NBD_Project.DesignResultPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Design Daily Report</title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            width: 170px;
        }
        .auto-style6 {
            text-align: center;
            width: 170px;
        }
        .auto-style7 {
            width: 116px;
        }
        .auto-style8 {
            text-align: center;
            width: 116px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 511px;
            height: 23px;
        }
        .auto-style11 {
            width: 116px;
            height: 23px;
            text-align: center;
        }
        .auto-style12 {
            width: 170px;
            height: 23px;
            text-align: center;
        }
        .auto-style13 {
            height: 23px;
            text-align: center;
        }
        .auto-style14 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style15 {
            font-family: "Lucida Handwriting";
            font-size: small;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style16 {
            text-decoration: underline;
            font-family: "Lucida Handwriting";
        }
        .auto-style17 {
            text-align: center;
            width: 511px;
        }
        .auto-style18 {
            height: 23px;
            text-align: center;
            width: 511px;
        }
        .auto-style19 {
            width: 511px;
        }
        .auto-style20 {
            width: 170px;
            height: 23px;
        }
        .auto-style21 {
            width: 116px;
            height: 23px;
        }
        .auto-style22 {
            width: 1158px;
            height: 401px;
        }
        .auto-style23 {
            text-align: left;
        }
        #welcome {
            text-align: left;
        }
    </style>
    <link rel="stylesheet" runat="server" media="screen" href="~/CSS/style.css" />
</head>
<body>
    <form id="form1" runat="server">
          <div class="auto-style3">
          <div id="NavMenu" class="auto-style23">
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
            <div class="auto-style22">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" colspan="5"><strong>Designer Daily Work Report</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style37">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            6/15/2017</td>
                        <td class="auto-style5"></td>
                        <td class="auto-style39"></td>
                        <td class="auto-style7"></td>
                        <td class="auto-style10"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Submitted by:&nbsp;&nbsp;Tamara Bakken</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style39"></td>
                        <td class="auto-style7"></td>
                        <td class="auto-style10"></td>
                    </tr>
                    <tr>
                        <td class="auto-style9"></td>
                        <td class="auto-style20"></td>
                        <td class="auto-style9"></td>
                        <td class="auto-style21"></td>
                        <td class="auto-style10"></td>
                    </tr>
                    <tr>
                        <td class="auto-style37"></td>
                        <td class="auto-style6">Project</td>
                        <td class="auto-style3">Stage</td>
                        <td class="auto-style8">Hours</td>
                        <td class="auto-style17">Task</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style6">
                            SJSU</td>
                        <td class="auto-style3">
                            B</td>
                        <td class="auto-style8">
                            2</td>
                        <td class="auto-style17">
                            Prepared final sketches of arboretum</td>
                    </tr>
                    <tr>
                        <td class="auto-style38">&nbsp;</td>
                        <td class="auto-style6">LS MALL</td>
                        <td class="auto-style3">P</td>
                        <td class="auto-style8">3</td>
                        <td class="auto-style17">Monitored installation of fountain and pots</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            &nbsp;</td>
                        <td class="auto-style12">Fremont</td>
                        <td class="auto-style13">B</td>
                        <td class="auto-style11">3</td>
                        <td class="auto-style18">Work with client</td>
                    </tr>
                    <tr>
                        <td class="auto-style38">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style41">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style38">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style14">_<span class="auto-style15">6/15/17</span>_</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style17">____<span class="auto-style16">Tamara Bakken</span>_____</td>
                    </tr>
                    <tr>
                        <td class="auto-style53"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style3">Date</td>
                        <td class="auto-style7"></td>
                        <td class="auto-style17">Designer Name&nbsp;</td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click" style="text-align: center" Text="Ok" Width="100px" />
              </div>
        </div>
    </form>
</body>
</html>
