<%@ Page Title="Тренеры" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Treners.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm1" %>
<asp:Content ID="Treners" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Наши тренеры</h3>
    <br/>
    <p>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="№" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Font-Size="Larger">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="№" HeaderText="№" ReadOnly="True" SortExpression="№" />
                            <asp:BoundField DataField="ФИО" HeaderText="ФИО" SortExpression="ФИО" ReadOnly="True" />
                            <asp:BoundField DataField="Контакты" HeaderText="Контакты" SortExpression="Контакты" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT ID AS &quot;№&quot;, TRIM(SURNAME) || ' ' || TRIM(NAME)   || ' ' || TRIM(PATRONYMIC)  AS &quot;ФИО&quot;,  CONTACT AS &quot;Контакты&quot; FROM  SYSTEM.&quot;TRAINERS&quot;"></asp:SqlDataSource>
    <p>
    </p>
</asp:Content>
