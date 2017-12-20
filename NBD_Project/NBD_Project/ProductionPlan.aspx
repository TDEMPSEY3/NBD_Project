<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductionPlan.aspx.cs" Inherits="NBD_Project.ProductionPlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Production Plan</title>
        <style type="text/css">
            .auto-style2 {
                width: 100%;
            }
            .auto-style3 {
                border: 3px solid #266F26;
                padding: 1px 4px;
            }
            .auto-style4 {
                width: 160px;
            }
            .auto-style5 {
                width: 220px;
            }
            .auto-style6 {
                width: 210px;
            }
            .auto-style7 {
                width: 168px;
                text-align: center;
            }
            .auto-style9 {
                width: 94px;
                text-align: center;
            }
            .auto-style10 {
                width: 90px;
                text-align: center;
            }
            .auto-style11 {
                width: 253px;
                text-align: center;
            }
            .auto-style12 {
                width: 160px;
                text-align: center;
            }
            .auto-style13 {
                width: 173px;
                text-align: center;
            }
            .auto-style14 {
                width: 100px;
                text-align: center;
            }
            .auto-style15 {
                width: 87px;
                text-align: center;
            }
            .auto-style16 {
                width: 109px;
                text-align: center;
            }
            .auto-style17 {
                width: 280px;
            }
            .auto-style18 {
                width: 280px;
                height: 26px;
            }
            .auto-style19 {
                width: 220px;
                height: 26px;
            }
            .auto-style20 {
                width: 85px;
                height: 26px;
                text-align: center;
            }
            .auto-style21 {
                width: 50px;
                height: 26px;
            }
            .auto-style22 {
                height: 26px;
            }
            .auto-style23 {
                width: 85px;
                text-align: center;
            }
            .auto-style24 {
                width: 50px;
            }
            .auto-style25 {
                margin-left: 0px;
            }
    </style>
    <link rel="stylesheet" runat="server" media="screen" href="~/CSS/style.css" />
     <link href="https://fonts.googleapis.com/css?family=Montserrat:300|Raleway:300,400" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server" class="auto-style25">
       <div id="NavMenu" class="auto-style25">
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
        
        <div id="mainDiv">
            <h1>Production Plan</h1>
            
            <div>
                Project Bid Information
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style4">Project:</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">Project Site:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Begin Date:</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">Bid Amount:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Compl Date:</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                Project Team
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style4">Sales Associate:</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">Production:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Designer</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox8" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                Material Requirements
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style10">
                                        Qty</td>
                                    <td class="auto-style11">Code/Desc</td>
                                    <td class="auto-style12">Size</td>
                                    <td class="auto-style14">
                                        Net/Unit</td>
                                    <td class="auto-style7">
                                        Ext. Cost</td>
                                    <td class="auto-style13">
                                        Deliver</td>
                                    <td class="auto-style9">
                                        Install</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Plants:</td>
                                    <td class="auto-style10">
                                        &nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style14">
                                        &nbsp;</td>
                                    <td class="auto-style7">
                                        &nbsp;</td>
                                    <td class="auto-style13">
                                        &nbsp;</td>
                                    <td class="auto-style9">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="TextBox9" runat="server" Width="70px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox10" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="TextBox11" runat="server" Width="145px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="TextBox12" runat="server" Width="110px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="TextBox13" runat="server" Width="160px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:TextBox ID="TextBox14" runat="server" Width="170px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style9">
                                        <asp:TextBox ID="TextBox15" runat="server" Width="80px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Pottery:</td>
                                    <td class="auto-style10">
                                        &nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style14">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                    <td class="auto-style13">&nbsp;</td>
                                    <td class="auto-style9">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="TextBox16" runat="server" Width="70px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox17" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="TextBox18" runat="server" Width="145px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="TextBox19" runat="server" Width="110px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="TextBox20" runat="server" Width="160px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:TextBox ID="TextBox21" runat="server" Width="170px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style9">
                                        <asp:TextBox ID="TextBox22" runat="server" Width="80px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Materials:</td>
                                    <td class="auto-style10">
                                        &nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style14">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                    <td class="auto-style13">&nbsp;</td>
                                    <td class="auto-style9">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="TextBox23" runat="server" Width="70px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox24" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="TextBox25" runat="server" Width="145px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="TextBox26" runat="server" Width="110px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="TextBox27" runat="server" Width="160px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:TextBox ID="TextBox28" runat="server" Width="170px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style9">
                                        <asp:TextBox ID="TextBox29" runat="server" Width="80px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Tools:</td>
                                    <td class="auto-style10">
                                        &nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style14">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                    <td class="auto-style13">&nbsp;</td>
                                    <td class="auto-style9">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="TextBox30" runat="server" Width="70px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBox31" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style14">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                    <td class="auto-style13">&nbsp;</td>
                                    <td class="auto-style9">
                                        <asp:TextBox ID="TextBox32" runat="server" Width="80px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
            
                Labor Requirements
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style15">Desc</td>
                                    <td class="auto-style10">
                                        Hours</td>
                                    <td class="auto-style16">Cost/Hr</td>
                                    <td class="auto-style12">Ext. Cost</td>
                                    <td class="auto-style14">
                                        Time</td>
                                    <td class="auto-style7">
                                        Task</td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="TextBox34" runat="server" Width="70px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style16">
                                        <asp:TextBox ID="TextBox36" runat="server" Width="100px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="TextBox39" runat="server" Width="300px"></asp:TextBox>
                                    </td>
                                </tr>
                                </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style17">Total Est Designer Hours/Costs:</td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td class="auto-style24">&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style18"></td>
                                    <td class="auto-style19">
                                        Bid Process</td>
                                    <td class="auto-style20">
                                        <asp:Label ID="lblBidProcess" runat="server" BackColor="#CCCCCC" BorderStyle="Inset" Width="80px"></asp:Label>
                                    </td>
                                    <td class="auto-style21"></td>
                                    <td class="auto-style22">
                                        <asp:Label ID="lblBidCost" runat="server" BackColor="#CCCCCC" BorderStyle="Inset" Width="200px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">&nbsp;</td>
                                    <td class="auto-style5">
                                        Production</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="lblProd" runat="server" BackColor="#CCCCCC" BorderStyle="Inset" Width="80px"></asp:Label>
                                    </td>
                                    <td class="auto-style24">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="lblProdCost" runat="server" BackColor="#CCCCCC" BorderStyle="Inset" Width="200px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Total Est Prod Labor Hours/Costs:</td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="lblProdLabor" runat="server" BackColor="#CCCCCC" BorderStyle="Inset" Width="80px"></asp:Label>
                                    </td>
                                    <td class="auto-style24">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="lblProdLaborCost" runat="server" BackColor="#CCCCCC" BorderStyle="Inset" Width="200px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Total Est Material Costs:</td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td class="auto-style24">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="lblMatCost" runat="server" BackColor="#CCCCCC" BorderStyle="Inset" Width="200px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Total Est Hours/Costs:</td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                    <td class="auto-style23">
                                        <asp:Label ID="lblEstHrs" runat="server" BackColor="#CCCCCC" BorderStyle="Inset" Width="80px"></asp:Label>
                                    </td>
                                    <td class="auto-style24">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="lblEstCosts" runat="server" BackColor="#CCCCCC" BorderStyle="Inset" Width="200px"></asp:Label>
                                        <asp:TextBox ID="txtBidPercent" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">&nbsp;</td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td class="auto-style24">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
