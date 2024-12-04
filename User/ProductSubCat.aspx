<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="ProductSubCat.aspx.cs" Inherits="User_ProductSubCat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style11
        {
                }
        .style9
        {
        
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="" width="100%">
        <tr>
            <td class="">
                <asp:DataList ID="DataList4" runat="server" CellPadding="10" CellSpacing="10" 
                    DataSourceID="SqlDataSource1" RepeatColumns="1" Height="16px" 
                    style="text-align: left; margin-left: 0px; margin-top: 0px">
                    <ItemTemplate>
                        <table align="center" class="">
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" runat="server" 
                                        style="font-weight: 700; text-decoration: underline; font-size: xx-large" 
                                        Text='<%# Eval("CatName") %>'></asp:Label>
                                </td>
                            </tr>
                       
                            <tr>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("CatInfo") %>' 
                                        style="text-align: justify" Width="1200px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                     
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [CatInfo], [CatName] FROM [Category] WHERE ([CatName] = @CatName)">
                    <SelectParameters>
                        <asp:SessionParameter Name="CatName" SessionField="cat" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
            </td>
        </tr>
        <tr>
            <td class="">
                <asp:DataList ID="DataList3" runat="server" CellPadding="10" CellSpacing="5" 
                    DataSourceID="SqlDataSource3" RepeatColumns="4" RepeatDirection="Horizontal" 
                    >
                    <ItemTemplate>
                        <table align="center" class="">
                            <tr>
                                <td class="">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                        CommandArgument='<%# Eval("SubName") %>' Height="152px" 
                                        ImageUrl='<%# Eval("Image") %>'  onclick="ImageButton2_Click" Width="260px" 
                                        Style = "border-radius:10px;" />
                                </td>
                            </tr>
                            <tr>
                                <td class="">
                                    <asp:Label ID="Label8" runat="server" style="font-weight: 700" 
                                        Text='<%# Eval("SubName") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                     
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [SubCategory] WHERE ([CatName] = @CatName)">
                    <SelectParameters>
                        <asp:SessionParameter Name="CatName" SessionField="cat" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

