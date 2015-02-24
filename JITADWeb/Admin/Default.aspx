<%@ Page Title="Statystyki" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JITADWeb.Admin.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin_Content_Holder" runat="server">

    <p>
        Liczba użytkowników: <% Response.Write(GetUserCount()); %><br />
        Liczba administratorów: <% Response.Write(GetAdminCount()); %>
    </p>

</asp:Content>
