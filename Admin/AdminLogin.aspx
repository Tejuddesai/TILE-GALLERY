<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 50%;
            border: 1px solid #000000;
        }
        .style4
        {
            font-size: xx-large;
            text-align: center;
            background-color: #CCCCCC;
        }
        .style7
        {
            height: 14px;
            text-align: center;
            background-color: #CCCCCC;
        }
        #form1
        {
            font-weight: 700;
            background-color: #CCCCCC;
        }
        .style12
        {
            width: 179px;
            height: 19px;
            font-size: x-large;
            background-color: #CCCCCC;
        }
        .style13
        {
            height: 19px;
            width: 361px;
            background-color: #CCCCCC;
            text-align: justify;
        }
        .style14
        {
            width: 179px;
            height: 44px;
            font-size: x-large;
            background-color: #CCCCCC;
        }
        .style15
        {
            height: 44px;
            width: 361px;
            background-color: #CCCCCC;
            text-align: justify;
        }
        .style16
        {
            height: 31px;
            font-size: xx-large;
            text-align: center;
            background-color: #CCCCCC;
        }
    </style>
</head>
<body background=".../Image/abstract-mosaic-pattern-design-wallpaper-preview Bck.jpg">
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
    <table align="center" bgcolor="Red" cellpadding="5" cellspacing="0" 
        class="style1" 
        style = "opacity:0.8; height: 191px; width: 39%; background-color: #999999;">
        <tr>
            <td 
                bgcolor="#9999FF" class="style4" rowspan="4">
                <asp:Image ID="Image1" runat="server" Height="288px" 
                    ImageUrl="~/Image/Logo/ADL1.jpg" Width="281px" />
            </td>
            <td colspan="2" 
                bgcolor="#9999FF" class="style16">
                Admin&nbsp; login</td>
        </tr>
        <tr>
            <td class="style12">
                <strong>Username</strong></td>
            <td class="style13">
                <asp:TextBox ID="txtname1" runat="server" Height="39px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                <strong>Password</strong></td>
            <td class="style15">
                <asp:TextBox ID="txtpassword" runat="server" Height="36px" TextMode="Password" 
                    Width="250px"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style7">
                &nbsp;<asp:Button ID="btnlogin" runat="server" Height="41px" Text="Login" 
                    Width="157px" BackColor="#006600" ForeColor="White" 
                    onclick="btnlogin_Click" style="background-color: #999999; font-size: medium;" 
                    BorderStyle="Groove" Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="btncancel" 
                    runat="server" Height="43px" Text="Cancel" 
                    Width="153px" BackColor="White" ForeColor="White" 
                    onclick="btncancel_Click" style="background-color: #999999; font-size: medium;" 
                    BorderStyle="Ridge" Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
</body>
</html>
