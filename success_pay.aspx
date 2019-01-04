<%@ Page Language="VB" AutoEventWireup="false" CodeFile="success_pay.aspx.vb" Inherits="success_pay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            border-style: none;
width: 70%;
            height: 484px;
            position: absolute;
            top: 217px;
            left: 458px;
            z-index: 1;
        }
        .auto-style2 {
            width: 502px;
        }
        .auto-style3 {
            width: 502px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            width: 351px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            position: absolute;
            top: 403px;
            left: 231px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 625px;
            left: 10px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 702px;
            left: 13px;
            z-index: 1;
        }
        .auto-style9 {
            width: 351px;
        }
        .auto-style10 {
            position: absolute;
            top: 85px;
            left: 1357px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 460px;
            left: 232px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 85px;
            left: 1128px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 21px;
            left: 20px;
            z-index: 1;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image2" runat="server" CssClass="auto-style13" Height="150px" ImageUrl="~/chef_PNG75.png" />
    
        <asp:Label ID="Label38" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="White"></asp:Label>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" Text="Order Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Order Number" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label12" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Order Date &amp; Time" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label14" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Name" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label15" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Contact" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label16" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Address Line 1" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label17" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label22" runat="server" Text="Address Line 2" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label23" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label26" runat="server" Text="City" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label28" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label27" runat="server" Text="State" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label29" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Mode Of Payment" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label18" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Total MRP" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label19" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="Total Tax" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label20" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Text="Delivery Charges" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label33" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="Medium" Text="Rs. 20" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" Text="Sub Total" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label21" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Text="Delivery Man &amp; Contact" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label35" runat="server" Font-Names="Verdana" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label11" runat="server" Text="Thank you for placing an order." Font-Names="Chiller" Font-Size="XX-Large" CssClass="auto-style6" Font-Bold="True" ForeColor="#AE0D53"></asp:Label>
        <asp:Label ID="Label30" runat="server" Font-Italic="True" Font-Names="Verdana" Font-Size="Small" CssClass="auto-style7" ForeColor="White"></asp:Label>
        <p>
            <asp:Label ID="Label31" runat="server" CssClass="auto-style8" ForeColor="White"></asp:Label>
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" Font-Underline="True" ForeColor="White" NavigateUrl="~/login.aspx">LOG OUT</asp:HyperLink>
        <asp:Label ID="Label37" runat="server" CssClass="auto-style11" Font-Bold="True" Font-Names="Chiller" Font-Size="XX-Large" ForeColor="#AE0D53" Text="Order will be delivered shortly."></asp:Label>
        <asp:Image ID="Image1" runat="server" Height="847px" ImageUrl="~/blank-card-chat-1111369.jpg" Width="1520px" />
    </form>
</body>
</html>
