﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPanel.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Report_Enquiry" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style18
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style18">
    <tr>
        <td style="color: #000000">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="true" />
        </td>
    </tr>
</table>
</asp:Content>
