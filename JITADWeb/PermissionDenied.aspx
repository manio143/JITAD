<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="PermissionDenied.aspx.cs" Inherits="JITADWeb.PermissionDenied" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <article style="background: #65d0ff; height: 80px; color: rgba(255,255,255,.5); padding-top: 20px;">
        <div class="container">
            < Powrót na stronę główną
        </div>
    </article>
    <article id="noPermission">
        <h1>Brak uprawnień</h1>
        <% if (Session["CurrentUser"] == null)
           {
               string addRequest = "";
               if (!String.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
                   addRequest = "?ReturnUrl=" + Request.QueryString["ReturnUrl"];
               Response.Write("<p>Aby zobaczyć zawartość tej strony <a href=\"/Konto/Zaloguj" + addRequest + "\">Zaloguj się</a>.</p>");
           }
           else
           {
               if (Request["MSA"] != null)
                   Response.Write("<p>Dla użytkownika z kontem Microsoft Account ta strona jest niedostępna.</p>");
               else if (!((JITAD.User)Session["CurrentUser"]).IsAdmin)
                   Response.Write("<p>Aby zobaczyć zawartość tej strony trzeba mieć uprawnienia administratora.</p>");
           }
        %>
    </article>
</asp:Content>
