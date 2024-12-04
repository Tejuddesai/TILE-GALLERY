<%@ Page Title="" Language="C#" MasterPageFile="AdminPanel.master" AutoEventWireup="true" CodeFile="Managecategory.aspx.cs" Inherits="Admin_h" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       <%-- .style11
    {
        width: 86%;
            color: #000000;
            height: 1003px;
            margin-left: 0px;
        }
        .style12
        {
            color: #FFFFFF;
        }
        .style13
        {
            border-style: outset;
        border-width: 2px;
        height: 206px;
        }
        .style18
    {
        border-style: outset;
        border-width: 2px;
        text-align: left;
        height: 34px;
        font-size: xx-large;
            width: 655px;
        }
    .style20
    {
        border-style: outset;
        border-width: 2px;
        height: 48px;
        text-align: center;
    }
    .style21
    {
            border-style: outset;
        border-width: 2px;
        height: 64px;
            width: 622px;
        }
        .style22
        {
            border-style: outset;
        border-width: 2px;
        height: 26px;
            width: 445px;
            text-align: left;
            font-weight: normal;
            font-size: large;
        }
        .style24
        {
            border-style: outset;
        border-width: 2px;
        height: 26px;
            width: 622px;
            text-align: left;
        }
        .style26
        {
            border-style: outset;
        border-width: 2px;
        text-align: left;
            height: 64px;
            width: 445px;
            font-weight: normal;
            font-size: smaller;
        }
        .style28
        {
            font-size: large;
        }
        .style29
        {
            border-style: outset;
        border-width: 2px;
        text-align: left;
            height: 84px;
            width: 445px;
            font-weight: normal;
            font-size: large;
        }
        .style30
        {
            border-style: outset;
        border-width: 2px;
        height: 84px;
            width: 622px;
            text-align: left;
        }
        .style31
        {
            border-style: outset;
        border-width: 2px;
        height: 22px;
            width: 445px;
            text-align: left;
            font-weight: normal;
            font-size: large;
        }
        .style32
        {
            border-style: outset;
        border-width: 2px;
        height: 22px;
            width: 622px;
            text-align: left;
        }
    .style33
    {
        border-style: outset;
        border-width: 2px;
    }--%>
        .style13
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    v<table class="style11" 
        
        
    
    style="border-top: thin ridge #000000; height: 920px; border-left-style: ridge; border-left-width: thin; border-right-style: ridge; border-right-width: thin; border-bottom-style: ridge; border-bottom-width: thin; margin-right: 0px; width: 1020px;">
    <tr class="style12">
        <td class="style13" style="color: #000000; " colspan="2">
            <strong>Manage category </strong> </td>
    </tr>
    <tr>
        <td class="style12" style="color: #000000">
            CategoryId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="style24">
            <asp:TextBox ID="txtid" runat="server" Height="40px" Width="250px" 
                ReadOnly="True" AutoPostBack="True"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td class="style12">
            Category Name</td>
        <td class="style32">
            <asp:TextBox ID="txtname" runat="server" Height="40px" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style12">
            Category Image </td>
        <td class="style30">
            <asp:Image ID="Image2" runat="server" Height="145px" Width="228px" 
                style="margin-left: 0px" />
&nbsp;<asp:Button ID="btnupload" runat="server" onclick="btnupload_Click" 
                Text="Upload" style="margin-left: 0px" Width="126px" BackColor="#006600" 
                ForeColor="White" />
            &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;<br class="style33" />
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <span class="style12">Category Info</span> </td>
        <td class="style21">
            <asp:TextBox ID="txtinfo" runat="server" Height="99px" 
                ontextchanged="txtinfo_TextChanged" 
                style="margin-left: 0px; margin-right: 0px;" Width="394px" 
                TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style20" colspan="2">
            <asp:Button ID="btnnew" runat="server" Text="New" Width="130px" 
                onclick="btnnew_Click" BackColor="#006600" ForeColor="White" 
                Height="29px" />
            &nbsp;
            <asp:Button ID="btnsave" runat="server" Text="Save" Width="140px" 
                onclick="btnsave_Click" BackColor="#006600" ForeColor="White" 
                Height="30px" />
            &nbsp;&nbsp;<asp:Button ID="btnupdate" runat="server" Text="Update" Width="140px" 
                onclick="btnupdate_Click" BackColor="#006600" ForeColor="White" 
                Height="30px" />
            &nbsp;
            <asp:Button ID="btndelete" runat="server" Text="Delete" Width="140px" 
                onclick="btndelete_Click" BackColor="#006600" ForeColor="White" 
                Height="30px" />
            &nbsp;&nbsp;<asp:Button ID="btncancel" runat="server" Text="Cancel" Width="140px" 
                onclick="btncancel_Click" BackColor="#006600" ForeColor="White" 
                Height="30px" />
        </td>
    </tr>
    <tr>
        <td class="style13" colspan="2" align="center">
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="CatId" DataSourceID="SqlDataSource1" PageSize="5" 
                Width="615px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                Height="30px" style="font-size: medium; margin-top: 4px;" 
                AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                CssClass="style33">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="CatId" HeaderText="CatId" ReadOnly="True" 
                        SortExpression="CatId" />
                    <asp:BoundField DataField="CatName" HeaderText="CatName" 
                        SortExpression="CatName" />
                    <asp:BoundField DataField="CatImage" HeaderText="CatImage" 
                        SortExpression="CatImage" />
                    <asp:BoundField DataField="CatInfo" HeaderText="CatInfo" 
                        SortExpression="CatInfo" />
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
                SelectCommand="SELECT * FROM [Category]">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

