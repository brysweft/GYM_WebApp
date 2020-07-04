<%@ Page Title="Отчеты" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormView.aspx.cs" Inherits="KP_Sportzal_WebApp.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="height: 132px; width: 244px">
                <p style="text-align: center">
                    <img alt="" src="../images/spravka.png" style="width: 61px; height: 56px" /></p>
                <h3>Отчеты</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 244px; height: 19px; color: #000000;"><a runat="server" href="~/operator/FormView1"  >Список групп с указанием количества клиентов на сегодняшний день</a></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 244px;"><a runat="server" href="~/operator/FormView2">Количество текущих клиентов по видам занятий</a></td>
        </tr>
        <tr>
            <td style="width: 244px; height: 20px;"> <a runat="server" href="~/operator/FormView">Расписание занятий на печать (форма №1)</a> 
                <br />
                Помещение:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSourceRooms" DataTextField="NAME" DataValueField="ID">
                </asp:DropDownList>
&nbsp;<asp:ObjectDataSource ID="ObjectDataSourceRooms" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="KP_Sportzal_WebApp.operator.DataSet2TableAdapters.ROOMSTableAdapter" UpdateMethod="Update">
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
                <br />
                Дата: <asp:TextBox ID="TextBoxDate" runat="server" TextMode="Week" OnTextChanged="TextBoxDate_TextChanged"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="col-xs-offset-0" OnClick="Button1_Click" Text="Сформировать" />
            </td>
        </tr>
        <tr>
            <td style="width: 244px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 244px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 244px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
