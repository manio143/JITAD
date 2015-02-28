<%@ Page Title="Użytkownicy" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeBehind="Użytkownicy.aspx.cs" Inherits="JITADWeb.Admin.Użytkownicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin_Content_Holder" runat="server">
    <div class="frame">
        <div class="bit-25">
            <p style="color: white">.</p>
        </div>
        <div class="bit-25">
            <article id="query">
                <asp:Label Text="Wykonano." ID="lblSuccess" ForeColor="Green" Visible="false" runat="server" />
                <asp:Label ID="lblError" ForeColor="Red" Visible="false" runat="server" />
                <asp:Panel DefaultButton="btnAdminQuery" runat="server">
                    <asp:TextBox ID="txtAdminQuery" runat="server" placeholder="Szukaj administratora" />
                    <asp:Button Text="Szukaj" ID="btnAdminQuery" OnClick="btnAdminQuery_Click" runat="server" />
                </asp:Panel>
                <asp:Panel DefaultButton="btnUserQuery" runat="server">
                    <asp:TextBox ID="txtUserQuery" runat="server" placeholder="Szukaj użytkownika" />
                    <asp:Button Text="Szukaj" ID="btnUserQuery" OnClick="btnUserQuery_Click" runat="server" />
                </asp:Panel>
                <asp:Panel DefaultButton="btnEmailQuery" runat="server">
                    <asp:TextBox ID="txtEmailQuery" runat="server" placeholder="Szukaj po e-mailu" />
                    <asp:Button Text="Szukaj" ID="btnEmailQuery" OnClick="btnEmailQuery_Click" runat="server" />
                </asp:Panel>
                <asp:Panel DefaultButton="btnAdminGive" runat="server">
                    <asp:TextBox ID="txtAdminGive" runat="server" placeholder="Uczyń administratorem" />
                    <asp:Button Text="Wykonaj" ID="btnAdminGive" OnClick="btnAdminGive_Click" runat="server" />
                </asp:Panel>
                <asp:Panel DefaultButton="btnAdminTake" runat="server">
                    <asp:TextBox ID="txtAdminTake" runat="server" placeholder="Uczyń użytkownikiem" />
                    <asp:Button Text="Wykonaj" ID="btnAdminTake" OnClick="btnAdminTake_Click" runat="server" />
                </asp:Panel>
            </article>
        </div>
        <div class="bit-50">
            <p style="color: white">.</p>
        </div>
    </div>
</asp:Content>
