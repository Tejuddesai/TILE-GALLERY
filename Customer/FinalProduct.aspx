<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerPanel.master" AutoEventWireup="true" CodeFile="FinalProduct.aspx.cs" Inherits="Customer_FinalProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class=""width="100%">
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label" 
                    style="font-weight: 700; text-decoration: underline; font-size: x-large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="PId" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table align="center" class="style9">
                            <tr>
                                <td colspan="2">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        CommandArgument='<%# Eval("PName") %>' Height="200px" 
                                        ImageUrl='<%# Eval("PImage") %>' style="text-align: center;border-radius:10px" 
                                        Width="350px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" style="font-weight: 700" 
                                        Text='<%# Eval("PName") %>' Width="200px"></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="btnview" runat="server" BackColor="#006600" BorderStyle="None" 
                                        CommandArgument='<%# Eval("PName") %>' ForeColor="White" Height="30px" 
                                        onclick="btnview_Click" Text="View More" Width="140px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    Size:<asp:Label ID="Label3" runat="server" Text='<%# Eval("Size") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="color: #CC3300">
                                    <strong>MRP $
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                    /sq.ft</strong></td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product] WHERE ([SubCategory] = @SubCategory)">
                    <SelectParameters>
                        <asp:SessionParameter Name="SubCategory" SessionField="subcat" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

