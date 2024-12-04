<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerPanel.master" AutoEventWireup="true" CodeFile="CartPage.aspx.cs" Inherits="Customer_CartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<style type="text/css">
        .style5
    {
        width: 92%;
            height: 517px;
        }
        .style10
        {
            height: 45px;
        }
        .style11
        {
            width: 526px;
            height: 178px;
            text-align: left;
        }
        .style12
        {
            height: 178px;
            text-align: left;
        }
        .style14
        {
            text-align: center;
            font-size: medium;
        }
        .style15
        {
            width: 206px;
        }
        .style16
        {
            height: 79px;
        }
        .style18
        {
            font-weight: normal;
            font-size: medium;
            text-align: left;
        }
        .style21
        {
            height: 45px;
        }
        .style22
        {
            text-align: center;
            height: 58px;
        }
        .style23
        {
            height: 58px;
            text-align: left;
        }
        .style27
        {
            width: 100%;
        }
        .style28
        {
            font-weight: normal;
            font-size: medium;
            height: 37px;
        }
        .style29
        {
            width: 536px;
        }
        .style30
        {
            text-align: left;
        }
        .style31
        {
            height: 45px;
            text-align: left;
        }
        .style32
        {
            height: 45px;
            width: 537px;
            text-align: left;
        }
        .style33
        {
            font-size: medium;
        }
    </style>--%>
    <style type="text/css">
        .style17
        {
            width: 266px;
        }
        .style18
        {
            border: 4px inset #FFFFFF;
            width: 304px;
            text-align: left;
            font-family: Georgia;
            font-size: large;
        }
        .style20
        {
            border: 4px inset #FFFFFF;
            width: 1162px;
            text-align: left;
        }
        .style5
        {
            height: 606px;
            width: 1125px;
            margin-right: 0px;
        }
        .style21
        {
            height: 261px;
            text-align: left;
        }
        .style22
        {
            width: 311px;
            height: 37px;
        }
        .style33
        {
            font-family: Georgia;
            font-size: large;
            border-style: outset;
            margin-left: 0px;
        }
        .style34
        {
            text-align: left;
        }
        .style27
        {
            height: 182px;
            width: 965px;
            margin-top: 0px;
        }
        .style37
        {
            height: 46px;
            font-size: x-large;
            font-family: Georgia;
        }
        .style38
        {
            font-size: x-large;
        }
        .style39
        {
            font-family: Georgia;
        }
        .style40
        {
            font-size: large;
        }
        .style41
        {
            height: 45px;
            text-align: center;
        }
        .style42
        {
            height: 37px;
            font-family: Georgia;
            font-size: x-large;
        }
        .style43
        {
            width: 145px;
            border-right-style: outset;
            border-top-style: outset;
        }
        .style45
        {
            font-size: large;
            width: 191px;
            border-right-style: outset;
            border-top-style: outset;
        }
        .style46
        {
            width: 334px;
        }
        .style47
        {
            border: 4px inset #FFFFFF;
            text-align: left;
        }
        .style48
        {
            border: 4px inset #FFFFFF;
            width: 304px;
            text-align: left;
            font-family: Georgia;
            font-size: large;
            height: 42px;
        }
        .style49
        {
            border: 4px inset #FFFFFF;
            width: 1162px;
            height: 42px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style5">
    <tr>
        <td class="style42">
            <strong>Cart Details&nbsp;&nbsp; </strong>
        </td>
        <td class="style22">
            </td>
    </tr>
    <tr>
        <td class="style34" colspan="2" align="right">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None" Height="136px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                style="text-align: center; margin-left: 0px" Width="575px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="PID" HeaderText="PID" SortExpression="PID" />
                    <asp:BoundField DataField="Category" HeaderText="Category" 
                        SortExpression="Category" />
                    <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                    <asp:BoundField DataField="username" HeaderText="username" 
                        SortExpression="username" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" 
                        SortExpression="quantity" />
                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
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
                SelectCommand="SELECT * FROM [CartDetails]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style21" colspan="2">
            &nbsp; 
            &nbsp;&nbsp;
            &nbsp;&nbsp;<table class="style27">
                <tr>
                    <td class="style46" style="text-align: center">
            <table class="style1" 
                            style="border-style: outset; width: 60%; height: 104px; margin-right: 0px;">
                <tr>
                    <td class="style47" colspan="2">
                        <span class="style39">
            <strong><span class="style38">Shipping</span></strong> </span> <strong>
                        <span class="style38"><span class="style39">Details</span> </span> </strong>
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        Name</td>
                    <td class="style20">
                        <asp:TextBox ID="txtcname3" runat="server" CssClass="style33"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtcname3" ErrorMessage="Name is Required " ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        Address</td>
                    <td class="style20">
                        <asp:TextBox ID="txtcaddress3" runat="server" CssClass="style33"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtcaddress3" ErrorMessage="Address is Required " 
                            ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        City</td>
                    <td class="style20">
                        <asp:TextBox ID="txtcity3" runat="server" CssClass="style33" Height="38px" 
                            Width="241px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style48">
                        Pin</td>
                    <td id="txtpin3" class="style49">
                        <asp:TextBox ID="txtcpin3" runat="server" CssClass="style33"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        Contact No</td>
                    <td class="style20">
                        <asp:TextBox ID="txtccont3" runat="server" CssClass="style33"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtccont3" ErrorMessage="Invalid Number " 
                            ForeColor="#FF3300" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
&nbsp;</td>
                </tr>
            </table>
                    </td>
                    <td class="style17">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="style1" 
                            style="border-style: outset; width: 123%; height: 196px; margin-left: 0px;">
                <tr>
                    <td class="style37" colspan="2">
                        <strong>Order Details</strong></td>
                </tr>
                <tr class="style39">
                    <td class="style45">
                        OrderId
                    </td>
                    <td class="style43">
                        <asp:Label ID="lblid2" runat="server" Text="Label" CssClass="style40"></asp:Label>
                    </td>
                </tr>
                <tr class="style39">
                    <td class="style45">
                        Customer Name </td>
                    <td class="style43">
                        <asp:Label ID="lblname2" runat="server" CssClass="style40"></asp:Label>
                    </td>
                </tr>
                <tr class="style39">
                    <td class="style45">
                        Order Date</td>
                    <td class="style43">
                        <asp:Label ID="lbldat2" runat="server" Text="Label" CssClass="style40"></asp:Label>
                    </td>
                </tr>
                <tr class="style39">
                    <td class="style45">
                        Total Amount
                    </td>
                    <td class="style43">
                        <asp:Label ID="lblamount2" runat="server" Text="Label" CssClass="style40"></asp:Label>
                    </td>
                </tr>
                <tr class="style39">
                    <td class="style45">
                        Order Time </td>
                    <td class="style43">
                        <asp:Label ID="time" runat="server" Text="Label" CssClass="style40"></asp:Label>
                    </td>
                </tr>
                </table>
                    </td>
                </tr>
                </table>
        </td>
    </tr>
    <tr>
        <td class="style41" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="btnconf" runat="server" Text="Confirm Order" 
                onclick="btnconf_Click" BackColor="#006600" ForeColor="White" 
                Height="53px" Width="217px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </td>
    </tr>
    </table>
</asp:Content>

