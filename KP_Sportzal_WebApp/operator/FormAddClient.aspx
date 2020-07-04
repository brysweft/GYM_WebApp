<%@ Page Title="Клиенты" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormAddClient.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>Клиенты</h3>
    <table style="width: 100px"  >
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/images/klient.png" Width="115px" />
            </td>
             <td>
        <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" DataSourceID="ObjectDataSource1" Height="50px" Width="125px" AutoGenerateRows="False" BorderStyle="Double" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None" OnDataBound="DetailsView2_DataBound">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                <asp:BoundField DataField="SURNAME" HeaderText="Фамилия" SortExpression="SURNAME" />
                <asp:BoundField DataField="NAME" HeaderText="Имя" SortExpression="NAME" />
                <asp:BoundField DataField="PATRONYMIC" HeaderText="Отчество" SortExpression="PATRONYMIC" />
                <asp:TemplateField HeaderText="Пол" SortExpression="GENDER">
                    <EditItemTemplate>
                        <asp:ListBox ID="ListBox1" runat="server" Height="45px" SelectedValue='<%# Bind("GENDER") %>'>
                            <asp:ListItem>м</asp:ListItem>
                            <asp:ListItem>ж</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:ListBox ID="ListBox1" runat="server" Height="46px" SelectedValue='<%# Bind("GENDER") %>'>
                            <asp:ListItem>м</asp:ListItem>
                            <asp:ListItem>ж</asp:ListItem>
                        </asp:ListBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("GENDER") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Дата рождения" SortExpression="DATE_BIRTH" ValidateRequestMode="Enabled">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DATE_BIRTH", "{0:g}") %>' TextMode="Date"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DATE_BIRTH", "{0:MM/dd/yyyy}") %>' TextMode="Date"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("DATE_BIRTH", "{0:MM/dd/yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CONTACT" HeaderText="Контакты" SortExpression="CONTACT" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Обновить"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Отмена"></asp:LinkButton>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Вставка"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Отмена"></asp:LinkButton>
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
