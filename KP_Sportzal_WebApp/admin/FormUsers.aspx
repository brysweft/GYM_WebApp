<%@ Page Title="Пользователи" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormUsers.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Пользователи и сессии</h3>
    <table style="width: 100px"  >
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/images/spravka.png" Width="115px" />
            </td>
            <td>
                <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" DataSourceID="ObjectDataSourceUsers" Height="50px" Width="267px" AutoGenerateRows="False" BorderStyle="Double" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="ID" HeaderText="№" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="NAME" HeaderText="Имя" SortExpression="NAME" />
                        <asp:TemplateField HeaderText="Роль" SortExpression="ROLE">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("ROLE") %>'>
                                    <asp:ListItem Value="Operator">Оператор</asp:ListItem>
                                    <asp:ListItem Value="Administrator">Администратор</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("ROLE") %>'>
                                    <asp:ListItem Value="Operator">Оператор</asp:ListItem>
                                    <asp:ListItem Value="Administrator">Администратор</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ROLE") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Пометка удаления" SortExpression="DELETED">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DELETED") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DELETED") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("DELETED") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Пароль" SortExpression="PASSWORD">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PASSWORD") %>' TextMode="Password"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PASSWORD") %>' TextMode="Password"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("PASSWORD") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:ObjectDataSource ID="ObjectDataSourceUsers" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTUSERSTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int64" />
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="ROLE" Type="String" />
                        <asp:Parameter Name="DELETED" Type="Int16" />
                        <asp:Parameter Name="PASSWORD" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="ROLE" Type="String" />
                        <asp:Parameter Name="DELETED" Type="Int16" />
                        <asp:Parameter Name="PASSWORD" Type="String" />
                        <asp:Parameter Name="Original_ID" Type="Int64" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>Список пользователей</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="10" DataSourceID="ObjectDataSourceUsers" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="1px" CellSpacing="10" Width="698px">
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
                        <asp:TemplateField HeaderText="№" SortExpression="ID">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Имя" SortExpression="NAME">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NAME") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("NAME") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Роль" SortExpression="ROLE">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("ROLE") %>'>
                                    <asp:ListItem Value="Operator">Оператор</asp:ListItem>
                                    <asp:ListItem Value="Administrator">Администратор</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("ROLE") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Пометка удаления" SortExpression="DELETED">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DELETED") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("DELETED") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Пароль" SortExpression="PASSWORD">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PASSWORD") %>' TextMode="Password"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("PASSWORD") %>'></asp:Label>
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
        <tr>
            <td>Сессии</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="10" DataSourceID="ObjectDataSourceSession" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="1px" CellSpacing="10" Width="700px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="№" ReadOnly="True" SortExpression="ID" />
                        <asp:TemplateField HeaderText="Поьзователь" SortExpression="USERID">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSourceUsers" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("USERID") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("USERID") %>'></asp:Label>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSourceChooseUser" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("USERID") %>'>
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSourceChooseUser" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTUSERSTableAdapter" UpdateMethod="Update">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Original_ID" Type="Int64" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="ID" Type="Int64" />
                                        <asp:Parameter Name="NAME" Type="String" />
                                        <asp:Parameter Name="ROLE" Type="String" />
                                        <asp:Parameter Name="DELETED" Type="Int16" />
                                        <asp:Parameter Name="PASSWORD" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="NAME" Type="String" />
                                        <asp:Parameter Name="ROLE" Type="String" />
                                        <asp:Parameter Name="DELETED" Type="Int16" />
                                        <asp:Parameter Name="PASSWORD" Type="String" />
                                        <asp:Parameter Name="Original_ID" Type="Int64" />
                                    </UpdateParameters>
                                </asp:ObjectDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ACTIV" HeaderText="Активность" SortExpression="ACTIV" />
                        <asp:BoundField DataField="DATELOGIN" HeaderText="Время входа" SortExpression="DATELOGIN" />
                        <asp:BoundField DataField="TYPE" HeaderText="Тип входа" SortExpression="TYPE" />
                        <asp:BoundField DataField="IP" HeaderText="Адресс" SortExpression="IP" />
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
                <asp:ObjectDataSource ID="ObjectDataSourceSession" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTSESSIONSTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="USERID" Type="Int64" />
                        <asp:Parameter Name="ACTIV" Type="Int16" />
                        <asp:Parameter Name="DATELOGIN" Type="DateTime" />
                        <asp:Parameter Name="ID" Type="Int64" />
                        <asp:Parameter Name="TYPE" Type="String" />
                        <asp:Parameter Name="IP" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="USERID" Type="Int64" />
                        <asp:Parameter Name="ACTIV" Type="Int16" />
                        <asp:Parameter Name="DATELOGIN" Type="DateTime" />
                        <asp:Parameter Name="TYPE" Type="String" />
                        <asp:Parameter Name="IP" Type="String" />
                        <asp:Parameter Name="Original_ID" Type="Int64" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
