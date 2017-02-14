<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scheduler.aspx.cs" Inherits="Scheduler.Scheduler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <table  >
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Grade"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddlGrade" runat="server" style="z-index: 1; left: 142px; top: 44px; position: absolute" DataValueField="FirstName" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem Value="-1">Pre-K</asp:ListItem>
                        <asp:ListItem Value="0">Kinder</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Teacher"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddlTeacher" runat="server" style="z-index: 1; left: 142px; top: 67px; position: absolute">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Assistant"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddlAssistant" runat="server" style="z-index: 1; left: 142px; top: 90px; position: absolute">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr >
                <td  colspan="2">
                    <asp:Label ID="Label5" runat="server" Text="Your teacher prefers "></asp:Label></td>
               
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Pick a Day"></asp:Label></td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Time"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddlTime" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" style="z-index: 1; left: 121px; top: 394px; position: absolute" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td>
                    &nbsp;&nbsp;</td>
            </tr>
        </table>
       </form>
</body>
</html>
