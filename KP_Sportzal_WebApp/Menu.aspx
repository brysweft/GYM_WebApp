<%@ Page Title="Меню" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 254px; height: 132px;">
                <p style="text-align: center" >
                    <img alt="" src="images/klient.png" style="width: 61px; height: 56px" /></p>
                <h3>Клиенты </h3>
            </td>
            <td style="height: 132px; width: 278px;"><p style="text-align: center">
                <img alt="" src="images/trener.png" style="width: 61px; height: 56px" /></p>
                <h3>Занятия</h3></td>
            <td style="height: 132px; width: 244px">
                <p style="text-align: center">
                    <img alt="" src="images/zanatia.png" style="width: 61px; height: 56px" /></p>
                <h3>Функции</h3>
            </td>
            <td style="height: 132px">
                <p style="text-align: center">
                    <img alt="" src="images/spravka.png" style="width: 61px; height: 56px" /></p><h3>Справочники</h3>
            </td>
        </tr>
        <tr>
            <td style="height: 19px; width: 254px;"><a runat="server" href="~/operator/FormAddClient"  >Добавить клиента</a></td>
            <td style="height: 19px; width: 278px;"><a runat="server" href="~/operator/FormAddTimeTable"  >Добавить занятия</a></td>
            <td style="width: 244px; height: 19px; color: #000000;"><a runat="server" href="~/operator/FormView"  >Отчеты</a></td>
            <td style="width: 384px; height: 19px"><a runat="server" href="~/operator/FormAddClient"  >Клиенты</a></td>
        </tr>
        <tr>
            <td style="width: 254px; height: 20px"><a runat="server" href="~/operator/FormAddRecords"  >Записать клиента на занятие</a></td>
            <td style="height: 20px; width: 278px;"><a runat="server" href="~/operator/FormTimeTable"  >Расписание занятий</a></td>
            <td style="height: 20px; width: 244px;"><a runat="server" href="~/login"  ></a></td>
            <td style="width: 384px; height: 20px;"><a runat="server" href="~/operator/FormAddTrener"  >Тренеры</a></td>
        </tr>
        <tr>
            <td style="width: 254px; height: 20px;"><a runat="server" href="~/operator/FormAddAbonement"  >Выписать абонемент клиенту</a></td>
            <td style="width: 278px; height: 20px;"><a runat="server" href="~/operator/FormAddSection"  >Секции</a></td>
            <td style="width: 244px; height: 20px;"><a runat="server" href="~/login"  ></a></td>
            <td style="width: 384px; height: 20px;"><a runat="server" href="~/operator/FormAddSection"  >Секции</a></td>
        </tr>
                <tr>
            <td style="width: 254px"><a runat="server" href="~/operator/FormClients"  >Список клиентов</a></td>
            <td style="width: 278px"><a runat="server" href="~/operator/FormAddRoom"  >Помещения</a></td>
            <td style="width: 244px"><a runat="server" href="~/login"  ></a></td>
            <td style="width: 384px"><a runat="server" href="~/operator/FormAddRoom"  >Помещения</a></td>
        </tr>
        <tr>
            <td style="width: 254px"><a runat="server" href="~/operator/FormRecords"  >Записи клиентов</a></td>
            <td style="width: 278px"><a runat="server" href="~/login"  ></a><a runat="server" href="~/operator/FormAddTrener"  >Тренеры</a></td>
            <td style="width: 244px"><a runat="server" href="~/login"  ></a></td>
            <td style="width: 384px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/FormUsers.aspx" Visible="False">Пользователи</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="width: 254px"><a runat="server" href="~/operator/FormAbonements"  >Абонементы клиентов</a></td>
            <td style="width: 278px"><a runat="server" href="~/login"  ></a></td>
            <td style="width: 244px"><a runat="server" href="~/login"  ></a></td>
            <td style="width: 384px"><a runat="server" href="~/login"  ></a></td>
        </tr>
    </table>

    </asp:Content>
