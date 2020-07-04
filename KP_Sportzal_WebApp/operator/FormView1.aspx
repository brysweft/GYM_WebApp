<%@ Page Title="Отчет" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormView1.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Список групп с указанием количества клиентов на сегодняшний день</h3>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br/>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Font-Size="Larger">
            <Columns>
                <asp:BoundField DataField="TRAINER_ID" HeaderText="TRAINER_ID" SortExpression="TRAINER_ID" Visible="False" />
                <asp:BoundField DataField="SECTION" HeaderText="Группа по секции" SortExpression="SECTION" />
                <asp:BoundField DataField="TRAINER" HeaderText="Тренер" SortExpression="TRAINER" />
                <asp:BoundField DataField="klient_count" HeaderText="Количество клиентов" SortExpression="klient_count" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.SPORTGROUPS_todayTableAdapter"></asp:ObjectDataSource>
    </p>
    <p>
    </p>
</asp:Content>
