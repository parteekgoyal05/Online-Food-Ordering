<%@ Page Language="VB" AutoEventWireup="false" CodeFile="phonepe.aspx.vb" Inherits="paytm" %>

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
        <asp:Label ID="Label1" runat="server" Text="Welcome To PhonePe"></asp:Label>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Contact"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Pay" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label5" runat="server"></asp:Label>
    </form>
</body>
</html>
