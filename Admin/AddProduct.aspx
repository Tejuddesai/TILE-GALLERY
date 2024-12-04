<%@ Page Title="" Language="C#" MasterPageFile="AdminPanel.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 95%;
            color: #000000;
            height: 977px;
            margin-top: 0px;
            font-size: medium;
            margin-right: 0px;
        }
        .style42
        {
            height: 50px;
            text-align: left;
            font-size: x-large;
        }
        .style58
        {
        height: 29px;
        text-align: left;
        font-size: large;
            font-family: Georgia;
        }
        .style64
        {
            height: 50px;
            font-size: large;
            font-family: Georgia;
        }
        .style74
        {
            height: 64px;
        text-align: center;
    }
        .style96
        {
            height: 9px;
            text-align: left;
            font-size: x-large;
        }
        .style132
        {
            font-size: medium;
        }
        .style149
    {
        height: 19px;
        text-align: left;
        font-size: large;
        }
        .style156
        {
            font-size: large;
        }
        .style185
        {
            height: 29px;
            font-size: large;
            font-family: Georgia;
        }
        .style190
        {
            height: 19px;
            }
        .style191
        {
            font-size: large;
            height: 19px;
            font-family: Georgia;
        }
        .style228
        {
            height: 24px;
            font-size: large;
            font-family: Georgia;
        }
        .style245
    {
        height: 12px;
            font-size: x-large;
            text-decoration: underline;
            font-family: Georgia;
        }
    .style247
    {
            font-size: large;
            font-family: Georgia;
        }
        .style252
        {
            height: 19px;
            text-align: left;
            font-size: large;
            font-family: Georgia;
        }
        .style259
        {
            font-size: large;
            height: 9px;
            font-family: Georgia;
        }
        .style260
        {
            height: 9px;
        }
        .style263
        {
            width: 60px;
        }
        .style264
        {
            height: 9px;
            width: 60px;
        }
        .style265
        {
            font-size: large;
            font-family: Georgia;
            height: 74px;
        }
        .style266
        {
            width: 60px;
            height: 74px;
        }
        .style267
        {
            height: 74px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    5<table class="style13" align="center">
        <tr>
            <td class="style245" colspan="4">
                <strong>AddProduct </strong> </td>
        </tr>
        <tr>
            <td class="style247">Product ID</td>
            <td class="style263">
                <asp:TextBox ID="txtid" runat="server" Height="40px" Width="250px" 
                    ontextchanged="txtid_TextChanged" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style247">
                <span class="style156">Color</span><br class="style156" />
            </td>
            <td>
                <asp:DropDownList ID="ddcolor" runat="server" Height="35px" Width="200px">
                    <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Black </asp:ListItem>
                    <asp:ListItem>Belgn</asp:ListItem>
                    <asp:ListItem>Ivory</asp:ListItem>
                    <asp:ListItem>Cream</asp:ListItem>
                    <asp:ListItem>Gray</asp:ListItem>
                    <asp:ListItem>Multi-color</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style228">Name </td>
            <td class="style263">
                <asp:TextBox ID="txtname" runat="server" Height="40px" Width="250px"></asp:TextBox>
            </td>
            <td class="style247">
                Pattern</td>
            <td>
                <asp:DropDownList ID="ddpattern" runat="server" 
                    Height="35px" Width="200px">
                    <asp:ListItem>Cheque</asp:ListItem>
                    <asp:ListItem>Circle</asp:ListItem>
                    <asp:ListItem>Floral</asp:ListItem>
                    <asp:ListItem>Horizontal Lines</asp:ListItem>
                    <asp:ListItem>Plain</asp:ListItem>
                    <asp:ListItem>Random</asp:ListItem>
                    <asp:ListItem>Vertical Lines</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style265">
                Category</td>
            <td class="style266">
                <asp:DropDownList ID="ddcat" runat="server" Height="35px" style="margin-bottom: 10px" 
                    Width="200px" DataSourceID="SqlDataSource2" DataTextField="CatName" 
                    DataValueField="CatName" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [CatName] FROM [Category]"></asp:SqlDataSource>
            </td>
            <td class="style265">
                Thickness</td>
            <td class="style267">
                <asp:DropDownList ID="ddthick" runat="server" Height="35px" Width="200px">
                    <asp:ListItem>2 mm</asp:ListItem>
                    <asp:ListItem>3 mm</asp:ListItem>
                    <asp:ListItem>4 mm</asp:ListItem>
                    <asp:ListItem>5 mm</asp:ListItem>
                    <asp:ListItem>6 mm</asp:ListItem>
                    <asp:ListItem>7 mm</asp:ListItem>
                    <asp:ListItem>8 mm</asp:ListItem>
                    <asp:ListItem>9 mm</asp:ListItem>
                    <asp:ListItem>10 mm</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style247">
                SubCategory</td>
            <td class="style263">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="SubName" 
                    DataValueField="SubName" Height="35px" Width="200px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [SubName] FROM [SubCategory] WHERE ([CatName] = @CatName)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddcat" Name="CatName" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style247">
                Image 
                </td>
            <td rowspan="2">
                <asp:Image ID="Image2" runat="server" Height="202px" Width="239px" 
                    
                    
                    
                    
                    
                    
                    style="margin-left: 5px; margin-top: 0px; margin-bottom: 0px; text-align: justify; margin-right: 0px;" />
            </td>
        </tr>
        <tr>
            <td class="style247">
                Company</td>
            <td class="style263">
                <asp:DropDownList ID="ddcomp" runat="server" AutoPostBack="True" 
                    Height="35px" style="margin-bottom: 0px" 
                    Width="200px" CssClass="style156">
                    <asp:ListItem>Kajaria Ceramics</asp:ListItem>
                    <asp:ListItem>Nitco Limited</asp:ListItem>
                    <asp:ListItem>Somany Ceramic</asp:ListItem>
                    <asp:ListItem>Orient Bell</asp:ListItem>
                    <asp:ListItem>Swastik Tiles </asp:ListItem>
                    <asp:ListItem>Bajaj Tiles</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style156">
                </td>
        </tr>
        <tr>
            <td class="style259">
                Specification</td>
            <td class="style264">
                <asp:TextBox ID="txtspecification" runat="server" Height="43px" 
                    TextMode="MultiLine" Width="285px"></asp:TextBox>
            </td>
            <td class="style96">
                <span class="style156">&nbsp;</span><asp:FileUpload ID="FileUpload1" 
                    runat="server" Width="250px" CssClass="style156" Height="40px" />
            </td>
            <td class="style260">
                &nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupload" runat="server" onclick="btnupload_Click" 
                    style="margin-left: 20px" Text="Upload" Width="140px" Height="35px" 
                    BackColor="#006600" Font-Size="Medium" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td class="style191">
                Size</td>
            <td class="style263">
                <asp:DropDownList ID="ddsize" runat="server" 
                    Height="35px" Width="200px">
                    <asp:ListItem>800X1600 mm</asp:ListItem>
                    <asp:ListItem>800X800mm</asp:ListItem>
                    <asp:ListItem>600X1200 mm</asp:ListItem>
                    <asp:ListItem>600X600 mm</asp:ListItem>
                    <asp:ListItem>600X148 mm</asp:ListItem>
                    <asp:ListItem>597X1197 mm</asp:ListItem>
                    <asp:ListItem>597X597 mm</asp:ListItem>
                    <asp:ListItem>597X297 mm</asp:ListItem>
                    <asp:ListItem>300X600 mm</asp:ListItem>
                    <asp:ListItem>300X450 mm</asp:ListItem>
                    <asp:ListItem> 300X300 mm</asp:ListItem>
                    <asp:ListItem> 250X375 mm</asp:ListItem>
                    <asp:ListItem> 200X1200 mm</asp:ListItem>
                    <asp:ListItem>200X300 mm</asp:ListItem>
                    <asp:ListItem>1200 X 2500 mm</asp:ListItem>
                    <asp:ListItem> 400X400 mm</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style149">
                </td>
            <td class="style190">
                </td>
        </tr>
        <tr>
            <td class="style191">
                Shape</td>
            <td class="style263">
                <asp:DropDownList ID="ddshape" runat="server" 
                    Height="35px" Width="200px">
                    <asp:ListItem>Square</asp:ListItem>
                    <asp:ListItem>Rectangular</asp:ListItem>
                    <asp:ListItem>Metro</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style252">
                Stock&nbsp;&nbsp;&nbsp;</td>
            <td>
                <asp:TextBox ID="txtstock" runat="server" Height="40px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style185">
                Finishing</td>
            <td class="style263">
                <asp:DropDownList ID="ddfinish" runat="server" Height="35px" Width="200px">
                    <asp:ListItem>Dazzle</asp:ListItem>
                    <asp:ListItem>Durastone</asp:ListItem>
                    <asp:ListItem>Full Polished</asp:ListItem>
                    <asp:ListItem>Glossy</asp:ListItem>
                    <asp:ListItem>Lapato</asp:ListItem>
                    <asp:ListItem>Lucido</asp:ListItem>
                    <asp:ListItem>Matt</asp:ListItem>
                    <asp:ListItem>Rustic</asp:ListItem>
                    <asp:ListItem>Rustic Matt</asp:ListItem>
                    <asp:ListItem>Semi Glossy</asp:ListItem>
                    <asp:ListItem>Soluble Salts</asp:ListItem>
                    <asp:ListItem>Stone</asp:ListItem>
                    <asp:ListItem>Twin Charge</asp:ListItem>
                    <asp:ListItem>Wood</asp:ListItem>
                    <asp:ListItem>Carving</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style58">
                Price</td>
            <td>
                <asp:TextBox ID="txtprice" runat="server" Height="40px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style64">
                Suitable For</td>
            <td class="style263">
                <asp:DropDownList ID="ddsuit" runat="server" Height="35px" Width="200px">
                    <asp:ListItem>Bedroom</asp:ListItem>
                    <asp:ListItem>Living Room</asp:ListItem>
                    <asp:ListItem>Kitchen</asp:ListItem>
                    <asp:ListItem>Bthroom</asp:ListItem>
                    <asp:ListItem>kids Room</asp:ListItem>
                    <asp:ListItem>Outdoor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style42">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style74" colspan="4">
                <span>
                <asp:Button ID="btnnew" runat="server" Text="New" Width="140px" Height="35px" 
                    onclick="btnnew_Click1" CssClass="style132" BackColor="#006600" 
                    Font-Size="Medium" ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Text="Save" Width="140px" Height="35px" 
                    onclick="btnsave_Click1" CssClass="style132" BackColor="#006600" 
                    Font-Size="Medium" ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" Width="140px" Height="35px" CssClass="style132" 
                    BackColor="#006600" ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" onclick="btndelete_Click" 
                    Text="Delete" Width="140px" Height="35px" CssClass="style132" 
                    BackColor="#006600" Font-Size="Medium" ForeColor="White" />
                &nbsp;&nbsp; &nbsp; &nbsp;<asp:Button ID="btncancel" runat="server" 
                    Font-Size="Medium" Height="35px" onclick="btncancel_Click1" Text="Cancel" 
                    Width="140px" BackColor="#006600" ForeColor="White" />
                &nbsp;
                &nbsp;&nbsp;&nbsp;
                </span>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="PId" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
                    Width="42px" DataSourceID="SqlDataSource1" 
                    style="margin-top: 0px; text-align: left; margin-left: 0px;" 
                    Height="16px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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
                        <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
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
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT * FROM [Product]"></asp:SqlDataSource>
            </td>
        </tr>
        </table>
    </asp:Content>

