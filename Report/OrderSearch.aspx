<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPanel.master" AutoEventWireup="true" CodeFile="OrderSearch.aspx.cs" Inherits="Report_OrderSearch" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 100%;
        }
        .style14
        {
            width: 254px;
            height: 52px;
        }
        .style15
        {
            height: 52px;
        }
        .style13
        {
            width: 254px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style12">
        <tr>
            <td>
    <table class="style12">
        <tr>
            <td class="style14">
                Order Search By City&nbsp;&nbsp;
            </td>
            <td class="style15">
                <asp:TextBox ID="txtbox" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tiles&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtbox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsearch" runat="server" Text="Search" 
                    onclick="btnsearch_Click" />
            </td>
        </tr>
    </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                    AutoDataBind="true" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

