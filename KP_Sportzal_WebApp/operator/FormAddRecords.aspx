<%@ Page Title="Записи" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormAddRecords.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Записи клиентов<asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTCUSTUMERSTableAdapter"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.RECORDSTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int64" />
                        <asp:Parameter Name="KLIENT" Type="Int64" />
                        <asp:Parameter Name="TRAINING" Type="Int64" />
                        <asp:Parameter Name="DATE_REC" Type="DateTime" />
                        <asp:Parameter Name="VISIT" Type="Int16" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="KLIENT" Type="Int64" />
                        <asp:Parameter Name="TRAINING" Type="Int64" />
                        <asp:Parameter Name="DATE_REC" Type="DateTime" />
                        <asp:Parameter Name="VISIT" Type="Int16" />
                        <asp:Parameter Name="Original_ID" Type="Int64" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTTIMETABLETableAdapter"></asp:ObjectDataSource>
    </h3>
    <table style="width: 100px; text-align: left; vertical-align: text-top;"  >
        <tr>
            <td style="height: 896px; vertical-align: top;">
                <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/images/spravka.png" Width="115px" />
            </td>
            <td style="width: 670px; text-align: left; vertical-align: top; height: 896px;">
                <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" DataSourceID="ObjectDataSource1" Height="50px" Width="125px" AutoGenerateRows="False" BorderStyle="Double" BorderWidth="1px" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="ID">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                        <asp:TemplateField HeaderText="Клиент" SortExpression="KLIENT">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource3" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("KLIENT") %>'>
                                </asp:DropDownList>
                                <br />
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Выбрать" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource3" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("KLIENT") %>'>
                                </asp:DropDownList>
                                <br />
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Выбрать" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("KLIENT") %>'></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource3" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("KLIENT") %>'>
                                </asp:DropDownList>
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Занятие" SortExpression="TRAINING">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource2" DataTextField="TEXT" DataValueField="TRAINING_ID" SelectedValue='<%# Bind("TRAINING") %>'>
                                </asp:DropDownList>
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Выбор" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource2" DataTextField="TEXT" DataValueField="TRAINING_ID" SelectedValue='<%# Bind("TRAINING") %>'>
                                </asp:DropDownList>
                                <asp:Button ID="Button2" runat="server" Text="Выбор" OnClick="Button2_Click1" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("TRAINING") %>'></asp:Label>
                                <br />
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource2" DataTextField="TEXT" DataValueField="TRAINING_ID" SelectedValue='<%# Bind("TRAINING") %>'>
                                </asp:DropDownList>
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Дата записи" SortExpression="DATE_REC">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DATE_REC", "{0:g}") %>' TextMode="DateTimeLocal"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DATE_REC", "{0:g}") %>' TextMode="DateTimeLocal"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("DATE_REC", "{0:g}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Посещение" SortExpression="VISIT">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Columns="3" MaxLength="1" Text='<%# Bind("VISIT", "{0:1}") %>' TextMode="Number"></asp:TextBox>
                                &nbsp;(0-нет, 1 - да)
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Columns="3" MaxLength="1" Text='<%# Bind("VISIT", "{0:1}") %>' TextMode="Number"></asp:TextBox>
                                &nbsp;(0-нет, 1 - да)
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("VISIT") %>'></asp:Label>
                                &nbsp;(0-нет, 1 - да)<br />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" OnClick="LinkButton1_Click1" Text="Обновить"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" OnClick="LinkButton2_Click" Text="Отмена"></asp:LinkButton>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" OnClick="LinkButton1_Click2" Text="Вставка"></asp:LinkButton>
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
            </td>
            <td style="height: 896px" >
            </td>
            <td style="height: 896px">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="5" DataSourceID="ObjectDataSource4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="KLIENT_ID" CellSpacing="5" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Visible="False">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Выбор"></asp:LinkButton>
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
                <br />
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="5" DataSourceID="ObjectDataSource5" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" CellSpacing="5" Visible="False" DataKeyNames="TRAINING_ID" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="TRAINING_ID" HeaderText="Номер" SortExpression="TRAINING_ID" />
                        <asp:BoundField DataField="TBEGIN" HeaderText="Начало" SortExpression="TBEGIN" />
                        <asp:BoundField DataField="TEND" HeaderText="Окончание" SortExpression="TEND" />
                        <asp:BoundField DataField="TRAINER" HeaderText="Тренер" SortExpression="TRAINER" />
                        <asp:BoundField DataField="ROOM" HeaderText="Помещение" SortExpression="ROOM" />
                        <asp:BoundField DataField="SECTION" HeaderText="Секция" SortExpression="SECTION" />
                        <asp:BoundField DataField="COST_BASE" HeaderText="Базовая стоимость" SortExpression="COST_BASE" />
                        <asp:BoundField DataField="COST_TRAINING" HeaderText="Стоимость занятия" SortExpression="COST_TRAINING" />
                        <asp:BoundField DataField="TEXT" HeaderText="Текст" SortExpression="TEXT" Visible="False" />
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
                <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTTIMETABLETableAdapter"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 670px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    </asp:Content>
