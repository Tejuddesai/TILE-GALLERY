<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="User_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style15
        {
            border: 4px outset #FFFFFF;
            font-size: xx-large;
            font-family: Arial, Helvetica, sans-serif;
            text-align: left;
            height: 23px;
        }
        .style20
    {
        border: 4px outset #FFFFFF;
            width: 316px;
            text-align: left;
            height: 41px;
            font-size: large;
            font-family: Georgia;
        }
        .style19
        {
            border: 4px outset #FFFFFF;
            width: 574px;
            text-align: left;
            height: 41px;
        }
        .style10
        {            border: 4px outset #FFFFFF;
            text-align: center;
        }
        .style33
        {
            font-family: Georgia;
        }
        .style34
        {
            border: 4px outset #FFFFFF;
            width: 316px;
            text-align: left;
            height: 28px;
            font-size: large;
            font-family: Georgia;
        }
        .style35
        {
            border: 4px outset #FFFFFF;
            width: 574px;
            text-align: left;
            height: 28px;
        }
        .style38
        {
            border: 4px outset #FFFFFF;
            width: 316px;
            text-align: left;
            height: 13px;
            font-size: large;
            font-family: Georgia;
        }
        .style39
        {
            border: 4px outset #FFFFFF;
            width: 574px;
            text-align: left;
            height: 13px;
        }
        .style40
        {
            border: 4px outset #FFFFFF;
            width: 316px;
            text-align: left;
            height: 25px;
            font-size: large;
            font-family: Georgia;
        }
        .style41
        {
            border: 4px outset #FFFFFF;
            width: 574px;
            text-align: left;
            height: 25px;
        }
        .style42
        {
            border: 4px outset #FFFFFF;
            width: 316px;
            text-align: left;
            height: 18px;
            font-size: large;
            font-family: Georgia;
        }
        .style43
        {
            border: 4px outset #FFFFFF;
            width: 574px;
            text-align: left;
            height: 18px;
        }
        .style44
        {
            border: 4px outset #FFFFFF;
            width: 316px;
            text-align: left;
            height: 24px;
            font-size: large;
            font-family: Georgia;
        }
        .style45
        {
            border: 4px outset #FFFFFF;
            width: 574px;
            text-align: left;
            height: 24px;
        }
        .style46
        {
            border: 4px outset #FFFFFF;
        }
        .style47
        {
            border: 4px outset #FFFFFF;
            width: 316px;
            text-align: left;
            height: 7px;
            font-size: large;
            font-family: Georgia;
        }
        .style48
        {
            border: 4px outset #FFFFFF;
            width: 574px;
            text-align: left;
            height: 7px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style9" 
        style="border-style: groove; width: 599px; height: 630px;">
        <tr>
            <td class="style15" colspan="2">
                <strong style="text-align: left"><span class="style33">Registration Form</span><br 
                    class="style46" /></strong>
                <asp:TextBox ID="txtid" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                Enter Name</td>
            <td class="style35">
                <asp:TextBox ID="txtName" runat="server" Height="40px" Width="250px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter Name " ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style47">
                Contact No</td>
            <td class="style48">
                <asp:TextBox ID="txtContact" runat="server" Height="40px" Width="250px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Invalid Contact " ForeColor="Red" 
                    ControlToValidate="txtContact" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style38">
                Email</td>
            <td class="style39">
                <asp:TextBox ID="txtemail22" runat="server" EnableTheming="True" Width="250px" 
                    Height="40px"></asp:TextBox>
                &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Inalid Email " ForeColor="Red" 
                    ControlToValidate="txtemail22" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style40">
                Address</td>
            <td class="style41">
                <asp:TextBox ID="txtAddress" runat="server" Height="40px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Address  Required " ForeColor="Red" 
                    ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style42">
                City</td>
            <td class="style43">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Sangli</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
                    <asp:ListItem>Miraj</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style44">
                Password</td>
            <td class="style45">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Height="40px" 
                    Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Enter New password " ForeColor="Red" 
                    ControlToValidate="txtPass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style20">
                Confirm&nbsp; Passord</td>
            <td class="style19">
                <asp:TextBox ID="txtCpass" runat="server" TextMode="Password" Height="40px" 
                    Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Confir New Password " ForeColor="Red" 
                    ControlToValidate="txtCpass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10" colspan="2">
                <asp:Button ID="btncreat" runat="server" onclick="btncreat_Click" 
                    Text="Creat Account" BackColor="#006600" Font-Size="Medium" 
                    ForeColor="White" Height="35px" Width="167px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                    Text="Cancel" BackColor="#006600" Font-Size="Medium" ForeColor="White" 
                    Height="35px" Width="140px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Reset" BackColor="#006600" 
                    Font-Size="Medium" ForeColor="White" Height="35px" Width="140px" />
                &nbsp;&nbsp;&nbsp; &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

