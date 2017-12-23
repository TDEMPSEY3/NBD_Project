<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignBudget.aspx.cs" Inherits="NBD_Project.DesignBudget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Design Budget</title>
    <link href="Styles/jquery-ui.css" rel="stylesheet" />  
    <script src="Scripts/jquery-3.2.1.min.js"></script>  
    <script src="Scripts/jquery-ui.js"></script>
    <script>  
        $(function ()  
        {  
            $('#txtClientDate').datepicker(  
            {  
                dateFormat: 'dd/mm/yy',  
                changeMonth: true,  
                changeYear: true,  
                yearRange: '1950:2100'  
            });  
        })  
        $(function () {
            $('#txtProjDateBegin').datepicker(
                {
                    dateFormat: 'dd/mm/yy',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '1950:2100'
                });
        })  
        $(function () {
            $('#txtProjDateCompl').datepicker(
                {
                    dateFormat: 'dd/mm/yy',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '1950:2100'
                });
        })  
        $(function () {
            $('#txtDesignDate1').datepicker(
                {
                    dateFormat: 'dd/mm/yy',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '1950:2100'
                });
        })
        $(function () {
            $('#txtDesignDate2').datepicker(
                {
                    dateFormat: 'dd/mm/yy',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '1950:2100'
                });
        })  
    </script>  
        <style type="text/css">
            .auto-style1 {
                text-align: center;
            }
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
                width: 540px;
            }
            .auto-style8 {
                width: 192px;
            }
            .auto-style10 {
                width: 174px;
                text-align: center;
            }
            .auto-style11 {
                width: 121px;
                text-align: center;
            }
            .auto-style12 {
                width: 540px;
                text-align: center;
            }
            .auto-style13 {
                width: 192px;
                height: 26px;
            }
            .auto-style14 {
                width: 540px;
                height: 26px;
                text-align: center;
            }
            .auto-style15 {
                width: 121px;
                text-align: center;
                height: 26px;
            }
            .auto-style16 {
                width: 174px;
                text-align: center;
                height: 26px;
            }
            .auto-style17 {
                text-align: center;
                height: 26px;
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
        
        <div id="mainDiv">
            <h1>Design Budget</h1>
            <div class="auto-style1">
                
            </div>
            <div>
                Client
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style4">Client Name:</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">Contact:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Client Address:</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">Phone:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">Contact Date:</td>
                                    <td>
                                        <asp:TextBox ID="txtClientDate" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                NBD Staff
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
                                    <td class="auto-style4">Phone:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Designer:</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox8" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">Phone:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                Project
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style4">Budget Sumitted:</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox10" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">Project Site:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Est Begin Date:</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="txtProjDateBegin" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">Bid Amount:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox13" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Est Compl Date:</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="txtProjDateCompl" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                Design Budget
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style7">
                                        Task</td>
                                    <td class="auto-style11">Date</td>
                                    <td class="auto-style10">Hours</td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Hours to Date:</td>
                                    <td class="auto-style7">
                                        &nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="TextBox20" runat="server" Width="510px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="txtDesignDate1" runat="server" Width="100px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="TextBox22" runat="server" Width="100px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Estimated Hours:</td>
                                    <td class="auto-style7">
                                        &nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="TextBox25" runat="server" Width="510px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="txtDesignDate2" runat="server" Width="100px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style7">
                                        &nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Total Hours</td>
                                    <td class="auto-style7">
                                        &nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="TextBox23" runat="server" Width="100px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style7">
                                        &nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style7">
                                        &nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style12">
                                        ____________________</td>
                                    <td class="auto-style11">____________</td>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style13"></td>
                                    <td class="auto-style14">
                                        Submitted by</td>
                                    <td class="auto-style15">Date</td>
                                    <td class="auto-style16"></td>
                                    <td class="auto-style17">
                                    </td>
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
