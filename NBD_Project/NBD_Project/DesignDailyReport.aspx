<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignDailyReport.aspx.cs" Inherits="NBD_Project.DailyDesignerReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style50 {
            height: 343px;
            width: 1222px;
            text-align: right;
        }
        .auto-style51 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style52 {
            text-align: center;
        }
        .auto-style41 {
            text-align: center;
        }
        .auto-style31 {
            text-align: left;
        }
        .auto-style53 {
            height: 23px;
        }
        .auto-style54 {
            text-align: center;
            height: 23px;
        }
        .auto-style55 {
            text-align: left;
            height: 23px;
        }
    </style>
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
        <div id ="welcome">
            <asp:Label ID="lblWelcome" runat="server" Text="Welcome"></asp:Label>
        &nbsp;<br />
            <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
            <br />
            <br />
            <br />
        </div>
        <div class="auto-style50">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style51" colspan="5"><strong>Designer Daily Work Report</strong></td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style47">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style42">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style47"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style42"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style52">Submitted by:&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" Width="131px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style47">&nbsp;</td>
                    <td class="auto-style39"></td>
                    <td class="auto-style42"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style47">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style42">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37"></td>
                    <td class="auto-style52">Project</td>
                    <td class="auto-style52">Stage</td>
                    <td class="auto-style52">Hours</td>
                    <td class="auto-style52">Task</td>
                </tr>
                <tr>
                    <td class="auto-style49">
                        <asp:Button ID="Button1" runat="server" Text="+" />
                    </td>
                    <td class="auto-style47">
                        <asp:TextBox ID="TextBox1" runat="server" Width="260px"></asp:TextBox>
                    </td>
                    <td class="auto-style39">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style42">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox4" runat="server" Width="437px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style48">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style44">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style48">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style44">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style48">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style44">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style48">&nbsp;</td>
                    <td class="auto-style41">____________</td>
                    <td class="auto-style44">&nbsp;</td>
                    <td class="auto-style31">_____________________________</td>
                </tr>
                <tr>
                    <td class="auto-style53"></td>
                    <td class="auto-style53"></td>
                    <td class="auto-style54">Date</td>
                    <td class="auto-style53"></td>
                    <td class="auto-style55">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Designer Name&nbsp;</td>
                </tr>
            </table>
            <asp:Button ID="Button2" runat="server" Text="Create" style="text-align: right" OnClick="Button2_Click" />
          </div>
    </form>
</body>
</html>
