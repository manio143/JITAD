<%@ Page Title="Zaloguj/Zarejestruj" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Zaloguj.aspx.cs" Inherits="JITADWeb.Konto.Zaloguj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <article style="background: #65d0ff; height: 80px; color: rgba(255,255,255,.5); padding-top: 20px;">
		<div class="container">
			< Powrót na stronę główną
		</div>
	</article>
	<article id="login">
		<div class="container">
	    <div class="frame">
	        <div class="bit-2">
	            <h1>Zaloguj</h1>
	            <asp:Panel ID="pnLogin" DefaultButton="btnLogin" runat="server">

	                <asp:Label ID="lblError" ForeColor="Red" runat="server" Visible="false" />
	                <br />
	                <asp:TextBox ID="txtLogin" placeholder="Login" runat="server" />

	                <asp:TextBox ID="txtPassword" placeholder="Hasło" TextMode="Password" runat="server" />
	                <br />
	                <asp:Button Text="Zaloguj" ID="btnLogIn" OnClick="btnLogIn_Click" runat="server" />
	                <a href="~/Konto/webauth?login=1<%=getReturnUrl() %>" runat="server">Zaloguj się z kontem Microsoft</a>

	            </asp:Panel>
	        </div>
	        <div class="bit-2">
	            <h1>Rejestracja</h1>
	            <div>
	                <asp:Label ID="lblErrorReg" ForeColor="Red" runat="server" Visible="false" />
	                <asp:Label ID="lblSuccess" ForeColor="Green" runat="server" Visible="false" />
	            </div>
	            <asp:Panel ID="pnReg" DefaultButton="btnRegister" runat="server">
	                <div>
	                    <asp:TextBox ID="txtLoginReg" runat="server" placeholder="Login"/>
	                    <asp:Label ID="lblLMust" Text="* Pole wymagane." ForeColor="Red" Visible="false" runat="server" />
	                </div>
	                <div>
	                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" />
	                    <asp:Label ID="lblEMust" Text="* Pole wymagane." ForeColor="Red" Visible="false" runat="server" />
	                </div>
	                <div>
	                    <asp:TextBox ID="txtPassReg" TextMode="Password" placeholder="Hasło" runat="server" />
	                    <asp:Label ID="lblPMust" Text="* Pole wymagane." ForeColor="Red" Visible="false" runat="server" />
	                </div>
	                <div>
	                    <asp:TextBox ID="txtPasswordAgain" TextMode="Password" placeholder="Powtórz hasło" runat="server" />
	                    <asp:Label ID="lblPAMust" Text="* Pole wymagane." ForeColor="Red" Visible="false" runat="server" />
	                    <asp:Label ID="lblPASame" Text="Hasła muszą się zgadzać!" ForeColor="Red" Visible="false" runat="server" />
	                </div>
                    <div>
                        <asp:TextBox ID="txtName" placeholder="Imię" runat="server" />
                        <asp:Label ID="lblNMust" Text="* Pole wymagane." ForeColor="Red" Visible="false" runat="server" />
                    </div>
                    <div>
                        <asp:TextBox ID="txtSurname" placeholder="Nazwisko" runat="server" />
                        <asp:Label ID="lblSMust" Text="* Pole wymagane." ForeColor="Red" Visible="false" runat="server" />
                    </div>
                    <div>
                        <a>Szkoła</a>
                        <asp:Label ID="lblScMust" Text="* Pole wymagane." ForeColor="Red" Visible="false" runat="server" />
                        <asp:DropDownList ID="ddlSchools" runat="server" Width="100%"></asp:DropDownList>
                    </div>
                    <div>
                        <asp:TextBox ID="txtPolecacz" placeholder="Polecający" runat="server" />
                    </div>
	                <div>
	                    <asp:Button Text="Zarejestruj" ID="btnRegister" OnClick="btnRegister_Click" runat="server" />
	                </div>
	            </asp:Panel>
	        </div>
	    </div>
		</div>
	</article>
</asp:Content>
