<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductionDailyReport.aspx.cs" Inherits="NBD_Project.ProductionDailyReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #welcome {
            height: 47px;
        }
        .auto-style1 {
            width: 898px;
        }
        .auto-style5 {
            width: 224px;
        }
        .auto-style6 {
            width: 224px;
            text-align: center;
            font-weight: bold;
            text-decoration: underline;
        }
        .auto-style7 {
            width: 587px;
        }
        .auto-style9 {
            width: 117px;
        }
        .auto-style10 {
            width: 117px;
            text-align: center;
            font-weight: bold;
            text-decoration: underline;
        }
        .auto-style11 {
            text-align: left;
            height: 128px;
        }
        .auto-style12 {
            text-align: center;
            height: 136px;
        }
    </style>
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
        
        <div style="height: 544px" class="auto-style11">
            <div class="auto-style12">
                <strong>Production Daily Report<br />
                Date&nbsp;: December 13th, 2017<br />
                Project: Niagara College Canada</strong><br />
                </div>
                
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Materials Used"></asp:Label>
                <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">Code</td>
                    <td class="auto-style6">Quantity</td>
                    <td class="auto-style6">Unit Cost</td>
                    <td class="auto-style6">Ext. Cost</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="212px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="210px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" Height="19px" Width="211px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server" Height="21px" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server" Height="16px" Width="212px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="212px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox7" runat="server" Height="16px" Width="206px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox8" runat="server" Height="21px" Width="201px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" style="margin-bottom: 23px" Text="Add" />
            <br />
            <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Labor"></asp:Label>
            <br />
            <table class="auto-style7">
                <tr>
                    <td class="auto-style10">Worker</td>
                    <td class="auto-style10">Hours</td>
                    <td class="auto-style10">Cost/Hr</td>
                    <td class="auto-style10">Ext.Cost</td>
                    <td class="auto-style10">Task</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="BtnAdd2" runat="server" OnClick="BtnAdd_Click" style="margin-bottom: 23px" Text="Add" />
          </div>
          <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
          <asp:Button ID="btnExit" runat="server" OnClick="btnExit_Click" Text="Exit" />
    </form>
</body>
</html>
