<%@ Page Language="VB" AutoEventWireup="false" CodeFile="paytm.aspx.vb" Inherits="paytm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 92px;
            position: absolute;
            top: 289px;
            left: 10px;
            z-index: 1;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 802px;
        }
        .auto-style4 {
            width: 802px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            text-align: left;
        }
        .auto-style6 {
            position: absolute;
            top: 437px;
            left: 548px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 89px;
            left: 590px;
            z-index: 1;
            width: 379px;
            height: 103px;
        }
        .auto-style8 {
            height: 87px;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            position: absolute;
            top: 513px;
            left: 580px;
            z-index: 1;
            width: 125px;
            height: 101px;
        }
        .auto-style11 {
            position: absolute;
            top: 552px;
            left: 691px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
    <div>
    
        <asp:Image ID="Image2" runat="server" CssClass="auto-style10" ImageUrl="~/1_vM6-rBgG-wThryScv5wwrg.jpeg" />
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Welcome To" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Large" ForeColor="#000099"></asp:Label>
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Contact" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="#000099"></asp:Label>
                </td>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="#000099"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="#000099"></asp:Label>
                </td>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Font-Names="Verdana" Font-Size="Large" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="Pay" BackColor="Silver" BorderColor="Silver" BorderStyle="Outset" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" Width="148px" />
                </td>
            </tr>
        </table>
        </div>
        <p>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Font-Italic="True" Font-Names="Verdana" ForeColor="#000099"></asp:Label>
        </p>
        <p>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style7" ImageUrl="~/Paytm_logo.png" />
            <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Large" ForeColor="#00BAF2" Text="#PaytmKaro"></asp:Label>
        </p>
    </form>
</body>
</html>
