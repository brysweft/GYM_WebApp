<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintDoc1.aspx.cs" Inherits="KP_Sportzal_WebApp.PrintDoc1" Title="Бланк" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" target="_blank">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM SYSTEM.&quot;SPORT_doc_timetable&quot; WHERE (&quot;ROOM_ID&quot; = ?)"></asp:SqlDataSource>
    </form>
</body>
</html>
