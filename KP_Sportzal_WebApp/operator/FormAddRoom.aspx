<%@ Page Title="Помещения" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormAddRoom.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Помещения</h3>
    <table style="width: 100px"  >
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/images/spravka.png" Width="115px" />
            </td>
            <td>
                <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" DataSourceID="ObjectDataSource1" Height="50px" Width="178px" AutoGenerateRows="False" BorderStyle="Double" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="ID" HeaderText="№" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="NAME" HeaderText="Название" SortExpression="NAME" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:DetailsView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.ROOMSTableAdapter" UpdateMethod="Update">
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
        <tr>
            <td>Список помещений</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="10" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="1px" CellSpacing="10" Width="700px">
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
                        <asp:BoundField DataField="NAME" HeaderText="Название" SortExpression="NAME" />
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
</asp:Content>
