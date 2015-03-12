<%@ Page Title="Konto" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JITADWeb.Konto.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <article style="background: #65d0ff; height: 80px; color: rgba(255,255,255,.5); padding-top: 20px;">
        <div class="container">
            < Powrót na stronę główną
        </div>
    </article>
    <div class="frame">
        <div class="bit-3">
            <p style="color: white">.</p>
        </div>
        <div class="bit-3">
            <div style="background-color: aqua">
                <asp:Label ID="lblError" ForeColor="Red" runat="server" Visible="false" />
                <asp:Label ID="lblSuccess" ForeColor="Green" runat="server" Visible="false" />
            </div>
            <article id="usrData">
                <asp:Panel ID="pnUserData" DefaultButton="btnApply" CssClass="frame" runat="server">
                    <h2>Twoje dane</h2>
                    <div>
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="txtName"
                            ValidationGroup="usrData"
                            ErrorMessage="* Pole wymagane."
                            ForeColor="Red" />
                        <asp:TextBox ID="txtName" placeholder="Imię" runat="server" />
                    </div>
                    <div>
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="txtSurname"
                            ValidationGroup="usrData"
                            ErrorMessage="* Pole wymagane."
                            ForeColor="Red" />
                        <asp:TextBox ID="txtSurname" placeholder="Nazwisko" runat="server" />
                    </div>
                    <div>
                        <a>Szkoła</a>
                        <asp:CompareValidator 
                            ControlToValidate="ddlSchools"
                            ValidationGroup="usrData"
                            ValueToCompare="Wybierz szkołę..."
                            Operator="NotEqual"
                            ErrorMessage="* Pole wymagane"
                            ForeColor="Red"
                            runat="server"
                            />
                        <asp:DropDownList ID="ddlSchools" runat="server" Width="100%"></asp:DropDownList>
                    </div>
                    <div>
                        <asp:Button ID="btnApply" Text="Zapisz" OnClick="btnApply_Click" CausesValidation="true" ValidationGroup="usrData" runat="server" />
                    </div>
                </asp:Panel>
            </article>
            <article id="passChg">
                <asp:Panel ID="pnPassChange" DefaultButton="btnChangePassword" CssClass="frame" ValidateRequestMode="Enabled" runat="server">
                    <h2>Zmiana hasła</h2>
                    <div>
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="txtOldPassword"
                            ValidationGroup="PwChg"
                            ErrorMessage="* Pole wymagane."
                            ForeColor="Red" />
                        <asp:TextBox ID="txtOldPassword" TextMode="Password" placeholder="Stare hasło" runat="server" />
                    </div>
                    <div>
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="txtNewPassword"
                            ValidationGroup="PwChg"
                            ErrorMessage="* Pole wymagane."
                            ForeColor="Red" />
                        <asp:TextBox ID="txtNewPassword" TextMode="Password" placeholder="Nowe hasło" runat="server" />
                    </div>
                    <div>
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
                        <asp:TextBox ID="txtNewPasswordAgain" TextMode="Password" placeholder="Powtórz hasło" runat="server" />
                    </div>
                    <div>
                        <asp:Button Text="Zapisz" ID="btnChangePassword" CausesValidation="true" ValidationGroup="PwChg" OnClick="btnChangePassword_Click" runat="server" />
                    </div>
                </asp:Panel>
            </article>
        </div>
        <div class="bit-3">
            <p style="color: white">.</p>
        </div>
    </div>
</asp:Content>
