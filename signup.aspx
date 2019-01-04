<%@ Page Language="VB" AutoEventWireup="false" CodeFile="signup.aspx.vb" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 764px;
            position: absolute;
            z-index: 1;
            left: 751px;
            top: 262px;
            height: 335px;
            bottom: 0px;
        }
        .auto-style2 {
            height: 69px;
        }
        .auto-style7 {
            height: 80px;
            text-align: left;
        }
        .auto-style12 {
            text-align: left;
            height: 50px;
            width: 687px;
        }
        .auto-style13 {
            width: 686px;
            text-align: left;
            height: 50px;
        }
        .auto-style14 {
            position: absolute;
            top: 287px;
            left: 286px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 251px;
            left: 372px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 15px;
            left: 20px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image2" runat="server" CssClass="auto-style16" Height="150px" ImageUrl="~/chef_PNG75.png" />
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style7" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" Font-Size="XX-Large" ForeColor="#3333FF" Text="Sign Up"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" Text="Contact" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" AutoPostBack="True" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" Text="Password" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BackColor="Transparent" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="verdana" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" Text="Confirm Password" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" BackColor="Transparent" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#00CC00" BorderColor="#006600" BorderStyle="Solid" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" style="text-align: center; margin-left: 0px" Text="Submit" CssClass="auto-style14" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" ForeColor="Red" CssClass="auto-style15" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/bakery-dessert-food-8279.jpg" Height="847px" Width="1520px" />
    </form>
</body>
</html>
