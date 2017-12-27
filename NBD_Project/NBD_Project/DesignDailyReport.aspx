<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignDailyReport.aspx.cs" Inherits="NBD_Project.DailyDesignerReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Design Daily Report</title>
    <link href="Styles/jquery-ui.css" rel="stylesheet" />  
    <script src="Scripts/jquery-3.2.1.min.js"></script>  
    <script src="Scripts/jquery-ui.js"></script>
    <script>  
        $(function ()  
        {  
            $('#txtDatePicker').datepicker(  
            {  
                dateFormat: 'dd/mm/yy',  
                changeMonth: true,  
                changeYear: true,  
                yearRange: '1950:2100'  
            });  
        })  
    </script>  
    <style type="text/css">
        .auto-style50 {
            height: 343px;
            width: 1222px;
            text-align: right;
        }
        .auto-style51 {
            text-align: left;
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
        .auto-style47 {
            text-align: left;
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
            <h1>Design Daily Work Report</h1>
            <div class="auto-style50">
                <table class="auto-style1">
                    <tr>
                       
                        <td class="auto-style51">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style37">&nbsp;</td>
                        <td class="auto-style47">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                        </td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style42">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Date:&nbsp;
                        </td>
                        <td class="auto-style47">
                            <asp:TextBox ID="txtDatePicker" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDatePicker" ErrorMessage="Date is required." ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style39"></td>
                        <td class="auto-style42"></td>
                        <td class="auto-style10"></td>
                        <td class="auto-style10">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style37">&nbsp;</td>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style42">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style37"></td>
                        <td class="auto-style41">Project</td>
                        <td class="auto-style52">Stage</td>
                        <td class="auto-style52">Hours</td>
                        <td class="auto-style52">Task</td>
                        <td class="auto-style52">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style49">
                            &nbsp;</td>
                        <td class="auto-style47">
                            <asp:TextBox ID="txtProject" runat="server" Width="260px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProject" ErrorMessage="Project Name is required." ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style39">
                            <asp:TextBox ID="txtStage" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtStage" ErrorMessage="Stage is required." ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style42">
                            <asp:TextBox ID="txtHours" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtHours" ErrorMessage="Hours is required." ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style10">
                            <asp:TextBox ID="txtTask" runat="server" Width="437px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTask" ErrorMessage="Task is required." ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style10">
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="addbutton"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style38">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td class="auto-style41">&nbsp;</td>
                        <td class="auto-style44">&nbsp;</td>
                        <td class="auto-style31">&nbsp;</td>
                        <td class="auto-style31">&nbsp;</td>
                    </tr>
                    </table>
                <asp:Button ID="Button2" runat="server" Text="Create" style="text-align: right" OnClick="Button2_Click" Width="100px" CssClass="button" />
              </div>
        </div>
    </form>
</body>
</html>
