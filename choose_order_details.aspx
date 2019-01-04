<%@ Page Language="VB" AutoEventWireup="false" CodeFile="choose_order_details.aspx.vb" Inherits="choose_order_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 375px;
            position: absolute;
            top: 186px;
            left: 441px;
            z-index: 1;
        }
        .auto-style2 {
            width: 482px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 519px;
        }
        .auto-style5 {
            width: 482px;
            height: 29px;
        }
        .auto-style6 {
            width: 519px;
            height: 29px;
        }
        .auto-style7 {
            position: absolute;
            top: 781px;
            left: 440px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 65px;
            left: 1364px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 66px;
            left: 1120px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label17" runat="server" CssClass="auto-style9" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black" NavigateUrl="~/login.aspx">LOG OUT</asp:HyperLink>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Large" ForeColor="Black" Text="Enter Delivery Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Order Number" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Contact" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" BackColor="Transparent" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Delivery Address" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" BackColor="Transparent" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" BackColor="Transparent" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Text="City" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="State" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Payment Mode" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="paymnt_mode" DataTextField="PaymentMode" DataValueField="PaymentModeCode" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" AppendDataBoundItems="True" BackColor="Transparent" ForeColor="Black">
                        <asp:ListItem Value="0">---Select---</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="paymnt_mode" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="SELECT [PaymentMode], [PaymentModeCode] FROM [PaymentMode]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="Red" InitialValue="0">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" Text="Delivery Charge" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black">20</asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Proceed To Pay" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="Verdana" Font-Size="Medium" CssClass="auto-style7"></asp:Label>
        <asp:Image ID="Image1" runat="server" Height="847px" ImageAlign="Middle" ImageUrl="~/cakes-chocolate-close-up-959079.jpg" Width="1520px" />
    </form>
</body>
</html>
