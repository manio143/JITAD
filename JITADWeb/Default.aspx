﻿<%@ Page Title="Strona Główna" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JITADWeb.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <header>
        <div class="container">
            <div class="logo">
                <h1>JITAD</h1>
            </div>
            <p>09 / 04 / 2015</p>
            <!--<p>POZOSTAŁO</p>
	            <table>
		            <tr><td>12</th><td>14</th><td>23</td></tr>
		            <tr><td>Dni</td><td>Godzin</td><td>Minuty</td></tr>
	            </table>
	            -->
            <a href="#" class="sign-up">ZAREJESTRUJ SIĘ</a>
        </div>
    </header>
    <!--<article>VIDEO</article>-->
    <article id="introduce">
        <div class="container">
            <h2>O NAS</h2>
            <h3>ITAD dla niewtajmniczonych</h3>
            <div class="frame">
                <div class="bit-60">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor pretium nibh in semper. Donec mollis suscipit mi, in porta libero vestibulum sed. Suspendisse vitae tincidunt mi, quis malesuada felis. Aliquam a maximus orci, venenatis maximus mi. Etiam arcu nulla, luctus at consectetur quis, semper sit amet massa. Nulla tempor arcu at nisl porttitor, non pretium enim vulputate. Morbi risus arcu, feugiat at pharetra id, convallis eget neque. Fusce quis ullamcorper tortor, quis imperdiet urna. Quisque porttitor faucibus mauris in faucibus. Etiam hendrerit quam et nisi consequat, eu tempor velit ullamcorper. Nam non dui ac orci pellentesque vehicula. Praesent ut mattis felis, posuere malesuada metus.</p>
                </div>
                <div class="bit-40">
                    <img src="./images/icons.png" class="icons-win" />
                </div>
            </div>
        </div>
    </article>

    <article id="counter">
        <div class="container">
            <p>POZOSTAŁO</p>
            <table>
                <tr>
                    <td>12</td>
                    <td>14</td>
                    <td>23</td>
                </tr>
                <tr>
                    <td>Dni</td>
                    <td>Godzin</td>
                    <td>Minuty</td>
                </tr>
            </table>
        </div>
    </article>

    <article id="stats">
        <div class="container">
            <h2>GŁÓWNE TEMATY</h2>
            <h3>Konferencja w liczbach</h3>
            <div class="frame">
                <div class="bit-4">
                    <p>5</p>
                    <p>PRELEGENTÓW</p>
                </div>
                <div class="bit-4">
                    <p>25</p>
                    <p>GODZIN</p>
                </div>
                <div class="bit-4">
                    <p>300</p>
                    <p>MIEJSC</p>
                </div>
                <div class="bit-4">
                    <p>300</p>
                    <p>NAGRÓD</p>
                </div>
            </div>
            <img src="./images/stats.png" />
        </div>
    </article>

    <article id="profiles">
        <div class="container">
            <h2>PRELEGENCI</h2>
            <h3>Poznaj kto poprowadzi wykłady</h3>
            <div class="frame">
                <div class="bit-3">
                    <img src="./images/profile-1.jpg" /><h4>Lorem Ipsum</h4>
                </div>
                <div class="bit-3">
                    <img src="./images/profile-2.jpg" /><h4>Lorem Ipsum</h4>
                </div>
                <div class="bit-3">
                    <img src="./images/profile-3.jpg" /><h4>Lorem Ipsum</h4>
                </div>
            </div>
            <div class="frame">
                <div class="bit-3">
                    <img src="./images/profile-4.jpg" /><h4>Lorem Ipsum</h4>
                </div>
                <div class="bit-3">
                    <img src="./images/profile-5.jpg" /><h4>Lorem Ipsum</h4>
                </div>
                <div class="bit-3">
                    <img src="./images/profile-6.jpg" /><h4>Lorem Ipsum</h4>
                </div>
            </div>
        </div>
    </article>

    <article id="topics">
        <div class="container">
            <h2>GŁÓWNE TEMATY</h2>
            <h3>O czym będziemy dyskutowali?</h3>
            <div class="frame">
                <div class="bit-3">
                    <img src="./images/windows-phone.png" /><h4>Lorem Ipsum</h4>
                </div>
                <div class="bit-3">
                    <img src="./images/cloud-computing.png" /><h4>Lorem Ipsum</h4>
                </div>
                <div class="bit-3">
                    <img src="./images/windows.png" /><h4>Lorem Ipsum</h4>
                </div>
            </div>
        </div>
    </article>

    <article id="agenda">
        <div class="container">
            <h2>AGENDA</h2>
            <h3>Plan dnia</h3>
            <div class="frame">
                <div class="bit-1">
                    <img src="./images/agenda.png" />
                </div>
            </div>
            <a href="#" class="sign-up">ZAREJESTRUJ SIĘ</a>
        </div>
    </article>

    <footer>
        <div class="container">
            <img src="images/microsoft.png" class="microsoft" />
            <div class="frame">
                <div class="bit-3">.</div>
                <div class="bit-3">.</div>
                <div class="bit-3">.</div>
            </div>
            <div class="frame">
                <div class="bit-2"></div>
                <div class="bit-2">

                    <asp:ScriptManager ID="KontaktScriptManager" runat="server" EnablePageMethods="true" ScriptMode="Debug" />

                    <asp:Panel ID="pnKontakt" DefaultButton="btnSend" runat="server">
                        <asp:Label ID="lblResult" Style="display: none; font-weight: bold" runat="server" /><br />
                        <asp:TextBox ID="txtEmail" placeholder="E-mail" runat="server" required />
                        <asp:TextBox ID="txtTitle" placeholder="Tytuł" runat="server" required />
                        <br />
                        <asp:TextBox ID="txtMssg" runat="server" placeholder="Wiadomość" TextMode="MultiLine" Columns="20" Rows="10" required />
                        <br />
                        <asp:Button ID="btnSend" Text="WYŚLIJ" OnClientClick="Send(); return false;" runat="server" />
                    </asp:Panel>
                </div>
            </div>
        </div>
    </footer>

    <script type="text/javascript">
        function Send() {
            var email = document.getElementById('<%:txtEmail.ClientID%>').value;
            var title = document.getElementById('<%:txtTitle.ClientID%>').value;
            var mssg = document.getElementById('<%:txtMssg.ClientID%>').value;
            function onSuccess(result) {
                console.log("Message has been sent successfully.");
                document.getElementById('<%:lblResult.ClientID%>').innerHTML = "Wysłano pomyślnie.";
                document.getElementById('<%:lblResult.ClientID%>').style.display = "inline";
                document.getElementById('<%:lblResult.ClientID%>').style.color = "Green";

            }

            function onError(result) {
                console.log('Cannot process your request at the moment, please try later.');
                document.getElementById('<%:lblResult.ClientID%>').innerHTML = "Wystąpił błąd.";
                document.getElementById('<%:lblResult.ClientID%>').style.display = "inline";
                document.getElementById('<%:lblResult.ClientID%>').style.color = "Red";
            }
            document.getElementById('<%:lblResult.ClientID%>').style.display = "none";
            <%--if (!Validate(email, title, mssg)) return; //PageMethods.SendMessage(email, title, mssg, onSuccess, onError);--%>
            $.ajax({
                type: 'POST',
                contentType: 'application/json; charset=utf-8',
                url: 'Default.aspx/SendMessage',
                data: "{'email':'" + email + "', 'title':'" + title + "', 'mssg':'" + mssg + "'}",
                dataType: 'json',
                success: onSuccess,
                error: onError
            });

        }
        <%-- function Validate(email, title, mssg) {
            var validated = true;
            if (email == "") { document.getElementById('<%:lblEMust.ClientID%>').style.display = "inline"; validated = false; }
            else document.getElementById('<%:lblEMust.ClientID%>').style.display = "none";
            if (title == "") { document.getElementById('<%:lblTMust.ClientID%>').style.display = "inline"; validated = false; }
            else document.getElementById('<%:lblTMust.ClientID%>').style.display = "none";
            if (mssg == "") { document.getElementById('<%:lblMMust.ClientID%>').style.display = "inline"; validated = false; }
            else document.getElementById('<%:lblMMust.ClientID%>').style.display = "none";
            return validated;
        } --%>

    </script>
</asp:Content>