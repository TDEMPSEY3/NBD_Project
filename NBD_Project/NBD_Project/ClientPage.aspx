<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientPage.aspx.cs" Inherits="NBD_Project.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #NavMenu {
            width: 250px;
        }
    </style>
</head>
<body style="height: 200px">
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
        Search for Bid<br />
        <br />
        <div>
            Name:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server" Height="16px" Width="200px"></asp:TextBox>
            <br />
            <br />
            Bid:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlBid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlBid_SelectedIndexChanged" Width="90px">
                <asp:ListItem>&gt;</asp:ListItem>
                <asp:ListItem>&lt;</asp:ListItem>
                <asp:ListItem>Between</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:TextBox ID="txtBid1" runat="server">$</asp:TextBox>
&nbsp;
            <asp:Label ID="lblAnd" runat="server" Text="and" Visible="False"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtBid2" runat="server" Visible="False">$</asp:TextBox>
            <br />
            <br />
            Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Between&nbsp;
            <asp:TextBox ID="txtDateStart" runat="server"></asp:TextBox>
&nbsp; and&nbsp;
            <asp:TextBox ID="txtDateEnd" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
        </div>
        <div>
            <p>Results</p>
            <p>Results go here</p>
        </div>
    </form>
</body>
</html>
