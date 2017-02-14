<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="Scheduler.CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 186px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table >
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label> </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName" ErrorMessage="First Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLName" ErrorMessage="Last Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage=" Email Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                     </td>
                </tr>
                 <tr>
                    <td>
                        Phone Number</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPhNumber" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid Phone Number" ForeColor="red" ControlToValidate="txtPhNumber" Display="Dynamic">*</asp:RangeValidator>
                     </td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="UserName"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUserName" ErrorMessage=" UserName Required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Password"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage=" Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>

                </tr>
                  <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Retype-Password"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtRetypePassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRetypePassword" ErrorMessage="Retype Password required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords must match" ControlToValidate="txtRetypePassword" ControlToCompare="txtPassword" ForeColor="Red" Display="Dynamic">*</asp:CompareValidator>          
                      </td>

                </tr>
                <tr style="float: right" >
                    <td style="float: right" >

                        <asp:Button ID="btnCreate" runat="server" Text="Register" OnClick="btnCreate_Click"   />
                        </td>
                </tr>
                <tr>
                    <td> 
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                   <td class="auto-style1"> 
                       <div hidden="hidden" id="divCreate">                       <asp:Label Text="" runat="server"  ID="lblIsCreated" />
                       <a href="Login.aspx" >Login 
                           <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                           </a>    
                       </div>
                           </td>
                </tr>


            </table>
        </div>
        
        <br />
        <br />
    </form>
</body>
</html>
