<%@ Page Title="Абонементы" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormAbonements.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Абонементы клиентов<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.ABONEMENTSTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int64" />
            <asp:Parameter Name="KLIENT" Type="Int64" />
            <asp:Parameter Name="TBEGIN" Type="DateTime" />
            <asp:Parameter Name="TEND" Type="DateTime" />
            <asp:Parameter Name="DISCOUNT" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="KLIENT" Type="Int64" />
            <asp:Parameter Name="TBEGIN" Type="DateTime" />
            <asp:Parameter Name="TEND" Type="DateTime" />
            <asp:Parameter Name="DISCOUNT" Type="Double" />
            <asp:Parameter Name="Original_ID" Type="Int64" />
        </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSourceKlient" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTCUSTUMERSTableAdapter"></asp:ObjectDataSource>
    </h3>
    <table style="width: 100px; text-align: left; vertical-align: text-top;"  >
        <tr>
            <td style="height: 896px; vertical-align: top;">
                <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/images/spravka.png" Width="115px" />
            </td>
            <td style="width: 670px; text-align: left; vertical-align: top; height: 896px;">&nbsp;</td>
            <td style="height: 896px" ></td>
            <td style="height: 896px; vertical-align: top;">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="Номер" ReadOnly="True" SortExpression="ID" />
                        <asp:TemplateField HeaderText="Клиент" SortExpression="KLIENT">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSourceKlient" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("KLIENT") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("KLIENT") %>'></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSourceKlient" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("KLIENT") %>'>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Начало" SortExpression="TBEGIN">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TBEGIN", "{0:g}") %>' TextMode="DateTime"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("TBEGIN") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Окончание" SortExpression="TEND">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TEND", "{0:g}") %>' TextMode="DateTime"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("TEND") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Скидка" SortExpression="DISCOUNT">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DISCOUNT", "{0:N}") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("DISCOUNT") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <br /></td>
        </tr>
    </table>
</asp:Content>
