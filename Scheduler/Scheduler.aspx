<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scheduler.aspx.cs" Inherits="Scheduler.Scheduler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
        .auto-style3 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <table  >
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Grade"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddlGrade" runat="server" style="z-index: 1; left: 122px; top: 44px; position: absolute; height: 25px;" DataValueField="FirstName" OnSelectedIndexChanged="ddlgrade_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>-------</asp:ListItem>
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
                    <asp:DropDownList ID="ddlTeacher" runat="server" style="z-index: 1; left: 122px; top: 67px; position: absolute" AutoPostBack="True" OnSelectedIndexChanged="ddlTeacher_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr >
                <td  colspan="2">
                    <asp:Label ID="lblComments" runat="server" ForeColor="#6600FF"></asp:Label>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Assistant"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddlAssistant" runat="server"  AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Pick a Day"></asp:Label></td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Time"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddlTime" runat="server" AutoPostBack="True"></asp:DropDownList></td>
            </tr>
            <tr >
               
                <td colspan="2" display: inline-block; >
                    &nbsp;&nbsp;<asp:Button ID="txtSubmit" runat="server" Text="Submit" Width="171px" />
                </td>
            </tr>
        </table>
       </form>
</body>
</html>
