<%@ Page Title="Zaloguj/Zarejestruj" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Zaloguj.aspx.cs" Inherits="JITADWeb.Konto.Zaloguj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="frame">
        <div class="bit-2">
            <h2>Zaloguj</h2>
            <asp:Panel ID="pnLogin" DefaultButton="btnLogin" runat="server">
                <div>
                    <asp:Label ID="lblError" ForeColor="Red" runat="server" Visible="false" />
                </div>
                <div>
                    <asp:Label Text="Login" runat="server" />
                    <asp:TextBox ID="txtLogin" runat="server" />
                </div>
                <div>
                    <asp:Label Text="Hasło" runat="server" />
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
                </div>
                <div>
                    <asp:Button Text="Zaloguj" ID="btnLogIn" OnClick="btnLogIn_Click" runat="server" />
                </div>
                <div>
                    <a href="~/Konto/webauth?login=1<%=getReturnUrl() %>" runat="server">Zaloguj się z kontem Microsoft</a>
                </div>
            </asp:Panel>
        </div>
        <div class="bit-2">
            <h2>Rejestracja</h2>
            <div>
                <asp:Label ID="lblErrorReg" ForeColor="Red" runat="server" Visible="false" />
                <asp:Label ID="lblSuccess" ForeColor="Green" runat="server" Visible="false" />
            </div>
            <asp:Panel ID="pnReg" DefaultButton="btnRegister" runat="server">
                <div>
                    <asp:Label Text="Login" runat="server" />
                    <asp:TextBox ID="txtLoginReg" runat="server" />
                    <asp:Label ID="lblLMust" Text="* Pole wymagane." ForeColor="Red" Visible="false" runat="server" />
                </div>
                <div>
                    <asp:Label Text="E-mail" runat="server" />
                    <asp:TextBox ID="txtEmail" runat="server" />
                    <asp:Label ID="lblEMust" Text="* Pole wymagane." ForeColor="Red" Visible="false" runat="server" />
                </div>
                <div>
                    <asp:Label Text="Hasło" runat="server" />
                    <asp:TextBox ID="txtPassReg" TextMode="Password" runat="server" />
                    <asp:Label ID="lblPMust" Text="* Pole wymagane." ForeColor="Red" Visible="false" runat="server" />
                </div>
                <div>
                    <asp:Label Text="Powtórz hasło" runat="server" />
                    <asp:TextBox ID="txtPasswordAgain" TextMode="Password" runat="server" />
                    <asp:Label ID="lblPAMust" Text="* Pole wymagane." ForeColor="Red" Visible="false" runat="server" />
                    <asp:Label ID="lblPASame" Text="Hasła muszą się zgadzać!" ForeColor="Red" Visible="false" runat="server" />
                </div>
                <div>
                    <asp:Button Text="Zarejestruj" ID="btnRegister" OnClick="btnRegister_Click" runat="server" />
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
