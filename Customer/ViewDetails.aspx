<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerPanel.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="Customer_ViewDetails" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 100%;
            height: 146px;
        }
        .style6
        {
            width: 100%;
            height: 488px;
        }
        .style12
        {
            height: 30px;
        }
        .style13
        {
            height: 23px;
        }
        .style14
        {
            color: #FF0000;
        }
        .style23
        {
            width: 100%;
            height: 284px;
            margin-left: 0px;
            margin-right: 0px;
        }
        .style30
        {
            color: #FF3300;
            background-color: #FFFFFF;
        }
        .style31
        {
            width: 559px;
            height: 22px;
        }
        .style43
        {
            color: #000000;
        }
        .style44
        {
            width: 413px;
            height: 49px;
        }
        .style46
        {
            width: 413px;
            height: 22px;
        }
        .style49
        {
            text-decoration: underline;
        }
        .style56
        {
            width: 413px;
            text-align: left;
            height: 29px;
        }
        .style57
        {
            width: 413px;
            text-align: left;
            height: 44px;
        }
        .style58
        {
            width: 413px;
            text-align: left;
            height: 21px;
        }
        .style64
        {
            width: 293px;
            height: 8px;
        }
        .style65
        {
            height: 8px;
        }
        .style71
        {
            text-align: left;
            height: 28px;
        }
        .style74
        {
            width: 293px;
            height: 29px;
        }
        .style75
        {
            height: 29px;
        }
        .style76
        {
            width: 293px;
            height: 19px;
        }
        .style77
        {
            height: 19px;
        }
        .style78
        {
            width: 293px;
            height: 17px;
        }
        .style79
        {
            height: 17px;
        }
        .style80
        {
            height: 28px;
            width: 293px;
        }
        .style81
        {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style5" align="center">
    <tr>
        <td align="left" style="margin-left: 40px">
            <asp:DataList ID="DataList2" runat="server" DataKeyField="PId" 
                DataSourceID="SqlDataSource1" CellPadding="10" CellSpacing="5" 
                RepeatColumns="1" meta:resourcekey="DataList2Resource1" 
                style="margin-right: 32px"  >
                <ItemTemplate>
                    <br />
                    <table class="style6">
                        <tr>
                            <td class="style46">
                                <asp:ImageButton ID="ImageButton3" runat="server" 
                                    CommandArgument='<%# Eval("PId") %>' Height="356px" 
                                    ImageUrl='<%# Eval("PImage") %>' Width="380px" 
                                    meta:resourcekey="ImageButton3Resource1" style="margin-top: 0px" 
                                   />
                            </td>
                            <td class="style31">
                                <table class="style23">
                                    <tr>
                                        <td class="style81" colspan="2">
                                            <strong>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp; </strong>
                                            <asp:Label ID="lblname" runat="server" meta:resourcekey="lblnameResource1" 
                                                Text='<%# Eval("PName") %>'></asp:Label>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style74">
                                            <strong>Pattern&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </strong>
                                            <asp:Label ID="lblpattern" runat="server" 
                                                meta:resourcekey="lblpatternResource1" Text='<%# Eval("PCategory") %>'></asp:Label>
                                        </td>
                                        <td class="style75">
                                            <span class="style14"><span style="color: #000000"><strong>Category&nbsp;&nbsp;&nbsp; :&nbsp;</strong><asp:Label 
                                                ID="lblcat" runat="server" Text='<%# Eval("PCategory") %>'></asp:Label>
                                            </span></span></td>
                                    </tr>
                                    <tr>
                                        <td class="style64">
                                            <strong>Company&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; </strong>
                                            <asp:Label ID="lblcomp" runat="server" meta:resourcekey="lblcompResource1" 
                                                Text='<%# Eval("PCompany") %>'></asp:Label>
                                        </td>
                                        <td class="style65">
                                            <strong><span class="style14"><span style="color: #000000">Stock&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span></span>&nbsp;</strong><span 
                                                class="style14"><span style="color: #000000"><asp:Label ID="lblstock" 
                                                runat="server" meta:resourcekey="lblstockResource1" style="color: #000000" 
                                                Text='<%# Eval("Stock") %>'></asp:Label>
                                            </span></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style76">
                                            <strong>Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;</strong><asp:Label ID="lblsize" runat="server" 
                                                meta:resourcekey="lblsizeResource1" Text='<%# Eval("Size") %>'></asp:Label>
                                        </td>
                                        <td class="style77">
                                            <strong>Thickness&nbsp;&nbsp; :</strong><asp:Label ID="lblthik" runat="server" 
                                                meta:resourcekey="lblthikResource1" Text='<%# Eval("Thickness") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style78">
                                            <strong>Color&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; </strong>
                                            <asp:Label ID="lblcolor" runat="server" meta:resourcekey="lblcolorResource1" 
                                                Text='<%# Eval("Color") %>'></asp:Label>
                                        </td>
                                        <td class="style79">
                                            <strong>SuitableFor&nbsp;:&nbsp;</strong><asp:Label ID="lblsuit" runat="server" 
                                                meta:resourcekey="lblsuitResource1" Text='<%# Eval("SuitableFor") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style80">
                                            <strong>Finishing&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong><asp:Label ID="lblfinish" runat="server" 
                                                meta:resourcekey="lblfinishResource1" Text='<%# Eval("Finishing") %>'></asp:Label>
                                        </td>
                                        <td class="style81">
                                            <strong>Shape&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:</strong><asp:Label ID="lblshape" runat="server" 
                                                meta:resourcekey="lblshapeResource1" Text='<%# Eval("Shape") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style71" colspan="2">
                                            <strong>Specification&nbsp; :&nbsp;</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="style71" colspan="2">
                                            <asp:Label ID="lblspe" runat="server" meta:resourcekey="lblspeResource1" 
                                                Text='<%# Eval("PSpecification") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style58">
                                <asp:Label ID="lblid" runat="server" Text='<%# Eval("PId") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style57">
                                <strong><span class="style43">PER Tiles </span></strong><span class="style43">&nbsp;/</span><span 
                                    class="style14"><strong>&nbsp;Price&nbsp;</strong></span><strong><span 
                                    class="style30">:&nbsp;</span></strong><span class="style14"><strong><asp:Label ID="lblprice" runat="server" CssClass="style14" 
                                    meta:resourcekey="lblpriceResource1" Text='<%# Eval("Price") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp; </strong></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="style56">
                                <strong><span class="style49">Each Box 4 Tiles&nbsp;</span><br />Select Box:</strong>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                    meta:resourcekey="DropDownList1Resource1" AutoPostBack="True">
                                    <asp:ListItem meta:resourcekey="ListItemResource1">1</asp:ListItem>
                                    <asp:ListItem meta:resourcekey="ListItemResource2">2</asp:ListItem>
                                    <asp:ListItem meta:resourcekey="ListItemResource3">3</asp:ListItem>
                                    <asp:ListItem meta:resourcekey="ListItemResource4">4</asp:ListItem>
                                    <asp:ListItem meta:resourcekey="ListItemResource5">5</asp:ListItem>
                                    <asp:ListItem meta:resourcekey="ListItemResource6">6</asp:ListItem>
                                    <asp:ListItem meta:resourcekey="ListItemResource7">7</asp:ListItem>
                                    <asp:ListItem meta:resourcekey="ListItemResource8">8</asp:ListItem>
                                    <asp:ListItem meta:resourcekey="ListItemResource9">9</asp:ListItem>
                                    <asp:ListItem meta:resourcekey="ListItemResource10">10</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style44">
                                Total :
                                <asp:Label ID="lbltot" runat="server" Text="Label" 
                                    meta:resourcekey="lbltotResource1" ForeColor="#FF3300"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btncart" runat="server" CommandArgument='<%# Eval("PId") %>' 
                                    Height="42px" meta:resourcekey="btncartResource1" onclick="btncart_Click" 
                                    Text="ADD TO CART " Width="160px" BackColor="#009933" ForeColor="White" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT * FROM [Product] WHERE ([PName] = @PName2)">
                <SelectParameters>
                    <asp:SessionParameter Name="PName2" SessionField="pid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

