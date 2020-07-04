<%@ Page Title="Клиенты" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormClients.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>Клиенты</h3>
    <table style="width: 100px"  >
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/images/klient.png" Width="115px" />
            </td>
             <td>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="10" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="1px" CellSpacing="10" Width="700px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                <asp:BoundField DataField="SURNAME" HeaderText="Фамилия" SortExpression="SURNAME" />
                <asp:BoundField DataField="NAME" HeaderText="Имя" SortExpression="NAME" />
                <asp:BoundField DataField="PATRONYMIC" HeaderText="Отчество" SortExpression="PATRONYMIC" />
                <asp:TemplateField HeaderText="Пол" SortExpression="GENDER">
                    <EditItemTemplate>
                        <asp:ListBox ID="ListBox2" runat="server" Height="46px" SelectedValue='<%# Bind("GENDER") %>' Width="37px">
                            <asp:ListItem>м</asp:ListItem>
                            <asp:ListItem>ж</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("GENDER") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Дата рождения" SortExpression="DATE_BIRTH">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DATE_BIRTH", "{0:d}") %>' TextMode="Date"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("DATE_BIRTH") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CONTACT" HeaderText="Контакты" SortExpression="CONTACT" />
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
        </tr>
        </table>    

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.CUSTOMERSTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int64" />
                <asp:Parameter Name="SURNAME" Type="String" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="PATRONYMIC" Type="String" />
                <asp:Parameter Name="GENDER" Type="String" />
                <asp:Parameter Name="DATE_BIRTH" Type="DateTime" />
                <asp:Parameter Name="CONTACT" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SURNAME" Type="String" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="PATRONYMIC" Type="String" />
                <asp:Parameter Name="GENDER" Type="String" />
                <asp:Parameter Name="DATE_BIRTH" Type="DateTime" />
                <asp:Parameter Name="CONTACT" Type="String" />
                <asp:Parameter Name="Original_ID" Type="Int64" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </asp:Content>
