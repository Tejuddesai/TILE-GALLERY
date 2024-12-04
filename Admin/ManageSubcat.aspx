<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPanel.master" AutoEventWireup="true" CodeFile="ManageSubcat.aspx.cs" Inherits="Admin_ManageSubcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style13
        {
            font-family: Georgia;
            font-size: xx-large;
        }
        .style13
    {
        height: 135px;
    }
        .style19
        {
        border-style: outset;
        border-width: 2px;
        text-align: left;
        height: 62px;
        font-family: Georgia;
        font-size: large;
        width: 249px;
    }
        .style18
        {
        width: 389px;
        height: 73px;
        border-style: outset;
        border-width: 2px;
    }
        .style18
        {
            height: 73px;
            width: 389px;
        }
        .style21
        {
            border-style: outset;
        border-width: 2px;
        text-align: left;
            font-family: Georgia;
            font-size: large;
        }
    .style22
    {
        border-style: outset;
        border-width: 2px;
    }
    .style23
    {
        border-style: outset;
        border-width: 2px;
        text-align: left;
        height: 57px;
        font-family: Georgia;
        font-size: large;
        width: 249px;
    }
    .style24
    {
        width: 389px;
        height: 57px;
        border-style: outset;
        border-width: 2px;
    }
    .style25
    {
        border-style: outset;
        border-width: 2px;
        text-align: left;
        height: 47px;
        font-family: Georgia;
        font-size: large;
        width: 249px;
    }
    .style26
    {
        width: 389px;
        height: 47px;
        border-style: outset;
        border-width: 2px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style9" 
        style="border-style: ridge; height: 833px; width: 827px;">
        <tr>
            <td class="style21" colspan="2">
                <strong><span class="style13">ManageSubCategoty<br class="style22" />
                </span></strong>
            </td>
        </tr>
        <tr>
            <td class="style19">
            SubCategory ID
            </td>
            <td class="style18">
                <asp:TextBox ID="txtid" runat="server" Height="40px" Width="250px" 
                ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
            Category Name</td>
            <td class="style18">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource3" DataTextField="CatName" DataValueField="CatName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [CatName] FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style23">
            SubCategory Name</td>
            <td class="style24">
                <asp:TextBox ID="txtname" runat="server" Height="40px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style25">
            Image</td>
            <td class="style26">
                <asp:Image ID="Image2" runat="server" Height="104px" Width="175px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" Width="320px" Height="35px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
                Text="Upload" Width="140px" BackColor="#006600" Font-Size="Medium" 
                ForeColor="White" Height="35px" />
            </td>
        </tr>
        <tr>
            <td class="style22" colspan="2">
                <asp:Button ID="btnnew" runat="server" onclick="btnnew_Click" Text="New" 
                Width="140px" BackColor="#006600" Font-Size="Medium" ForeColor="White" 
                Height="35px" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" 
                Width="140px" BackColor="#006600" Font-Size="Medium" ForeColor="White" 
                Height="35px" />
&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                Text="Update" BackColor="#006600" ForeColor="White" Height="35px" 
                Width="140px" />
&nbsp;&nbsp;
                <asp:Button ID="txtdelete" runat="server" onclick="txtdelete_Click" 
                Text="Delete" BackColor="#006600" Font-Size="Medium" ForeColor="White" 
                Height="35px" Width="140px" />
&nbsp;<asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                style="margin-left: 16px" Text="Cancel" BackColor="#006600" 
                Font-Size="Medium" ForeColor="White" Height="35px" Width="140px" />
            </td>
        </tr>
        <tr>
            <td class="style22" colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
                CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="style22">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="SubId" HeaderText="SubId" SortExpression="SubId" />
                        <asp:BoundField DataField="CatName" HeaderText="CatName" 
                        SortExpression="CatName" />
                        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                        <asp:BoundField DataField="SubName" HeaderText="SubName" 
                        SortExpression="SubName" />
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
                SelectCommand="SELECT * FROM [SubCategory]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

