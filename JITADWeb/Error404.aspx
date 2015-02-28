<%@ Page Title="Błąd 404" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Error404.aspx.cs" Inherits="JITADWeb.Error404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <article style="background: #65d0ff; height: 80px; color: rgba(255,255,255,.5); padding-top: 20px;">
        <div class="container">
            < Powrót na stronę główną
        </div>
    </article>
    <article id="err404">
        <h1>Błąd 404.</h1>
        <h2>Nie znaleziono szukanego pliku.</h2>
        <p>Powrót na <a href="/">Stronę Główną</a>.</p>
    </article>
</asp:Content>
