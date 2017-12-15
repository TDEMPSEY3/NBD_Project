<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientPage.aspx.cs" Inherits="NBD_Project.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #NavMenu {
            width: 250px;
        }
        .auto-style1 {
            width: 756px;
        }
        .auto-style4 {
            width: 54px;
        }
        .auto-style5 {
            width: 151px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            width: 170px;
        }
        .auto-style8 {
            width: 151px;
            text-align: center;
        }
        .auto-style9 {
            width: 170px;
            text-align: right;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            width: 731px;
        }
        .auto-style17 {
            width: 145px;
        }
        .auto-style18 {
            width: 146px;
        }
        .auto-style19 {
            width: 145px;
            height: 23px;
            text-align: right;
        }
        .auto-style20 {
            width: 146px;
            height: 23px;
        }
        .auto-style21 {
            width: 145px;
            text-align: right;
        }
        .auto-style22 {
            width: 146px;
            text-align: right;
        }
        .auto-style23 {
            font-size: large;
            text-decoration: underline;
        }
        .auto-style24 {
            width: 200px;
        }
        .auto-style25 {
            width: 200px;
            text-align: right;
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
        
        <div>

            <table class="auto-style10">
                <tr>
                    <td class="auto-style11">
                        <br />
                        <br />
                        <asp:Button ID="btnCreate" runat="server" Text="Create New Client" OnClick="btnCreate_Click" />
                    </td>
                </tr>
            </table>

        </div>
        <div id="createDiv" runat="server">

            <table class="auto-style12">
                <tr>
                    <td class="auto-style23" colspan="5"><strong>Create New Client</strong></td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"><strong>Client Name:</strong></td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style21"><strong>Address:</strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style22"><strong>City:</strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style22"><strong></strong></td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"><strong>Province:</strong></td>
                    <td class="auto-style18">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="0">Select a Province</asp:ListItem>
                            <asp:ListItem>Ontario</asp:ListItem>
                            <asp:ListItem>Quebec</asp:ListItem>
                            <asp:ListItem>Manitoba</asp:ListItem>
                            <asp:ListItem>etc...</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style22"><strong>Postal Code:</strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong></strong></td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"><strong>Telephone Number:</strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Button ID="btnCreateClient" runat="server" OnClick="btnCreateClient_Click" Text="Create Client" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </div>
        <div id="searchDiv" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6" colspan="4"><strong>Search for Client</strong></td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Name:</strong></td>
                    <td class="auto-style5">
            <asp:TextBox ID="txtName" runat="server" Height="16px" Width="145px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Bid:</strong></td>
                    <td class="auto-style8">
            <asp:DropDownList ID="ddlBid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlBid_SelectedIndexChanged" Width="100px">
                <asp:ListItem>&gt;</asp:ListItem>
                <asp:ListItem>&lt;</asp:ListItem>
                <asp:ListItem>Between</asp:ListItem>
            </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
            <asp:TextBox ID="txtBid1" runat="server">$</asp:TextBox>
                    </td>
                    <td class="auto-style24">
            <asp:Label ID="lblAnd" runat="server" Text="and" Visible="False"></asp:Label>
                        &nbsp;
            <asp:TextBox ID="txtBid2" runat="server" Visible="False">$</asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Date:</strong></td>
                    <td class="auto-style8">Between</td>
                    <td class="auto-style5">
            <asp:TextBox ID="txtDateStart" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style24">and&nbsp;&nbsp;
            <asp:TextBox ID="txtDateEnd" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style9">
            <asp:Button ID="btnSearch" runat="server" Text="Search" Width="100px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <p>Results</p>
            <p>*Results go here*</p>
        </div>
    </form>
</body>
</html>
