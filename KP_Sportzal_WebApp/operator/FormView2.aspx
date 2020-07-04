<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormView2.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Список групп с указанием количества клиентов на сегодняшний день</h3>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br/>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Font-Size="Larger">
            <Columns>
                <asp:BoundField DataField="SECTION" HeaderText="Виды занятий" SortExpression="SECTION" />
                <asp:BoundField DataField="COUNT_MAN" HeaderText="Количество мужчин" SortExpression="COUNT_MAN" />
                <asp:BoundField DataField="COUNT_WOMAN" HeaderText="Количество женщин" SortExpression="COUNT_WOMAN" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTGROUPS_genderTableAdapter"></asp:ObjectDataSource>
    </p>
</asp:Content>
