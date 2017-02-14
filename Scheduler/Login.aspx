<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Scheduler.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td class="auto-style2">
                    <asp:Label Text="User Name" runat="server" />
                </td>
                <td class="auto-style2">
                    <asp:TextBox runat="server" ID="txtUserName" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="User Name Required" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" Text="Password" runat="server" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtPassword" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Password Required" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td>
                    
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                 </td>   
            </tr>

            <tr>
                <td>
                    <a href="CreateUser.aspx" > New User Registration</a>

                </td>
               
            </tr>
            <tr>
                <td>
                    <a href="#"> Forgot Password?</a>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    
    
        </form>
</body>
</html>
