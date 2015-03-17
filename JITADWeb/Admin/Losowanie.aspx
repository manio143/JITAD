<%@ Page Title="Losowanie" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeBehind="Losowanie.aspx.cs" Inherits="JITADWeb.Admin.Losowanie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin_Content_Holder" runat="server">
    <script type="text/javascript">
            <%
        var allusrs = new JITAD.UserStats().GetUsers();
        var users = from usr in allusrs where !usr.IsAdmin select usr;
        string resp = Newtonsoft.Json.JsonConvert.SerializeObject(users);
        Response.Write("var json = \""+resp+"\";\n");
        Response.Write("var users = JSON && JSON.parse(json) || $.parseJSON(json);\n");
            %>
    </script>
</asp:Content>
