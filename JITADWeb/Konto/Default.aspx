<%@ Page Title="Konto" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JITADWeb.Konto.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="frame" style="background-color: aqua">
        <asp:Label ID="lblError" ForeColor="Red" runat="server" Visible="false" />
        <asp:Label ID="lblSuccess" ForeColor="Green" runat="server" Visible="false" />
    </div>
    <asp:Panel ID="pnUserData" DefaultButton="btnApply" CssClass="frame" runat="server">
        <div>
            <a>Imię</a>
            <asp:TextBox ID="txtName" runat="server" />
        </div>
        <div>
            <a>Nazwisko</a>
            <asp:TextBox ID="txtSurname" runat="server" />
        </div>
        <div>
            <a>Szkoła</a>
            <asp:DropDownList ID="ddlSchools" runat="server"></asp:DropDownList>
        </div>
        <div>
            <asp:Button ID="btnApply" Text="Zapisz" OnClick="btnApply_Click" runat="server" />
        </div>
    </asp:Panel>
    <asp:Panel ID="pnPassChange" DefaultButton="btnChangePassword" CssClass="frame" ValidateRequestMode="Enabled" runat="server">
        <div>
            <asp:Label Text="Stare hasło" runat="server" />
            <asp:TextBox ID="txtOldPassword" TextMode="Password" runat="server" />
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="txtOldPassword"
                ValidationGroup="PwChg"
                ErrorMessage="* Pole wymagane."
                ForeColor="Red" />
        </div>
        <div>
            <asp:Label Text="Nowe hasło" runat="server" />
            <asp:TextBox ID="txtNewPassword" TextMode="Password" runat="server" />
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="txtNewPassword"
                ValidationGroup="PwChg"
                ErrorMessage="* Pole wymagane."
                ForeColor="Red" />
        </div>
        <div>
            <asp:Label Text="Powtórz hasło" runat="server" />
            <asp:TextBox ID="txtNewPasswordAgain" TextMode="Password" runat="server" />
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="txtNewPasswordAgain"
                ValidationGroup="PwChg"
                ErrorMessage="* Pole wymagane."
                ForeColor="Red" />
            <asp:CompareValidator runat="server"
                ControlToValidate="txtNewPasswordAgain"
                ValidationGroup="PwChg"
                ControlToCompare="txtNewPassword"
                ErrorMessage="Hasła muszą się zgadzać!"
                ForeColor="Red" />
        </div>
        <div>
            <asp:Button Text="Zapisz" ID="btnChangePassword" CausesValidation="true" ValidationGroup="PwChg" OnClick="btnChangePassword_Click" runat="server" />
        </div>
    </asp:Panel>
</asp:Content>
