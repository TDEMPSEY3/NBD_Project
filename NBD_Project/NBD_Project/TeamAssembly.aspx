<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeamAssembly.aspx.cs" Inherits="NBD_Project.TeamAssembly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        #NavMenu {
            width: 250px;
        }
            .auto-style1 {
                width: 793px;
            }
            .auto-style4 {
                width: 263px;
            }
            .auto-style5 {
                width: 264px;
            }
            .auto-style6 {
                width: 263px;
                height: 23px;
            }
            .auto-style7 {
                width: 264px;
                height: 23px;
            }
            .auto-style8 {
                text-align: center;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style8">
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
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Choose a project</td>
                    <td class="auto-style5">Choose a worker</td>
                    <td class="auto-style5">Choose a role</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="253px">
                            <asp:ListItem Selected="True">Select...</asp:ListItem>
                            <asp:ListItem>Niagara College</asp:ListItem>
                            <asp:ListItem>Homescape Hotel</asp:ListItem>
                            <asp:ListItem>Brock University</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="258px">
                            <asp:ListItem Selected="True">Select...</asp:ListItem>
                            <asp:ListItem>Gary Brody</asp:ListItem>
                            <asp:ListItem>Nola Darling</asp:ListItem>
                            <asp:ListItem>Gustin Dumphry</asp:ListItem>
                            <asp:ListItem>Tristan Dempsey</asp:ListItem>
                            <asp:ListItem>Yen Drenchfeet</asp:ListItem>
                            <asp:ListItem>Torika Feaste</asp:ListItem>
                            <asp:ListItem>Patty Ferguson</asp:ListItem>
                            <asp:ListItem>Gabriel Rahming</asp:ListItem>
                            <asp:ListItem>Jake Rocero</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="261px">
                            <asp:ListItem Selected="True">Select...</asp:ListItem>
                            <asp:ListItem>Sales Associate</asp:ListItem>
                            <asp:ListItem>Designer</asp:ListItem>
                            <asp:ListItem>Production</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList4" runat="server" Height="17px" Width="258px">
                            <asp:ListItem Selected="True">Select...</asp:ListItem>
                            <asp:ListItem>Gary Brody</asp:ListItem>
                            <asp:ListItem>Nola Darling</asp:ListItem>
                            <asp:ListItem>Gustin Dumphry</asp:ListItem>
                            <asp:ListItem>Tristan Dempsey</asp:ListItem>
                            <asp:ListItem>Yen Drenchfeet</asp:ListItem>
                            <asp:ListItem>Torika Feaste</asp:ListItem>
                            <asp:ListItem>Patty Ferguson</asp:ListItem>
                            <asp:ListItem>Gabriel Rahming</asp:ListItem>
                            <asp:ListItem>Jake Rocero</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList12" runat="server" Height="16px" Width="261px">
                            <asp:ListItem Selected="True">Select...</asp:ListItem>
                            <asp:ListItem>Sales Associate</asp:ListItem>
                            <asp:ListItem>Designer</asp:ListItem>
                            <asp:ListItem>Production</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList5" runat="server" Height="17px" Width="258px">
                            <asp:ListItem Selected="True">Select...</asp:ListItem>
                            <asp:ListItem>Gary Brody</asp:ListItem>
                            <asp:ListItem>Nola Darling</asp:ListItem>
                            <asp:ListItem>Gustin Dumphry</asp:ListItem>
                            <asp:ListItem>Tristan Dempsey</asp:ListItem>
                            <asp:ListItem>Yen Drenchfeet</asp:ListItem>
                            <asp:ListItem>Torika Feaste</asp:ListItem>
                            <asp:ListItem>Patty Ferguson</asp:ListItem>
                            <asp:ListItem>Gabriel Rahming</asp:ListItem>
                            <asp:ListItem>Jake Rocero</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList13" runat="server" Height="16px" Width="261px">
                            <asp:ListItem Selected="True">Select...</asp:ListItem>
                            <asp:ListItem>Sales Associate</asp:ListItem>
                            <asp:ListItem>Designer</asp:ListItem>
                            <asp:ListItem>Production</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList10" runat="server" Height="17px" Width="258px">
                            <asp:ListItem Selected="True">Select...</asp:ListItem>
                            <asp:ListItem>Gary Brody</asp:ListItem>
                            <asp:ListItem>Nola Darling</asp:ListItem>
                            <asp:ListItem>Gustin Dumphry</asp:ListItem>
                            <asp:ListItem>Tristan Dempsey</asp:ListItem>
                            <asp:ListItem>Yen Drenchfeet</asp:ListItem>
                            <asp:ListItem>Torika Feaste</asp:ListItem>
                            <asp:ListItem>Patty Ferguson</asp:ListItem>
                            <asp:ListItem>Gabriel Rahming</asp:ListItem>
                            <asp:ListItem>Jake Rocero</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList14" runat="server" Height="16px" Width="261px">
                            <asp:ListItem Selected="True">Select...</asp:ListItem>
                            <asp:ListItem>Sales Associate</asp:ListItem>
                            <asp:ListItem>Designer</asp:ListItem>
                            <asp:ListItem>Production</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList11" runat="server" Height="17px" Width="258px">
                            <asp:ListItem Selected="True">Select...</asp:ListItem>
                            <asp:ListItem>Gary Brody</asp:ListItem>
                            <asp:ListItem>Nola Darling</asp:ListItem>
                            <asp:ListItem>Gustin Dumphry</asp:ListItem>
                            <asp:ListItem>Tristan Dempsey</asp:ListItem>
                            <asp:ListItem>Yen Drenchfeet</asp:ListItem>
                            <asp:ListItem>Torika Feaste</asp:ListItem>
                            <asp:ListItem>Patty Ferguson</asp:ListItem>
                            <asp:ListItem>Gabriel Rahming</asp:ListItem>
                            <asp:ListItem>Jake Rocero</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList15" runat="server" Height="16px" Width="261px">
                            <asp:ListItem Selected="True">Select...</asp:ListItem>
                            <asp:ListItem>Sales Associate</asp:ListItem>
                            <asp:ListItem>Designer</asp:ListItem>
                            <asp:ListItem>Production</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Create Team" />
        </div>
    </form>
</body>
</html>
