<%@ Page Title="Расписание" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TimeTable.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Расписание занятий</h3>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="10" ForeColor="Black" GridLines="Vertical" CellSpacing="10" Font-Size="Larger">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="№" HeaderText="№" SortExpression="№" />
            <asp:BoundField DataField="НАЧАЛО" HeaderText="НАЧАЛО" SortExpression="НАЧАЛО" />
            <asp:BoundField DataField="ОКОНЧАНИЕ" HeaderText="ОКОНЧАНИЕ" SortExpression="ОКОНЧАНИЕ" />
            <asp:BoundField DataField="ТРЕНЕР" HeaderText="ТРЕНЕР" SortExpression="ТРЕНЕР" />
            <asp:BoundField DataField="СЕКЦИЯ" HeaderText="СЕКЦИЯ" SortExpression="СЕКЦИЯ" />
            <asp:BoundField DataField="СТОИМОСТЬ" HeaderText="СТОИМОСТЬ" SortExpression="СТОИМОСТЬ" />
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
</p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT SYSTEM.TIMETABLE.ID AS &quot;№&quot;, SYSTEM.TIMETABLE.TBEGIN AS Начало, SYSTEM.TIMETABLE.TEND AS Окончание, SYSTEM.TRAINERS.SURNAME AS Тренер, SYSTEM.SECTIONS.&quot;NAME&quot; AS Секция, SYSTEM.SECTIONS.COST AS Стоимость FROM SYSTEM.TIMETABLE INNER JOIN SYSTEM.TRAINERS ON SYSTEM.TIMETABLE.TRAINER = SYSTEM.TRAINERS.ID INNER JOIN SYSTEM.SECTIONS ON SYSTEM.TIMETABLE.SECTION = SYSTEM.SECTIONS.ID
WHERE  SYSTEM.TIMETABLE.TBEGIN &gt; SYSDATE"></asp:SqlDataSource>
</asp:Content>
