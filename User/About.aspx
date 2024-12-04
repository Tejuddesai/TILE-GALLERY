<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="User_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 100%;
            height: 389px;
        }
        .style15
        {
            width: 481px;
        }
        .style16
        {
            height: 68px;
            font-size: xx-large;
        }
        .style17
        {
            font-family: Georgia;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style13">
        <tr>
            <td class="style15" rowspan="2">
                <asp:Image ID="Image3" runat="server" Height="355px" 
                    ImageUrl="~/Image/subcat/Main Product/ab.jpg" Width="469px" />
            </td>
            <td class="style16">
                <span class="style17">
                <strong>WELCOME TO TILE SHOP</strong></span>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <p class="has-block tooltipstered" 
                    style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
                    Since the TILE SHOP is a leading travertine, marble, beige marble, limestone, 
                    andesite, basalt, onyx, granite, world stones, quarry owner, manufacturer and 
                    exporter company</p>
                <p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
                    Production capacity is 80.000 m³ at the quarries, 1.250.000 m² in our 3 
                    factories per year.</p>
                <p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">
                    Efesus Stone collection comprises of slabs, tiles, mosaics, cnc designs, 
                    waterjet, accessories and sinks in a wide range of natural stones.</p>
            </td>
        </tr>
    </table>
</asp:Content>

