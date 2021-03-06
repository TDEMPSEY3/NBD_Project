﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeamAssembly.aspx.cs" Inherits="NBD_Project.TeamAssembly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Team Assembly</title>
        <style type="text/css">
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
            <h1>Team Assembly</h1>
            <div>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">Choose a project</td>
                        <td class="auto-style5">Choose a worker</td>
                        <td class="auto-style5">Choose a role</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="253px">
                                <asp:ListItem Selected="True">Select...</asp:ListItem>
                                <asp:ListItem>Niagara College</asp:ListItem>
                                <asp:ListItem>Homescape Hotel</asp:ListItem>
                                <asp:ListItem>Brock University</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="258px">
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
                            <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="261px">
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
                            <asp:DropDownList ID="DropDownList4" runat="server" Height="25px" Width="258px">
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
                            <asp:DropDownList ID="DropDownList12" runat="server" Height="25px" Width="261px">
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
                            <asp:DropDownList ID="DropDownList5" runat="server" Height="25px" Width="258px">
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
                            <asp:DropDownList ID="DropDownList13" runat="server" Height="25px" Width="261px">
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
                            <asp:DropDownList ID="DropDownList10" runat="server" Height="25px" Width="258px">
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
                            <asp:DropDownList ID="DropDownList14" runat="server" Height="25px" Width="261px">
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
                            <asp:DropDownList ID="DropDownList11" runat="server" Height="25px" Width="258px">
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
                            <asp:DropDownList ID="DropDownList15" runat="server" Height="24px" Width="261px">
                                <asp:ListItem Selected="True">Select...</asp:ListItem>
                                <asp:ListItem>Sales Associate</asp:ListItem>
                                <asp:ListItem>Designer</asp:ListItem>
                                <asp:ListItem>Production</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="BtnCreateTeam" runat="server" Text="Create Team" CssClass="button"/>
            </div>
        </div>
    </form>
</body>
</html>
