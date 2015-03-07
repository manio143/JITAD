<%@ Page Title="Strona Główna" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JITADWeb.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <header>
        <div class="container">
            <div class="logo">
                <h1>JITAD</h1>
            </div>
            <p>21 / 04 / 2015</p>
            <!--<p>POZOSTAŁO</p>
	            <table>
		            <tr><td>12</th><td>14</th><td>23</td></tr>
		            <tr><td>Dni</td><td>Godzin</td><td>Minuty</td></tr>
	            </table>
	            -->
            <a href="/Konto/Zaloguj" class="sign-up">ZAREJESTRUJ SIĘ</a>
        </div>
    </header>
    <!--<article>VIDEO</article>-->
    <article id="introduce">
        <div class="container">
            <h2>O NAS</h2>
            <h3>ITAD dla niewtajemniczonych</h3>
            <div class="frame">
                <div class="bit-60">
                    <p>Już 9 kwietnia odbędzie się kolejna konferencja Junior IT Academic Day. Każdy JITAD to przede wszystkim: prezentacje, dyskusje i mnóstwo nagród. Głównym tematem tegorocznej edycji będą usługi chmurowe, takie jak Microsoft Azure. Nie zabraknie prelekcji także na inne, ważne aktualnie, tematy związane z IT. W towarzystwie osób związanych z branżą znajdzie się też czas na pytania do prelegentów, poznanie nowych osób, przetestowanie nowego sprzętu mobilnego, dyskusję czy poznanie warunków panujących na wydziale. W przerwach pomiędzy atrakcjami będzie rozdawana pizza. Ponadto wśród uczestników rozlosowane zostaną nagrody m. in. koszulki i książki. Junior ITAD stanowi świetny sposób na wejście w świat informatyki lub poszerzenia swojej informatycznej wiedzy. Konferencja odbędzie się na Wydziale Matematyki, Informatyki, Mechaniki UW 21 kwietnia. </p>
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
                    <td id="TLD">DD</td>
                    <td>:</td>
                    <td id="TLH">HH</td>
                    <td>:</td>
                    <td id="TLM">MM</td>
                    <td>:</td>
                    <td id="TLS">SS</td>
                </tr>
                <tr>
                    <td>Dni</td>
                    <td></td>
                    <td>Godzin</td>
                    <td></td>
                    <td>Minut</td>
                    <td></td>
                    <td>Sekund</td>
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
            <h3>O czym będziemy rozmawiali?</h3>
            <div class="frame">
                <div class="bit-3">
                    <img src="./images/windows-phone.png" /><h4>Mobile</h4>
                </div>
                <div class="bit-3">
                    <img src="./images/cloud-computing.png" /><h4>Microsoft Azure</h4>
                </div>
                <div class="bit-3">
                    <img src="./images/windows.png" /><h4>Desktop apps</h4>
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
            <a href="/Konto/Zaloguj" class="sign-up">ZAREJESTRUJ SIĘ</a>
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
                    <div id="contactFrm">
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
        </div>
    </footer>
    <script type="text/javascript" src="Scripts/datetime.1-3.js"></script>
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
                setErrLbl("Wystąpił błąd.")
            }
            document.getElementById('<%:lblResult.ClientID%>').style.display = "none";
            if (!Validate(email, title, mssg)) { setErrLbl("Pola nie mogą być puste!"); return; } //PageMethods.SendMessage(email, title, mssg, onSuccess, onError);
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
        function Validate(email, title, mssg) {
            var validated = true;
            if (email == "") { validated = false; }
            if (title == "") { validated = false; }
            if (mssg == "") { validated = false; }

            return validated;
        }
        function setErrLbl(mssg) {
            document.getElementById('<%:lblResult.ClientID%>').innerHTML = mssg;
            document.getElementById('<%:lblResult.ClientID%>').style.display = "inline";
            document.getElementById('<%:lblResult.ClientID%>').style.color = "Red";
        }
        $(document).ready(function () {
            console.log("Timer started.");
            setDate();
        });
        function setDate() {
            var t_date = new DateTime(2015, 4, 21, 9, 0, 0);
            t_date = t_date.subtractDate(DateTime.now());
            var d = t_date.days(); 
            var h = t_date.hours();   
            var m = t_date.minutes(); 
            var s = t_date.seconds();
            var passed = d <= 0 && h <= 0 && m <= 0 && s <= 0;
            h = h < 10 ? "0" + h : h;
            m = m < 10 ? "0" + m : m;
            s = s < 10 ? "0" + s : s;
            if (passed) { d = 0; h = m = s = "00"; }
            //console.log(d + " " + h + " " + m);
            document.getElementById("TLD").innerHTML = d;
            document.getElementById("TLH").innerHTML = h;
            document.getElementById("TLM").innerHTML = m;
            document.getElementById("TLS").innerHTML = s;
            setTimeout(setDate, 1000);
        }
    </script>
</asp:Content>
