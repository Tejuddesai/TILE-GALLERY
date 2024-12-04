<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="User_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 1324px;
            height: 1340px;
            margin-left: 0px;
        font-family: Arial, Helvetica, sans-serif;
        margin-bottom: 0px;
    }
        .style12
    {
        width: 1100px;
        font-family: Arial, Helvetica, sans-serif;
        font-size: xx-large;
        text-decoration: underline;
        height: 105px;
    }
    .style18
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        height: 40px;
        width: 585px;
    }
        .style29
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
        }
        .style30
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            height: 40px;
            width: 1100px;
        }
        .style32
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            width: 1100px;
            height: 105px;
        }
        .style33
        {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        width: 1051px;
        height: 105px;
    }
        .style34
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            width: 1100px;
            height: 27px;
        }
        .style35
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            width: 1051px;
            height: 27px;
        }
        .style36
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            width: 1100px;
        }
    .style37
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        width: 1051px;
    }
    .style38
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        height: 40px;
        width: 1051px;
    }
    .style39
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: x-large;
        width: 1100px;
        height: 34px;
    }
    .style40
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        width: 1051px;
        height: 34px;
    }
        .style43
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            height: 60px;
            width: 585px;
        }
        .style44
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            width: 1100px;
            height: 60px;
        }
        .style45
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            width: 1051px;
            height: 60px;
        }
        .style46
        {
        font-family: Arial, Helvetica, sans-serif;
        font-size: x-large;
        width: 1100px;
    }
        .style47
        {
            font-weight: normal;
        }
        .style48
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            width: 1100px;
            height: 58px;
        }
        .style49
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            width: 1051px;
            height: 58px;
        }
        .style50
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            width: 585px;
            height: 58px;
        }
        .style51
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            height: 105px;
        }
        .style54
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            width: 1100px;
            height: 45px;
        }
        .style55
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            width: 1051px;
            height: 45px;
        }
        .style56
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            height: 45px;
            width: 585px;
        }
    .style57
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        width: 585px;
    }
    .style58
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: xx-large;
        width: 585px;
        height: 105px;
    }
    .style59
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: xx-large;
        width: 1051px;
        height: 105px;
    }
        .style60
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
            width: 254px;
            height: 105px;
        }
        .style61
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            height: 60px;
            width: 254px;
        }
        .style62
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            width: 254px;
        }
        .style63
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            height: 40px;
            width: 254px;
        }
        .style64
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            width: 254px;
            height: 58px;
        }
        .style65
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            height: 45px;
            width: 254px;
        }
        .style68
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: x-large;
        width: 1100px;
        height: 52px;
    }
    .style69
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        width: 1051px;
        height: 52px;
    }
    .style70
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: x-large;
        width: 254px;
        height: 52px;
    }
    .style71
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        width: 585px;
        height: 52px;
    }
    .style72
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: x-large;
        width: 1100px;
        height: 59px;
    }
    .style73
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        width: 1051px;
        height: 59px;
    }
    .style74
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: x-large;
        width: 254px;
        height: 59px;
    }
    .style75
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        width: 585px;
        height: 59px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 1px; width: 1781px; margin-right: 17px; margin-top: 50px; margin-bottom: 0px;">
        <table class="style9">
            <tr>
                <td class="style12">
                    <strong>Manage Product
                </strong>
                </td>
                <td class="style59">
                    </td>
                <td class="style60">
                    </td>
                <td class="style58">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style44">
                    </td>
                <td class="style45">
                    </td>
                <td class="style61">
                    </td>
                <td class="style43">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style39">
                    Product Id</td>
                <td class="style40">
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
                <td class="style62" rowspan="5">
                    <asp:Image ID="Image2" runat="server" Height="273px" Width="322px" />
                </td>
                <td class="style57" rowspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style34">
                    </td>
                <td class="style35">
                    </td>
            </tr>
            <tr>
                <td class="style46">
                    Product Name</td>
                <td class="style37">
                    <asp:TextBox ID="txtname" runat="server" Height="50px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style46">
                    &nbsp;</td>
                <td class="style37">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style32">
                    subcategory </td>
                <td class="style33">
                    <asp:TextBox ID="txtsub" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style46">
                    &nbsp;</td>
                <td class="style37">
                    
                </td>
                <td class="style62">
                    &nbsp;</td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style46">
                    Color </td>
                <td class="style37">
                    <asp:TextBox ID="txtcolor" runat="server"></asp:TextBox>
                </td>
                <td class="style62">
                    &nbsp;</td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style46">
                    &nbsp;</td>
                <td class="style37">
                    &nbsp;</td>
                <td class="style62">
                    &nbsp;</td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style30">
                    Price</td>
                <td class="style38">
                    <asp:TextBox ID="txtprice" runat="server" Height="53px" Width="207px"></asp:TextBox>
                </td>
                <td class="style63">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="50px" 
                        style="margin-left: 0px" Width="329px" Font-Size="Medium" />
                </td>
                <td class="style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style46">
                    &nbsp;</td>
                <td class="style37">
                    &nbsp;</td>
                <td class="style62">
                    &nbsp;</td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style46">
                    Specification </td>
                <td class="style37">
                    <asp:TextBox ID="txtspecification" runat="server" TextMode="MultiLine" 
                        Height="72px" Width="237px"></asp:TextBox>
                </td>
                <td class="style62">
                    <asp:Button ID="btnupload" runat="server" Height="50px" Text="Upload" 
                        Width="160px" onclick="btnupload_Click" Font-Size="Medium" 
                        BackColor="#0033CC" Font-Bold="True" ForeColor="White" />
                </td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style46">
                    &nbsp;</td>
                <td class="style37">
                    &nbsp;</td>
                <td class="style62">
                    &nbsp;</td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style46">
                    <span class="style47">Company Name</span> </td>
                <td class="style37">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Nitco</asp:ListItem>
                        <asp:ListItem>Somany</asp:ListItem>
                        <asp:ListItem>Kajaria</asp:ListItem>
                        <asp:ListItem>Orient</asp:ListItem>
                        <asp:ListItem>Restil</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style62">
                    &nbsp;</td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style46">
                    &nbsp;</td>
                <td class="style37">
                    &nbsp;</td>
                <td class="style62">
                    &nbsp;</td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style48">
                    Size</td>
                <td class="style49">
                    <asp:TextBox ID="txtsize" runat="server" Height="48px" Width="223px"></asp:TextBox>
                </td>
                <td class="style64">
                    finishing 
                    </td>
                <td class="style50">
                    <asp:TextBox ID="txtfinish" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style68">
                    </td>
                <td class="style69">
                    </td>
                <td class="style70">
                    thickness</td>
                <td class="style71">
                    <asp:TextBox ID="txtthickness" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style72">
                    Stock </td>
                <td class="style73">
                    <asp:TextBox ID="txtstock" runat="server" Width="250px" Height="50px"></asp:TextBox>
                </td>
                <td class="style74">
                    suitable For </td>
                <td class="style75">
                    <asp:TextBox ID="txtsuitablefor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style46">
                    shap</td>
                <td class="style37">
                    <asp:TextBox ID="txtshape" runat="server"></asp:TextBox>
                </td>
                <td class="style62">
                    &nbsp;</td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style54">
                    pattern
                    </td>
                <td class="style55">
                    <asp:TextBox ID="txtpattern" runat="server"></asp:TextBox>
                    </td>
                <td class="style65">
                    </td>
                <td class="style56">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style51" colspan="4">
                    <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="Add New" 
                        Height="50px" Width="160px" Font-Size="Medium" BackColor="#0033CC" 
                        Font-Bold="True" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="save" runat="server" Height="50px" Text="Save" Width="160px" 
                        onclick="save_Click" style="margin-left: 0px" Font-Size="Medium" 
                        BackColor="#0033CC" Font-Bold="True" ForeColor="White" />
