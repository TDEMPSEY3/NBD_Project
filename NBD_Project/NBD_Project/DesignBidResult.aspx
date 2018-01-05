<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignBidResult.aspx.cs" Inherits="NBD_Project.DesignBidResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Design Bid</title>
    <style type="text/css">       
            .auto-style1 {
                width: 756px;
            }
            .auto-style3 {
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

        .auto-style16 {
            width: 170px;
        }

    </style>
    <link rel="stylesheet" runat="server" media="screen" href="~/CSS/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300|Raleway:300,400" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="NavMenu">
            <asp:HyperLink ID="HomeLink" runat="server" href="HomePage.aspx" CssClass="link">Home</asp:HyperLink>
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
        <br />
        <div id="search" runat="server">
            <asp:Label ID="lblClients" runat="server" Text="Clients: "></asp:Label>
            <asp:DropDownList ID="ddlClients" runat="server" AppendDataBoundItems="True">
                <asp:ListItem Selected="True" Value="-1">Select a client</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnClient" runat="server" Text="Select" OnClick="btnClient_Click" />
            <asp:ObjectDataSource ID="dsClient" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDdatabase.NBD_SBDataSetTableAdapters.CLIENTTableAdapter"></asp:ObjectDataSource>
            <br />
            <br />
            <asp:Label ID="lblDesignBids" runat="server" Text="Design Bids:"></asp:Label>
            <br />
            <asp:ListBox ID="lbBids" runat="server" Height="99px" Width="192px"></asp:ListBox>
            <br />
            <asp:Button ID="btnSelect" runat="server" Text="Select" OnClick="btnSelect_Click" />
        </div>
        <div id="mainDiv" runat="server">
            <table class="auto-style1">
                    <tr>
                        <td class="auto-style14" colspan="4"><strong>Client</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Client Name:</strong></td>
                        <td class="auto-style16">
                            London Sq. Mall</td>
                        <td class="auto-style3"><strong>Contact:</strong></td>
                        <td class="auto-style3">
                            Amy Benson Mgr.</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Client Address:</strong></td>
                        <td class="auto-style16">
                            12638 Mall Drive<br />
                            Scotts Valley, CA 95060</td>
                        <td class="auto-style3"><strong>Phone:</strong></td>
                        <td class="auto-style3">
                            (408)834-5603</td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15" colspan="4"><strong>NBD Staff</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Sales Asoc:</strong></td>
                        <td class="auto-style16">
                            Bob Reinhardt</td>
                        <td class="auto-style3"><strong>Phone:</strong></td>
                        <td class="auto-style3">
                            (408)7753652</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Designer:</strong></td>
                        <td class="auto-style16">
                            Tamara Bakken</td>
                        <td class="auto-style3"><strong>Phone:</strong></td>
                        <td class="auto-style3">
                            408)7753645</td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14" colspan="4"><strong>Project</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Bid Date:</strong></td>
                        <td class="auto-style16">
                            May 6, 1996</td>
                        <td class="auto-style3"><strong>Project Site:</strong></td>
                        <td class="auto-style3">
                            Main entrance<br />
                            Mall Dr/Cinama Lane</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Est. Begin Date:</strong></td>
                        <td class="auto-style16">
                            June 15, 1996</td>
                        <td class="auto-style3"><strong>Bid Amount:</strong></td>
                        <td class="auto-style3">
                            $7,651.50</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Est. Compl. Date:</strong></td>
                        <td class="auto-style16">
                            June 30, 1996</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4" class="auto-style14"><strong>Material Requirements</strong></td>
                    </tr>
                    <tr>
                        <td colspan="4"><strong>Plants:</strong></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:GridView ID="GridView1" runat="server" Width="600px">
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4"><strong>Pottery:</strong></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:GridView ID="GridView2" runat="server" Width="600px">
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4"><strong>Materials:</strong></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:GridView ID="GridView3" runat="server" Width="600px">
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4" class="auto-style14"><strong>Labor Requirements</strong></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:GridView ID="GridView4" runat="server" Width="600px">
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
            </table>
        </div>
    </form>
</body>
</html>
