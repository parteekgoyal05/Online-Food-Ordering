<%@ Page Language="VB" AutoEventWireup="false" CodeFile="card_pay.aspx.vb" Inherits="card_pay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 798px;
            height: 423px;
            position: absolute;
            top: 121px;
            left: 327px;
            z-index: 2;
        }
        .auto-style6 {
            width: 565px;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style10 {
            width: 564px;
            text-align: left;
        }
        .auto-style11 {
            position: absolute;
            top: 607px;
            left: 229px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 607px;
            left: 572px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 607px;
            left: 816px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 562px;
            left: 1061px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 204px;
            left: 418px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 426px;
            left: 377px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 394px;
            left: 350px;
            z-index: 1;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="OCR A Extended" Font-Size="XX-Large" Text="Enter Card Details" BorderStyle="None"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Enter Card Number" Font-Bold="True" Font-Names="OCR A Std" Font-Size="Medium"></asp:Label>
                </td>
                <td class="auto-style6">
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server" Font-Bold="False" Font-Names="OCR A Std" Font-Size="Medium" BackColor="Transparent" MaxLength="16"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" Font-Italic="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Expiry Month/Year " Font-Bold="True" Font-Names="OCR A Std" Font-Size="Medium"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="month" DataTextField="month" DataValueField="month" Font-Bold="False" Font-Names="OCR A Std" Font-Size="Medium" BackColor="Transparent" AppendDataBoundItems="True">
                        <asp:ListItem Value="0">---Select---</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="month" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="SELECT [month] FROM [Card]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" ForeColor="Red" InitialValue="0">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="year" DataTextField="year" DataValueField="year" Font-Bold="False" Font-Italic="False" Font-Names="OCR A Std" Font-Size="Medium" BackColor="Transparent" AppendDataBoundItems="True">
                        <asp:ListItem Value="0">---Select---</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="year" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="SELECT [year] FROM [Card]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" ForeColor="Red" InitialValue="0">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Enter CVV" Font-Bold="True" Font-Names="OCR A Std" Font-Size="Medium"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Bold="False" Font-Names="OCR A Std" Font-Size="Medium" Width="40px" BackColor="Transparent" MaxLength="3" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" Font-Italic="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="OCR A Std" Font-Size="Medium" Text="Card Holder Name"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" Font-Names="OCR A Std" Font-Size="Medium"></asp:TextBox>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style17" Font-Bold="True" Font-Names="Verdana" ForeColor="Red"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Pay" Font-Bold="True" Font-Names="OCR A Std" Font-Size="Medium" Width="90px" BackColor="Silver" BorderColor="#CCCCCC" BorderStyle="Outset" CssClass="auto-style16" />
                </td>
            </tr>
            </table>
        <asp:Image ID="Image1" runat="server" CssClass="auto-style11" Height="100px" ImageUrl="~/58482363cef1014c0b5e49c1.png" />
        <asp:Image ID="Image2" runat="server" CssClass="auto-style12" Height="100px" ImageUrl="~/Mastercard-PNG-Image-34335.png" />
        <asp:Image ID="Image3" runat="server" CssClass="auto-style13" Height="100px" ImageUrl="~/1280px-Maestro_logo.svg.png" />
        <asp:Image ID="Image4" runat="server" CssClass="auto-style14" Height="200px" ImageUrl="~/1200px-RuPay.svg.png" />
        <asp:Image ID="Image5" runat="server" CssClass="auto-style15" Height="300px" ImageUrl="~/qwqw.png" Width="670px" />
    </form>
</body>
</html>
