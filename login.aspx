<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 49%;
            height: 407px;
            position: absolute;
            top: 277px;
            left: 82px;
            z-index: 1;
        }
        .auto-style9 {
            margin-bottom: 0px;
        }
        .auto-style14 {
            height: 50px;
            width: 209px;
            text-align: left;
        }
        .auto-style15 {
            height: 50px;
            text-align: left;
            width: 61%;
        }
        .auto-style16 {
            height: 60px;
            text-align: left;
        }
        .auto-style17 {
            position: absolute;
            top: 286px;
            left: 299px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 674px;
            left: 410px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 675px;
            left: 295px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="XX-Large" ForeColor="White" Text="Log In" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" Text="Contact" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Names="Verdana" Font-Size="Large" BackColor="Transparent" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="Red" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" Text="Password" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Font-Names="Verdana" Font-Size="Large" BackColor="Transparent" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" Font-Names="Verdana" ForeColor="Red" Font-Bold="True" Font-Size="Medium">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="Transparent" BorderStyle="Outset" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" Text="Submit" />
                    <asp:Label ID="Label4" runat="server" ForeColor="Red" CssClass="auto-style17" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style18" Font-Bold="False" Font-Size="Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/signup.aspx">Sign Up</asp:HyperLink>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="New User ?"></asp:Label>
        <asp:Image ID="Image1" runat="server" CssClass="auto-style9" Height="847px" ImageAlign="Middle" ImageUrl="~/appetizer-breakfast-cuisine-326278.jpg" Width="1520px" />
    </form>
</body>
</html>
