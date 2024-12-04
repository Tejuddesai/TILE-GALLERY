<%@ Page Title="" Language="C#" MasterPageFile="AdminPanel.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            border-style: ridge;
            width: 52%;
            height: 275px;
            margin-left: 0px;
            margin-top: 0px;
    }
        .style18
        {
            border-style: outset;
        border-width: 2px;
        text-align: left;
            width: 739px;
            color: #000000;
            font-size: large;
            font-family: Georgia;
        }
        .style19
        {
            border-style: outset;
        border-width: 2px;
        width: 923px;
            text-align: left;
        }
        .style20
        {
            color: #000000;
        }
        .style21
        {
            border-style: outset;
        border-width: 2px;
        text-align: left;
            color: #000000;
            height: 70px;
            font-size: xx-large;
            font-family: Gabriola;
        }
        .style23
        {
            border-style: outset;
        border-width: 2px;
        text-align: left;
            width: 739px;
            color: #000000;
            height: 54px;
            font-size: large;
            font-family: Georgia;
        }
        .style24
        {
            border-style: outset;
        border-width: 2px;
        width: 923px;
            height: 54px;
            text-align: left;
        }
        .style25
        {
            border-style: outset;
        border-width: 2px;
        height: 74px;
            text-align: center;
        }
        .style26
        {
            font-family: Georgia;
        }
        .style27
        {
            border-style: outset;
        border-width: 2px;
        text-align: left;
            width: 739px;
            color: #000000;
            font-size: large;
            font-family: Georgia;
            height: 48px;
        }
        .style28
        {
            border-style: outset;
        border-width: 2px;
        width: 923px;
            text-align: left;
            height: 48px;
        }
    .style29
    {
        border-style: outset;
        border-width: 2px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table class="style13" align="center">
            <tr>
                <td class="style21" colspan="2">
                    <strong class="style26">Change Passwords</strong></td>
            </tr>
            <tr>
                <td class="style27">
                    Admin&nbsp; Name
                </td>
                <td class="style28">
                    <asp:TextBox ID="txtaname" runat="server" Height="40px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    Password</td>
                <td class="style19">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="40px" 
                        Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style23">
                    New Password</td>
                <td class="style24">
                    <asp:TextBox ID="txtnewpassword" runat="server" TextMode="Password" 
                        Height="40px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style25" colspan="2">
                    <asp:Button ID="btnupdate" runat="server" Text="Update" 
                        onclick="btnupdate_Click" Width="140px" Height="35px" BackColor="#006600" 
                        Font-Size="Medium" ForeColor="White" />
                    <span class="style20">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    </span>
                    <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                        onclick="btncancel_Click" Width="140px" Height="35px" BackColor="#006600" 
                        Font-Size="Medium" ForeColor="White" />
                </td>
            </tr>
            <tr>
                <td class="style29" colspan="2" align="center">
                    <asp:GridView ID="GridView1" runat="server" style="color: #000000; font-size: medium;" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" Height="58px" 
                        Width="445px" CellPadding="4" ForeColor="#333333" GridLines="None" 
                        CssClass="style29">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="AdminName" HeaderText="AdminName" 
                                SortExpression="AdminName" />
                            <asp:BoundField DataField="AdminPassword" HeaderText="AdminPassword" 
                                SortExpression="AdminPassword" />
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
                        SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

