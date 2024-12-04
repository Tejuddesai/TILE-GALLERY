<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPanel.master" AutoEventWireup="true" CodeFile="ProcessOrder.aspx.cs" Inherits="Admin_ProcessOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style12">
        <tr>
            <td>
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
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                    SelectCommand="SELECT * FROM [Order]"
                     UpdateCommand="update[Order] set [OrderStatus]=@OrderStatus where [OId]=@OId" 
                      DeleteCommand="delete from [Order] where [OId]=@OId"></asp:SqlDataSource></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

