<%@ Page Language="VB" AutoEventWireup="false" CodeFile="show_menu_new.aspx.vb" Inherits="show_menu_new" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 963px;
            height: 457px;
            position: absolute;
            top: 111px;
            left: 547px;
            z-index: 1;
        }
        .auto-style3 {
            width: 564px;
            height: 56px;
        }
        .auto-style4 {
            height: 56px;
            width: 565px;
        }
        .auto-style6 {
            width: 564px;
        }
        .auto-style7 {
            width: 565px;
        }
        .auto-style8 {
            margin-bottom: 0px;
        }
        .auto-style9 {
            position: absolute;
            top: 767px;
            left: 150px;
            z-index: 1;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            position: absolute;
            top: 62px;
            left: 171px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 59px;
            left: 1187px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 757px;
            left: 320px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: -54px;
            left: 865px;
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
                <td class="auto-style3">
                    <asp:Panel ID="Panel1" runat="server" Height="310px" Width="510px" BackColor="Transparent" ScrollBars="Auto">
                        <div class="auto-style10">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1n" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White" PageSize="7" Width="490px" Height="337px">
                                <Columns>
                                    <asp:TemplateField HeaderText="Sr. No." SortExpression="FoodCode">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FoodCode") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("FoodCode") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="FoodName" HeaderText="Item Name" SortExpression="FoodName" ReadOnly="True" />
                                    <asp:BoundField DataField="Price" HeaderText="Price (Rs.)" SortExpression="Price" />
                                    <asp:TemplateField HeaderText="Select">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Transparent" DataSourceID="SqlDataSource3n" DataTextField="RestaurantCode" DataValueField="RestaurantCode" Font-Bold="True" Font-Names="Verdana" ForeColor="Silver">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource3n" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="SELECT [RestaurantCode] FROM [Restaurant]"></asp:SqlDataSource>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1n" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="showmenu" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:SessionParameter Name="rest_code" SessionField="rest" Type="Int64" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                </td>
                <td class="auto-style4">
                    <asp:Panel ID="Panel2" runat="server" Width="450px" BackColor="Transparent" Height="200px" ScrollBars="Auto">
                        <div class="auto-style10">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2n" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White" PageSize="7" Width="391px">
                                <Columns>
                                    <asp:BoundField DataField="FoodName" HeaderText="Item Name" SortExpression="FoodName" />
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                    <asp:BoundField DataField="QPrice" HeaderText="Amount (Rs.)" SortExpression="QPrice" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource2n" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="show_items" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:SessionParameter Name="orderno" SessionField="ordernumber" Type="Int64" />
                                <asp:SessionParameter Name="resta" SessionField="rest" Type="Int64" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="Proceed" Width="100px" BorderColor="White" BorderStyle="Outset" Font-Bold="True" />
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style14" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" Font-Underline="True" ForeColor="White" NavigateUrl="~/login.aspx">LOG OUT</asp:HyperLink>
                    <asp:Button ID="Button4" runat="server" Text="Update" Width="100px" BorderColor="White" BorderStyle="Outset" Font-Bold="True" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" Text="Confirm Order" Width="123px" BorderColor="White" BorderStyle="Outset" Font-Bold="True" />
                    <asp:Button ID="Button3" runat="server" Text="Update Order" CssClass="auto-style8" Width="123px" BorderColor="White" BorderStyle="Outset" Font-Bold="True" />
                </td>
            </tr>
            </table>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style9" ForeColor="White"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style11" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="White"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Names="Verdana" ForeColor="White"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style13"></asp:Label>
        <asp:Image ID="Image1" runat="server" Height="847px" ImageAlign="Middle" ImageUrl="~/EDIT2.png" Width="1520px" />
    </form>
</body>
</html>
