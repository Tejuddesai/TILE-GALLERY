<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerPanel.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Customer_Payment" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style20
        {
            text-align: center;
            height: 31px;
        }
        .style21
        {
            border: 3px outset #FFFFFF;
width: 184px;
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            height: 34px;
        }
        .style23
        {
            border: 3px outset #FFFFFF;
width: 184px;
            height: 33px;
            text-align: center;
            font-family: "Times New Roman", Times, serif;
        }
        .style25
        {
            border: 3px outset #FFFFFF;
width: 184px;
            height: 32px;
            text-align: center;
            font-family: "Times New Roman", Times, serif;
        }
        .style26
        {
            width: 58px;
            text-align: center;
            height: 38px;
            font-size: x-large;
            font-family: Georgia;
        }
        .style30
        {
            text-align: center;
            height: 91px;
        }
        .style38
        {
            border: 3px outset #FFFFFF;
width: 217px;
            height: 32px;
            font-size: large;
            font-family: Georgia;
        }
        .style39
        {
            border: 3px outset #FFFFFF;
width: 217px;
            height: 33px;
            font-size: large;
            font-family: Georgia;
        }
        .style42
        {
            font-size: large;
        }
        .style43
        {
            font-family: Gabriola;
        }
        .style44
        {
            border: 3px outset #FFFFFF;
width: 217px;
            height: 3px;
            font-size: large;
            font-family: Georgia;
        }
        .style45
        {
            border: 3px outset #FFFFFF;
width: 184px;
            height: 3px;
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            color: #FF0000;
        }
        .style46
        {
            font-family: Gadugi;
        }
        .style47
        {
            border: 3px outset #FFFFFF;
width: 217px;
            font-size: large;
            font-family: Georgia;
            height: 20px;
        }
        .style48
        {
            border: 3px outset #FFFFFF;
width: 184px;
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            height: 20px;
        }
        .style49
        {
            border: 3px outset #FFFFFF;
width: 217px;
            font-size: large;
            font-family: Georgia;
            height: 34px;
        }
        .style50
        {
            border: 3px outset #FFFFFF;
width: 217px;
            font-size: large;
            font-family: Georgia;
            height: 11px;
        }
        .style51
        {
            border: 3px outset #FFFFFF;
width: 184px;
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            height: 11px;
        }
        .style52
        {
            border: 3px outset #FFFFFF;
width: 217px;
            height: 25px;
            font-size: large;
            font-family: Georgia;
        }
        .style53
        {
            border: 3px outset #FFFFFF;
width: 184px;
            height: 25px;
            text-align: center;
            font-family: "Times New Roman", Times, serif;
        }
        .style56
        {
            text-align: left;
        }
        .style57
        {
            font-family: Gadugi;
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style1" 
        
        
        
        style="border: 5px outset #000000; width: 69%; height: 632px; margin-left: 218px;">
        <tr>
            <td class="style26" colspan="2">
                <strong>PaymentDetails </strong>
            </td>
        </tr>
        <tr class="style43">
            <td class="style47">
                        Payment Id</td>
            <td class="style48">
                <asp:Label ID="lblpayid" runat="server" Text="Label" Visible="False" 
                    CssClass="style42"></asp:Label>
            </td>
        </tr>
        <tr class="style43">
            <td class="style49">
                Order Id</td>
            <td class="style21">
                <asp:Label ID="lbloid" runat="server" Text="Label" CssClass="style42"></asp:Label>
            </td>
        </tr>
        <tr class="style43">
            <td class="style50">
                Payment&nbsp; Date</td>
            <td class="style51">
                <asp:Label ID="lblpdat" runat="server" Text="Label" CssClass="style42"></asp:Label>
            </td>
        </tr>
        <tr class="style43">
            <td class="style52">
                Customer Name</td>
            <td class="style53">
                <asp:Label ID="lblcname" runat="server" Text="Label" CssClass="style42"></asp:Label>
            </td>
        </tr>
        <tr class="style43">
            <td class="style52">
                Total Amount</td>
            <td class="style53">
                <asp:Label ID="lbltamt" runat="server" Text="Label" style="color: #FF0000" 
                    CssClass="style42"></asp:Label>
            </td>
        </tr>
        <tr class="style43">
            <td class="style38">
                GST</td>
            <td class="style25">
                <asp:Label ID="lblgst" runat="server" Text="28" CssClass="style42"></asp:Label>
                <span class="style42">&nbsp;%</span></td>
        </tr>
        <tr class="style43">
            <td class="style39">
                &nbsp;Discount 
            </td>
            <td class="style23">
                <asp:Label ID="lbldis" runat="server" Text="10" CssClass="style42"></asp:Label>
                <span class="style42">%</span></td>
        </tr>
        <tr class="style43">
            <td class="style44">
                Net Amount&nbsp; </td>
            <td class="style45">
                &nbsp;
                <asp:Label ID="lblnet" runat="server" Text="Label" CssClass="style42"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style30" colspan="2">
                <asp:Panel ID="p1" runat="server" Width="769px" Height="28px">
                    <div class="style56">
                        <span class="style57">Payment Method </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rd1" runat="server" AutoPostBack="True" CssClass="style57" 
                            GroupName="a" oncheckedchanged="rd1_CheckedChanged" Text="COD" />
                        <span class="style46"><span class="style42">&nbsp;(Cash On Delivery&nbsp;)&nbsp; </span>
                        <asp:RadioButton ID="rd2" runat="server" AutoPostBack="True" GroupName="a" 
                            oncheckedchanged="rd2_CheckedChanged" Text="UPI" CssClass="style42" />
                        </span>
                    </div>
                </asp:Panel>
&nbsp;<asp:Panel ID="p2" runat="server" Height="125px" Width="725px" style="margin-top: 0px">
                    <asp:Image ID="Image3" runat="server" Height="107px" 
                        ImageUrl="~/Image/Flooor Tiles/qr1.png" Width="147px" 
                        style="margin-left: 0px; margin-right: 0px" Visible="False" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnplace" runat="server" Height="42px" onclick="btnplace_Click" 
                        Text="Place Order" Width="132px" BackColor="#006600" ForeColor="White" 
                        Enabled="False" />
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="btnprint" runat="server" onclick="btnprint_Click" 
                        Text="Print Bill" BackColor="#006600" ForeColor="White" Height="42px" 
                        Width="117px" />
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                        AutoDataBind="true" />
                    </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style20" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<br />
&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

