<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="User_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            border-style: outset;
            border-width: 2px;
            text-align: center;
        }
        .style14
        {
            font-size: xx-large;
            font-family: Georgia;
        }
        .style15
        {
            border-style: outset;
            border-width: 2px;
            font-size: large;
            font-family: Georgia;
        }
        .style16
        {
            border-style: outset;
            border-width: 2px;
            height: 61px;
            width: 488px;
        }
        .style17
        {
            border-style: outset;
            border-width: 2px;
            font-size: large;
            font-family: Georgia;
            height: 61px;
        }
        .style19
        {
            border-style: outset;
            border-width: 2px;
        }
        .style20
        {
            border-style: outset;
            border-width: 2px;
            height: 24px;
        }
        .style21
        {
            width: 488px;
            border-style: outset;
            border-width: 2px;
        }
        </style></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="" 
        
        
        style="height: 458px; width: 716px; border-style: groove; border-width: 3px; margin-left: 256px; margin-right: 0px; margin-top: 14px; background-image: none;">
        <tr>
            <td colspan="2" class="style20">
                <strong><span >
                <br class="style19" />
                </span><span class="style14">Enquiry Form
                </span>
            </strong>
            </td>
        </tr>
        <tr>
            <td class="style15" >
                Enter Name
            </td>
            <td class="style21" >
                <asp:TextBox ID="txt1122" runat="server" Height="40px" style="margin-left: 0px" 
                    Width="250px" ></asp:TextBox>
                &nbsp &nbsp &nbsp &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name Required" ForeColor="Red" ControlToValidate="txt1122" 
                    style="font-size: medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15" >
                Enter Email</td>
            <td class="style21" >
                <asp:TextBox ID="txtemail" runat="server" Height="40px" Width="250px" 
                    style="text-decoration: underline"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Invalid Email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style15">
                Enter Contact Number 
            </td>
            <td class="style21" >
                <asp:TextBox ID="txtcont" runat="server" Height="40px" Width="250px" 
                    ontextchanged="TextBox3_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtcont" ErrorMessage="Invalid Contact" ForeColor="Red" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style15" >
                Enter Subject
            </td>
            <td class="style21">
                <asp:TextBox ID="txtsub" runat="server" Height="40px" Width="250px" 
                    ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtsub" ErrorMessage="Subject required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style17" >
                Message
            </td>
            <td class="style16" >
                <asp:TextBox ID="txtmsg" runat="server" Height="70px" Width="384px" 
                    ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtmsg" ErrorMessage="Enter  Message" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  colspan="2" class="style13">
                &nbsp;&nbsp;<asp:Button ID="btnsubmit" 
                    runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="White" Height="36px" onclick="btnsubmit_Click" Text="Submit" 
                    Width="140px" BackColor="#006600" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" onclick="btnreset_Click" 
                    Text="Reset" Font-Bold="True" ForeColor="White" 
                    Height="35px" style="font-size: medium" Width="140px" BackColor="#006600" 
                    BorderStyle="None"   />
                </td>
        </tr>
    </table>
   
</asp:Content>

