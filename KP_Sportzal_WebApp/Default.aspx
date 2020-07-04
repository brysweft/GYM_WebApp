<%@ Page Title="Домашняя страница" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KP_Sportzal_WebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <asp:Label ID="Label1" runat="server" ForeColor="#333333" Text="Добро пожаловать! "></asp:Label>
        <br />
        <br />
        <asp:Label ID="LabelUserId" runat="server" Text=" " Visible="False"></asp:Label>
    </div>

    <div class="row">

    </div>

</asp:Content>
