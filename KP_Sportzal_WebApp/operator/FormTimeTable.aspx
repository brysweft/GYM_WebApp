<%@ Page Title="Расписание" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormTimeTable.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Расписание занятий
        <asp:ObjectDataSource ID="ObjectDataSourceTrener" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTTRAINERSTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSourceSection" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SECTIONSTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int64" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="COST" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="COST" Type="Double" />
                <asp:Parameter Name="Original_ID" Type="Int64" />
            </UpdateParameters>
        </asp:ObjectDataSource>
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
    </h3>
    <table style="width: 100px; text-align: left; vertical-align: text-top;"  >
        <tr>
            <td style="height: 896px; vertical-align: top;">
                <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/images/zanatia.png" Width="115px" />
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
                        <asp:BoundField DataField="ID" HeaderText="№" ReadOnly="True" SortExpression="ID" />
                        <asp:TemplateField HeaderText="Тренер" SortExpression="TRAINER">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="ObjectDataSourceTrener" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("TRAINER") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("TRAINER") %>'></asp:Label>
                                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="ObjectDataSourceTrener" DataTextField="KLIENT" DataValueField="KLIENT_ID" SelectedValue='<%# Bind("TRAINER") %>'>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Секция" SortExpression="SECTION">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="ObjectDataSourceSection" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("SECTION") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("SECTION") %>'></asp:Label>
                                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="ObjectDataSourceSection" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("SECTION") %>'>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Помещение" SortExpression="ROOM">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="ObjectDataSourceRoom" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("ROOM") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("ROOM") %>'></asp:Label>
                                <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="ObjectDataSourceRoom" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("ROOM") %>'>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="TBEGIN" HeaderText="Начало" SortExpression="TBEGIN" />
                        <asp:BoundField DataField="TEND" HeaderText="Окончание" SortExpression="TEND" />
                        <asp:BoundField DataField="COST" HeaderText="Стоимость" SortExpression="COST" />
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
            <td style="height: 896px">
                <br /></td>
        </tr>
    </table>
</asp:Content>
