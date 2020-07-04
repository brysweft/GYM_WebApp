<%@ Page Title="Расписание" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormAddTimeTable.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Расписание занятий</h3>
    <table style="width: 100px; text-align: left; vertical-align: text-top;"  >
        <tr>
            <td style="height: 896px; vertical-align: top;">
                <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/images/zanatia.png" Width="115px" />
            </td>
            <td style="width: 670px; text-align: left; vertical-align: top; height: 896px;">
                <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" DataSourceID="ObjectDataSource1" Height="50px" Width="309px" AutoGenerateRows="False" BorderStyle="Double" BorderWidth="1px" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="ID">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="ID" HeaderText="№" ReadOnly="True" SortExpression="ID" />
                        <asp:TemplateField HeaderText="Тренер" SortExpression="TRAINER">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSourceTrener" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("TRAINER") %>'>
                                </asp:DropDownList>
                                <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Выбрать" Width="163px" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSourceTrener" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("TRAINER") %>'>
                                </asp:DropDownList>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Выбрать" Width="158px" />
                                <br />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("TRAINER") %>'></asp:Label>
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSourceTrener" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("TRAINER") %>'>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Секция" SortExpression="SECTION">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSourceSection" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("SECTION") %>'>
                                </asp:DropDownList>
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Выбрать" Width="136px" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSourceSection" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("SECTION") %>'>
                                </asp:DropDownList>
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Выбрать" Width="136px" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("SECTION") %>'></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSourceSection" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("SECTION") %>'>
                                </asp:DropDownList>
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Помещение" SortExpression="ROOM">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSourceRoom" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("ROOM") %>'>
                                </asp:DropDownList>
                                <asp:Button ID="Button3" runat="server" Height="23px" OnClick="Button3_Click" Text="Выбрать" Width="118px" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSourceRoom" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("ROOM") %>'>
                                </asp:DropDownList>
                                <asp:Button ID="Button3" runat="server" Height="23px" OnClick="Button3_Click" Text="Выбрать" Width="118px" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("ROOM") %>'></asp:Label>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSourceRoom" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("ROOM") %>'>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Начало" SortExpression="TBEGIN">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TBEGIN", "{0:g}") %>' TextMode="DateTimeLocal"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TBEGIN", "{0:g}") %>' TextMode="DateTimeLocal"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("TBEGIN") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Окончание" SortExpression="TEND">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("TEND", "{0:g}") %>' TextMode="DateTimeLocal"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("TEND", "{0:g}") %>' TextMode="DateTimeLocal"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("TEND") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="COST" HeaderText="Стоимость" SortExpression="COST" />
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
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Правка"></asp:LinkButton>
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
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.TIMETABLETableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int64" />
                        <asp:Parameter Name="TRAINER" Type="Int64" />
                        <asp:Parameter Name="SECTION" Type="Int64" />
                        <asp:Parameter Name="ROOM" Type="Int64" />
                        <asp:Parameter Name="TBEGIN" Type="DateTime" />
                        <asp:Parameter Name="TEND" Type="DateTime" />
                        <asp:Parameter Name="COST" Type="Double" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TRAINER" Type="Int64" />
                        <asp:Parameter Name="SECTION" Type="Int64" />
                        <asp:Parameter Name="ROOM" Type="Int64" />
                        <asp:Parameter Name="TBEGIN" Type="DateTime" />
                        <asp:Parameter Name="TEND" Type="DateTime" />
                        <asp:Parameter Name="COST" Type="Double" />
                        <asp:Parameter Name="Original_ID" Type="Int64" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
            <td style="height: 896px" ></td>
            <td style="height: 896px; vertical-align: top;">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="5" DataSourceID="ObjectDataSourceTrener" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="KLIENT_ID" CellSpacing="5" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Visible="False" Width="321px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="KLIENT_ID" HeaderText="№" SortExpression="KLIENT_ID" />
                        <asp:BoundField DataField="KLIENT" HeaderText="Тренер" SortExpression="KLIENT" />
                        <asp:BoundField DataField="CONTACT" HeaderText="Контакты" SortExpression="CONTACT" />
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
                <asp:ObjectDataSource ID="ObjectDataSourceTrener" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTTRAINERSTableAdapter"></asp:ObjectDataSource>
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="5" DataSourceID="ObjectDataSourceSection" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" CellSpacing="5" Visible="False" DataKeyNames="ID" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="306px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="№" SortExpression="ID" ReadOnly="True" />
                        <asp:BoundField DataField="NAME" HeaderText="Название" SortExpression="NAME" />
                        <asp:BoundField DataField="COST" HeaderText="Стоимость" SortExpression="COST" />
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
                <asp:ObjectDataSource ID="ObjectDataSourceSection" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SECTIONSTableAdapter">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID" Type="Int64" />
                    </DeleteParameters>
                </asp:ObjectDataSource>
                <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="5" DataSourceID="ObjectDataSourceRoom" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" CellSpacing="5" Visible="False" DataKeyNames="ID" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" Width="288px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="№" SortExpression="ID" ReadOnly="True" />
                        <asp:BoundField DataField="NAME" HeaderText="Название" SortExpression="NAME" />
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
                <asp:ObjectDataSource ID="ObjectDataSourceRoom" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.ROOMSTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int64" />
                        <asp:Parameter Name="NAME" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="Original_ID" Type="Int64" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
