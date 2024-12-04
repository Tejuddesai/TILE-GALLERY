<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="User_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
      
        }
        .style13
        {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br /><br />
    <table align="center" width="550" cellpadding="5" cellspacing="0">
        <tr>
            <td class="style11" colspan="2" bgcolor="">
                <strong>
                <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/Image/user.png" 
                    Width="50px" />
                &nbsp;Login Form
                <hr />
                </strong>
            </td>
        </tr>
        <tr>
            <td bgcolor="" align="left" class="style13">
              
                User Name</td>
            <td class="" bgcolor="">
                <asp:TextBox ID="txtname1" runat="server" Height="40px" Width="300px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname1" ErrorMessage="Username is  mandatory" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="" align="left" class="style13">
              Password 
            </td>
            <td class="" bgcolor="">
                <asp:TextBox ID="txtpassword" runat="server" Height="40px" TextMode="Password" 
                    Width="300px" ontextchanged="txtpassword_TextChanged">Password</asp:TextBox>
       
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Password Required " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" bgcolor="">
               
                <asp:Button 
                    ID="btnLogin0" runat="server" BackColor="#FF3300" 
                    ForeColor="White" Height="30px" Text="Login" Width="150px" 
                    onclick="btnLogin0_Click" Font-Bold="True" Font-Size="Medium" 
                    style="font-family: Arial, Helvetica, sans-serif" BorderStyle="None" />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="btnCancel" runat="server" 
                    ForeColor="White" Height="30px" Text="Cancel" Width="150px" 
                    onclick="btnCancel_Click" Font-Bold="True" Font-Size="Medium" 
                    BackColor="#FF3300" BorderStyle="None" />
            
            </td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="" style="text-align: center">
                &nbsp;Have a account?
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/User/Registration.aspx" style="font-weight: 700">Create new Account</asp:HyperLink>
                </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