&nbsp;<asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
                        Text="Update" Height="50px" Width="160px" Font-Size="Small" 
                        BackColor="#0033CC" Font-Bold="True" ForeColor="White" 
                        style="margin-left: 37px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btndelete" 
                        runat="server" Height="50px" Text="Delete" 
                        Width="160px" onclick="btndelete_Click" Font-Size="Medium" 
                        BackColor="#0033CC" ForeColor="White" />
                    <asp:Button ID="btnclear" runat="server" Height="50px" Text="Clear" 
                        Width="162px" onclick="btnclear_Click" Font-Size="Medium" 
                        BackColor="#0033CC" Font-Bold="True" ForeColor="White" 
                        style="margin-left: 127px" />
                </td>
            </tr>
            <tr>
                <td class="style36">
                    &nbsp;</td>
                <td class="style37">
                    &nbsp;</td>
                <td class="style62">
                    &nbsp;</td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style29" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataKeyNames="PId" DataSourceID="SqlDataSource2" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
                        Width="1290px" CellPadding="4" ForeColor="#333333" GridLines="None" 
                        Height="208px" style="margin-top: 57px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" 
                                SortExpression="PId" />
                            <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                            <asp:BoundField DataField="PCategory" HeaderText="PCategory" 
                                SortExpression="PCategory" />
                            <asp:BoundField DataField="PImage" HeaderText="PImage" 
                                SortExpression="PImage" />
                            <asp:BoundField DataField="PCompany" HeaderText="PCompany" 
                                SortExpression="PCompany" />
                            <asp:BoundField DataField="PSpecification" HeaderText="PSpecification" 
                                SortExpression="PSpecification" />
                            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                            <asp:BoundField DataField="Color" HeaderText="Color" 
                                SortExpression="Color" />
                            <asp:BoundField DataField="Shape" HeaderText="Shape" 
                                SortExpression="Shape" />
                            <asp:BoundField DataField="Pattern" HeaderText="Pattern" 
                                SortExpression="Pattern" />
                            <asp:BoundField DataField="Finishing" HeaderText="Finishing" 
                                SortExpression="Finishing" />
                            <asp:BoundField DataField="Thickness" HeaderText="Thickness" 
                                SortExpression="Thickness" />
                            <asp:BoundField DataField="SuitableFor" HeaderText="SuitableFor" 
                                SortExpression="SuitableFor" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                            <asp:BoundField DataField="SubCategory" HeaderText="SubCategory" 
                                SortExpression="SubCategory" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT DISTINCT * FROM [Product]"></asp:SqlDataSource>
                </td>
                <td class="style29">
                    &nbsp;</td>
            </tr>
            </table>
        <br />
    </p>
</asp:Content>

