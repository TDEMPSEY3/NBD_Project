<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PDRResults.aspx.cs" Inherits="NBD_Project.Results" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" style="text-align: center" Text="Production Daily Work Report"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date: 12/12/2017<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project: Niagara College<br />
            <strong>Materials Used</strong><br />
            <asp:Table ID="Table1" runat="server" Width="733px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ColumnSpan="1">Code</asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="1">Quantity</asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="1">Unit Cost   </asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="1">Ext. Cost</asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="1">Approval status</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">xxxxxxx</asp:TableCell>
                    <asp:TableCell runat="server">0</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">Pending</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">xxxxxxx</asp:TableCell>
                    <asp:TableCell runat="server">0</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">Pending</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">xxxxxxx</asp:TableCell>
                    <asp:TableCell runat="server">0</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">Pending</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Labor"></asp:Label>
            <asp:Table ID="Table2" runat="server" Width="733px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ColumnSpan="1">Worker</asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="1">Hours</asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="1">Cost/Hr</asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="1">Ext. Cost</asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="1">Task</asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="1">Approval Status</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">xxxxxxx</asp:TableCell>
                    <asp:TableCell runat="server">0</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">xxxxxxxxxx.....</asp:TableCell>
                    <asp:TableCell runat="server">Pending</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">xxxxxxx</asp:TableCell>
                    <asp:TableCell runat="server">0</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">xxxxxxxxxx.....</asp:TableCell>
                    <asp:TableCell runat="server">Pending</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">xxxxxxx</asp:TableCell>
                    <asp:TableCell runat="server">0</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">$0.00</asp:TableCell>
                    <asp:TableCell runat="server">xxxxxxxxxx.....</asp:TableCell>
                    <asp:TableCell runat="server">Pending</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <a href="HomePage.aspx">Exit</a><br />
            
        </div>
    </form>
</body>
</html>
