<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NBD_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" runat="server" media="screen" href="~/CSS/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300|Raleway:300,400" rel="stylesheet"/>
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
    
        <h1><span>Natural By Design</span></h1><br />
        <br />
        <table style="width: 100%">
            <tr>
                <td>Username:
                    <asp:TextBox ID="txtUser" runat="server" BackColor="#8FBC8F" BorderColor="#266F26" Height="20px" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password:&nbsp;
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" BackColor="#8FBC8F" BorderColor="#266F26" Height="20px" Width="175px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="button" />
        <asp:Button ID="btnRegister" runat="server" CausesValidation="False" Text="Register" OnClick="btnRegister_Click" cssClass="button"/>
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    </div>
    </form>
</body>
</html>
