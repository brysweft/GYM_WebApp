<%@ Page Title="Вход" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <table>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Вход"></asp:Label>
    </p>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Логин:"></asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server" ForeColor="#333333" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Пароль:"></asp:Label></td>
            <td><asp:TextBox ID="TextBox2" runat="server" ForeColor="#333333" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="Button1" runat="server" ForeColor="#333333" OnClick="Button1_Click" Text="Войти" />
        <asp:Button ID="Button2" runat="server" ForeColor="#333333" OnClick="Button2_Click" Text="Выйти" /></td>
        </tr>
    </table>
    <p>
        <asp:Label ID="Label1" runat="server" Text="___"></asp:Label>
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM SYSTEM.&quot;SPORTUSERS&quot;"></asp:SqlDataSource>
</asp:Content>
