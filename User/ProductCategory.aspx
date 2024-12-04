<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="ProductCategory.aspx.cs" Inherits="User_ProductCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
          
            }
        .style10
        {
        
        
        }
        .style11
        {
        
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="6" cellspacing="3" width="100%">
        <tr>
            <td style="text-align: left; color: #990000; font-weight: 700; font-size: large;">
                Select Product Category<hr noshade="noshade" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="4" RepeatDirection="Horizontal" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" CellPadding="5" 
                    CellSpacing="5">
                    <ItemTemplate>
                        <table align="center" cellpadding="2" cellspacing="1" >
                            <tr>
                                <td class="">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                        CommandArgument='<%# Eval("CatName") %>' Height="170px" 
                                        ImageUrl='<%# Eval("CatImage") %>' onclick="ImageButton1_Click1" 
                                        Width="280px" style = "border-radius:10px"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="">
                                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: large;" 
                                        Text='<%# Eval("CatName") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                     
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [CatName], [CatImage] FROM [Category] ">
                    <SelectParameters>
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

