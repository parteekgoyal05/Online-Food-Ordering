<%@ Page Language="VB" AutoEventWireup="false" CodeFile="choose_state_city_res.aspx.vb" Inherits="choose_state_city_res" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 33%;
            background-color: #000000;
            height: 139px;
            position: absolute;
            top: 217px;
            left: 122px;
            z-index: 1;
        }
        .auto-style2 {
            text-align: center;
            height: 135px;
            width: 1125px;
        }
        .auto-style3 {
            position: absolute;
            top: 408px;
            left: 340px;
            z-index: 1;
            width: 275px;
            height: 24px;
        }
        .auto-style4 {
            position: absolute;
            top: 465px;
            left: 340px;
            z-index: 1;
            width: 290px;
            height: 128px;
        }
        .auto-style5 {
            position: absolute;
            top: 526px;
            left: 338px;
            z-index: 1;
            width: 290px;
            height: 130px;
        }
        .auto-style6 {
            position: absolute;
            top: 593px;
            left: 322px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 410px;
            left: 154px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 467px;
            left: 154px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 530px;
            left: 152px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 639px;
            left: 303px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 260px;
            left: 875px;
            z-index: 1;
            height: 326px;
        }
        .auto-style12 {
            position: absolute;
            top: 409px;
            left: 640px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 465px;
            left: 640px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 527px;
            left: 640px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 81px;
            left: 1164px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 82px;
            left: 1387px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style16" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black" NavigateUrl="~/login.aspx">LOG OUT</asp:HyperLink>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" BorderColor="White" BorderStyle="Solid" Font-Names="Verdana" Font-Size="XX-Large" ForeColor="White" Height="53px" Text="Choose Restaurant" Width="419px"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" AutoPostBack="True" DataSourceID="foodstate" DataTextField="StateName" DataValueField="StateName" AppendDataBoundItems="True">
            <asp:ListItem Value="0">---Select---</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="foodstate" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="SELECT [StateName] FROM [State] ORDER BY [StateName]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style4" Height="24px" Width="275px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="City_Name" DataValueField="City_Name" AppendDataBoundItems="True">
            <asp:ListItem Value="0">---Select---</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="choose_city" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="state" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style5" Height="24px" Width="275px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="RestaurantName" DataValueField="RestaurantCode" AppendDataBoundItems="True">
            <asp:ListItem Value="0">---Select---</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="choose_restaurant" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="city" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style12" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="Red" InitialValue="0">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" CssClass="auto-style13" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" ForeColor="Red" InitialValue="0">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList3" CssClass="auto-style14" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="Verdana" ForeColor="Red" InitialValue="0">*</asp:RequiredFieldValidator>
        <asp:Image ID="Image1" runat="server" CssClass="auto-style11" ImageUrl="~/final_res_1.jpg" />
        <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Text="Select City"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Text="Select State"></asp:Label>
        <asp:Button ID="Button1" runat="server" BackColor="Black" BorderStyle="None" CssClass="auto-style6" Font-Names="Verdana" Font-Size="Medium" ForeColor="White" Text="Submit" />
        <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="Black"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Text="Select Restaurant"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"></asp:Label>
    </form>
</body>
</html>
