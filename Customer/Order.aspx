<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerPanel.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Customer_MyOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 90%;
        }
    .style17
    {
        width: 1389px;
            text-align: center;
        }
        .style18
        {
            width: 1389px;
            text-align: center;
            font-family: "Times New Roman", Times, serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style5">
        <tr>
            <td class="style18">
                <strong style="font-size: x-large">&nbsp; My Order&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style17" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="OId" DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    style="text-align: left">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="OId" HeaderText="OId" ReadOnly="True" 
                            SortExpression="OId" />
                        <asp:BoundField DataField="DeliverAddress" HeaderText="DeliverAddress" 
                            SortExpression="DeliverAddress" />
                        <asp:BoundField DataField="OContact" HeaderText="OContact" 
                            SortExpression="OContact" />
                        <asp:BoundField DataField="Odate" HeaderText="Odate" SortExpression="Odate" />
                        <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" 
                            SortExpression="TotalAmount" />
                        <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" 
                            SortExpression="OrderStatus" />
                        <asp:BoundField DataField="CustName" HeaderText="CustName" 
                            SortExpression="CustName" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Order] WHERE ([CustName] = @CustName)"
                     >
                    <SelectParameters>
                        <asp:SessionParameter Name="CustName" SessionField="Login" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

