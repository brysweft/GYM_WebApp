<%@ Page Title="Записи" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormRecords.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Записи клиентов<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.RECORDSTableAdapter" UpdateMethod="Update">
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
        <asp:ObjectDataSource ID="ObjectDataSource_KlientGV" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTCUSTUMERSTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource_Zanatia" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTTIMETABLETableAdapter"></asp:ObjectDataSource>
    </h3>
    <table style="width: 100px; text-align: left; vertical-align: text-top;"  >
        <tr>
            <td style="height: 896px; vertical-align: top;">
                <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/images/spravka.png" Width="115px" />
            </td>
            <td style="width: 670px; text-align: left; vertical-align: top; height: 896px;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="10" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="1px" CellSpacing="10" Width="696px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Обновить"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Отмена"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Правка"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Выбор"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Удалить" OnClientClick="return confirm('Вы точно хотите удалить эту запись?');"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                        <asp:TemplateField HeaderText="Клиент" SortExpression="KLIENT">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSource_KlientGV" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("KLIENT") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="ObjectDataSource_KlientGV" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("KLIENT") %>'>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Занятие" SortExpression="TRAINING">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="ObjectDataSource_Zanatia" DataTextField="TEXT" DataValueField="TRAINING_ID" SelectedValue='<%# Bind("TRAINING") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="ObjectDataSource_Zanatia" DataTextField="TEXT" DataValueField="TRAINING_ID" SelectedValue='<%# Bind("TRAINING") %>'>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Дата регистрации" SortExpression="DATE_REC">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DATE_REC") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("DATE_REC") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Посещение" SortExpression="VISIT">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("VISIT") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("VISIT") %>'></asp:Label>
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
            </td>
            <td style="height: 896px" ></td>
            <td style="height: 896px">
                <br /></td>
        </tr>
    </table>
</asp:Content>
