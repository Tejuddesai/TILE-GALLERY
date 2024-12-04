<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerPanel.master" AutoEventWireup="true" CodeFile="cancelOrder.aspx.cs" Inherits="Customer_cancelOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style17
    {
        width: 100%;
    }
    .style18
    {
        height: 31px;
    }
        .style5
        {
            width: 90%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style17">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style18">
    <table align="center" class="style5">
        <tr>
            <td class="style17">
                &nbsp;<hr />
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="OId" DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
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
                        <asp:CommandField ShowDeleteButton="True" />
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
                    SelectCommand="SELECT * FROM [Order] WHERE ([CustName] = @CustName)" >
                    <SelectParameters>
                        <asp:SessionParameter Name="CustName" SessionField="Login" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
        </td>
    </tr>
</table>
</asp:Content>

