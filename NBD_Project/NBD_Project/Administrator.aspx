<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="NBD_Project.Administrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator</title>    
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
                        <asp:LinkButton ID="lnkLogout" runat="server" Visible="True" OnClick="lnkLogout_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>
    
            <br />
        </div>        

        <div id="mainDiv">
            <h1>Administrator</h1>
            <div style="height: 114px; margin-top: 0px;"><strong><em>Pending Approvals</em></strong><br />
                <asp:LinkButton ID="LinkButton1" runat="server">View</asp:LinkButton>
                    &nbsp;&nbsp; Design Bid #4256789<br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server">View</asp:LinkButton>
                    &nbsp;&nbsp; Design Budget #5679834<br />
                <br />
                <asp:LinkButton ID="LinkButton3" runat="server">View</asp:LinkButton>
                    &nbsp;&nbsp; Design Budget #674356</div><br />
            <div>
                <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-style: italic" Text="Team Assembly"></asp:Label>
                <br />
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Click Here</asp:LinkButton>
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="to assemble a team"></asp:Label>
            </div><br />
            <div>
                <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-style: italic" Text="Project Administrator Report"></asp:Label>
                <br />
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Click Here</asp:LinkButton>
                    &nbsp;<asp:Label ID="Label4" runat="server" Text="to create/edit a report"></asp:Label>
            </div><br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="Production Plan" style="font-weight: 700; font-style: italic"></asp:Label>
                <br />
                 <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Click Here</asp:LinkButton>
                    &nbsp;<asp:Label ID="Label6" runat="server" Text="to create/edit a plan"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
