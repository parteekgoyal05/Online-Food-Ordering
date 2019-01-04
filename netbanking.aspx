<%@ Page Language="VB" AutoEventWireup="false" CodeFile="netbanking.aspx.vb" Inherits="paytm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Welcome To NetBanking" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Large"></asp:Label>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Contact" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Names="Verdana" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Names="Verdana" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Pay" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" Width="121px" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Names="Verdana" Font-Size="Medium"></asp:Label>
    </form>
</body>
</html>
