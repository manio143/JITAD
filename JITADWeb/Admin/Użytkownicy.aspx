<%@ Page Title="Użytkownicy" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeBehind="Użytkownicy.aspx.cs" Inherits="JITADWeb.Admin.Użytkownicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin_Content_Holder" runat="server">
    <asp:Label Text="Wykonano." ID="lblSuccess" ForeColor="Green" Visible="false" runat="server" />
    <asp:Label ID="lblError" ForeColor="Red" Visible="false" runat="server" />
    <div>
        <asp:Label Text="Szukaj administratora" runat="server" />
        <asp:TextBox ID="txtAdminQuery" runat="server" />
        <asp:Button Text="Szukaj" ID="btnAdminQuery" OnClick="btnAdminQuery_Click" runat="server" />
    </div>
    <div>
        <asp:Label Text="Szukaj użytkownika" runat="server" />
        <asp:TextBox ID="txtUserQuery" runat="server" />
        <asp:Button Text="Szukaj" ID="btnUserQuery" OnClick="btnUserQuery_Click" runat="server" />
    </div>
    <div>
        <asp:Label Text="Szukaj po e-mailu" runat="server" />
        <asp:TextBox ID="txtEmailQuery" runat="server" />
        <asp:Button Text="Szukaj" ID="btnEmailQuery" OnClick="btnEmailQuery_Click" runat="server" />
    </div>
    <hr style="height: 1px;" />
    <div>
        <asp:Label Text="Uczyń administratorem" runat="server" />
        <asp:TextBox ID="txtAdminGive" runat="server" />
        <asp:Button Text="Wykonaj" ID="btnAdminGive" OnClick="btnAdminGive_Click" runat="server" />
    </div>
    <div>
        <asp:Label Text="Uczyń użytkownikiem" runat="server" />
        <asp:TextBox ID="txtAdminTake" runat="server" />
        <asp:Button Text="Wykonaj" ID="btnAdminTake" OnClick="btnAdminTake_Click" runat="server" />
    </div>
</asp:Content>
