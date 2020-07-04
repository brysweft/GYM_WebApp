<%@ Page Title="Абонементы" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormAddAbonement.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Абонементы клиентов<asp:ObjectDataSource ID="ObjectDataSourceKlient" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTCUSTUMERSTableAdapter"></asp:ObjectDataSource>
    </h3>
    <table style="width: 100px; text-align: left; vertical-align: text-top;"  >
        <tr>
            <td style="height: 896px; vertical-align: top;">
                <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/images/spravka.png" Width="115px" />
            </td>
            <td style="width: 670px; text-align: left; vertical-align: top; height: 896px;">
                <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" Height="50px" Width="125px" AutoGenerateRows="False" BorderStyle="Double" BorderWidth="1px" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="ID" DataSourceID="ObjectDataSource2">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:TemplateField HeaderText="Номер" SortExpression="ID">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Клиент" SortExpression="KLIENT">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSourceKlient" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("KLIENT") %>'>
                                </asp:DropDownList>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Выбор" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSourceKlient" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("KLIENT") %>'>
                                </asp:DropDownList>
                                <asp:Button ID="Button1" runat="server" Text="Выбор" OnClick="Button1_Click1" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("KLIENT") %>'></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSourceKlient" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("KLIENT") %>'>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Начало" SortExpression="TBEGIN">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TBEGIN", "{0:g}") %>' TextMode="Date"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TBEGIN", "{0:g}") %>' TextMode="Date"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("TBEGIN") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Окончание" SortExpression="TEND">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TEND", "{0:g}") %>' TextMode="Date"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TEND", "{0:g}") %>' TextMode="Date"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("TEND") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Скидка" SortExpression="DISCOUNT">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DISCOUNT") %>' TextMode="Number"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DISCOUNT") %>' TextMode="Number"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("DISCOUNT") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" OnClick="LinkButton1_Click" Text="Обновить"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" OnClick="LinkButton2_Click" Text="Отмена"></asp:LinkButton>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" OnClick="LinkButton1_Click1" Text="Вставка"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" OnClick="LinkButton2_Click1" Text="Отмена"></asp:LinkButton>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Правка" Visible="False"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" Text="Создать"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Удалить" OnClientClick="return confirm('Вы точно хотите удалить эту запись?');"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:DetailsView>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.ABONEMENTSTableAdapter" UpdateMethod="Update">
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
            </td>
            <td style="height: 896px" ></td>
            <td style="height: 896px; vertical-align: top;">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="5" DataSourceID="ObjectDataSource4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="KLIENT_ID" CellSpacing="5" Visible="False" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton8" runat="server" CausesValidation="False" CommandName="Select" Text="Выбор"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="KLIENT_ID" HeaderText="№" SortExpression="KLIENT_ID" />
                        <asp:BoundField DataField="KLIENT" HeaderText="Клиент" SortExpression="KLIENT" />
                        <asp:BoundField DataField="CONTACT" HeaderText="Контакт" SortExpression="CONTACT" />
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
                <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTCUSTUMERSTableAdapter"></asp:ObjectDataSource>
                <br /></td>
        </tr>
    </table>
</asp:Content>
