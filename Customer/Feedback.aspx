<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerPanel.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Customer_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            width: 100%;
        }
        .style22
        {
            border-style: outset;
            border-color: #FFFFFF;
            font-family: Georgia;
            font-weight: 700;
            height: 65px;
        }
        .style38
    {
        font-size: xx-large;
    }
        .style40
    {
        font-family: Arial, Helvetica, sans-serif;
    }
    .style44
    {
            border-style: outset;
            border-color: #FFFFFF;
            width: 388px;
            height: 28px;
            font-family: Georgia;
            font-size: x-large;
        }
    .style45
    {
            border-style: outset;
            border-color: #FFFFFF;
            width: 628px;
            height: 28px;
        }
        .style48
    {
        border-style: outset;
            border-color: #FFFFFF;
width: 388px;
        height: 40px;
            font-family: Georgia;
            font-size: x-large;
    }
    .style49
    {
        border-style: outset;
            border-color: #FFFFFF;
width: 628px;
        height: 40px;
    }
        .style53
        {
            border-style: outset;
            border-color: #FFFFFF;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
        }
        .style56
        {
            border-style: outset;
            border-color: #FFFFFF;
            width: 388px;
            height: 3px;
            font-family: Georgia;
            font-size: x-large;
        }
        .style57
        {
            border-style: outset;
            border-color: #FFFFFF;
            width: 628px;
            height: 3px;
        }
        .style58
        {
            border-style: outset;
            border-color: #FFFFFF;
            width: 388px;
            height: 30px;
            font-family: Georgia;
            font-size: x-large;
        }
        .style59
        {
            border-style: outset;
            border-color: #FFFFFF;
            width: 628px;
            height: 30px;
        }
        .style60
        {
            border-style: outset;
            border-color: #FFFFFF;
            width: 388px;
            font-family: Georgia;
            font-size: x-large;
            height: 63px;
        }
        .style61
        {
            border-style: outset;
            border-color: #FFFFFF;
            width: 628px;
            height: 63px;
        }
        .style62
        {
            border-style: outset;
            border-color: #FFFFFF;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style17">
        <tr>
            <td>
    <table class="style9" 
        
        
                    
                    style="border-style: outset; text-align: left; margin-left: 127px; width: 677px; height: 544px;">
        <tr>
            <td class="style22" colspan="2">
                <span class="style38">Feedback </span> <strong><span class="style38">&nbsp;Form
                </span>
                <br class="style62" />
            </strong>
            </td>
        </tr>
        <tr>
            <td class="style60">
                Name
            </td>
            <td class="style61">
                <asp:TextBox ID="txtname" runat="server" Height="40px" Width="250px" 
                    style="text-decoration: underline; margin-left: 0px;" CssClass="style40"></asp:TextBox>
                <span class="style40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name Required" ForeColor="Red" ControlToValidate="txtname" 
                    style="font-size: medium" CssClass="style40"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style44">
                Email</td>
            <td class="style45">
                <asp:TextBox ID="txtemail" runat="server" Width="250px" CssClass="style40" 
                    Height="40px"></asp:TextBox>
                <span class="style40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    style="font-size: medium" CssClass="style40"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style56">
                Contact Number 
            </td>
            <td class="style57">
                <asp:TextBox ID="txtcontact" runat="server" Width="250px" CssClass="style40" 
                    Height="40px"></asp:TextBox>
                <span class="style40">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtcontact" ErrorMessage="Enter Valid  Contact  Number " 
                    ForeColor="Red" ValidationExpression="[0-9]{10}" CssClass="style40"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style44">
                Rating
            </td>
            <td class="style45">
                <asp:TextBox ID="txtrating" runat="server" Width="250px" CssClass="style40" 
                    Height="40px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style48">
                Message
            </td>
            <td class="style49">
                <asp:TextBox ID="txtmessage" runat="server" Height="55px" TextMode="MultiLine" 
                    Width="236px" CssClass="style40"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style58">
                Date </td>
            <td class="style59">
                <asp:TextBox ID="txtdate" runat="server" CssClass="style40" Height="40px" 
                    Width="250px"></asp:TextBox>
                <span class="style40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Enter Date " ForeColor="Red" ControlToValidate="txtdate" 
                    style="font-size: medium" CssClass="style40"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style53" colspan="2">
                <asp:Button ID="btnSub" runat="server" ForeColor="White" 
                    Height="35px" onclick="btnSub_Click" Text="Submit" Width="140px" 
                    CssClass="style40" Font-Bold="True" Font-Size="Medium" 
                    BackColor="#006600" />
                <span class="style40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Button ID="btnCancel" runat="server" 
                    ForeColor="White" Height="35px" onclick="btnCancel_Click" Text="Cancel" 
                    Width="140px" CssClass="style40" Font-Bold="True" Font-Size="Medium" 
                    BackColor="#006600" />
                <span class="style40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </span> 
                <asp:Button ID="btnReset" runat="server" 
                    ForeColor="White" Height="35px" onclick="btnReset_Click" Text="Reset" 
                    Width="140px" CssClass="style40" Font-Bold="True" Font-Size="Medium" 
                    BackColor="#006600" />
            </td>
        </tr>
        </table>
            </td>
        </tr>
    </table>
</asp:Content>

