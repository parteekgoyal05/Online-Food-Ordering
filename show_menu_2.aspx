<%@ Page Language="VB" AutoEventWireup="false" CodeFile="show_menu_2.aspx.vb" Inherits="show_menu_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 232px;
            height: 152px;
            top: 133px;
            left: 804px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 293px;
            left: 553px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 431px;
            left: 762px;
            z-index: 1;
            height: 29px;
            right: 230px;
            bottom: 100px;
        }
        .auto-style4 {
            position: absolute;
            top: 431px;
            left: 928px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 501px;
            left: 900px;
            z-index: 1;
        }
        .auto-style6 {
            width: 1131px;
            height: 22px;
            position: absolute;
            top: 100px;
            left: 10px;
        }
        .auto-style7 {
            width: 504px;
            height: 312px;
            position: absolute;
            top: 80px;
            left: 637px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <p class="auto-style6" style="z-index: 1">
            &nbsp;</p>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style7" ScrollBars="Vertical">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataSourceID="showitem" style="z-index: 1">
                <Columns>
                    <asp:BoundField DataField="FoodName" HeaderText="FoodName" SortExpression="FoodName" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="QPrice" HeaderText="QPrice" SortExpression="QPrice" />
                </Columns>
            </asp:GridView>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="324px" Width="528px" ScrollBars="Vertical">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:TemplateField HeaderText="FoodCode" SortExpression="FoodCode">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FoodCode") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("FoodCode") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="FoodName" HeaderText="FoodName" SortExpression="FoodName" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:TemplateField HeaderText="Choose">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="qqq" DataTextField="RestaurantCode" DataValueField="RestaurantCode">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="qqq" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="SELECT [RestaurantCode] FROM [Restaurant]"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="showmenu" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="rest_code" SessionField="rest" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Text="Button" />
        <asp:SqlDataSource ID="showitem" runat="server" ConnectionString="<%$ ConnectionStrings:Food_OrderingConnectionString %>" SelectCommand="show_items" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="orderno" SessionField="ordernumber" Type="Int32" />
                <asp:SessionParameter Name="resta" SessionField="rest" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="Confirm Order" />
        <asp:Button ID="Button3" runat="server" CssClass="auto-style4" Text="Update Order" />
        <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Update your order"></asp:Label>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
