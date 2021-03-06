﻿<%@ Page Title="Strona Główna" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JITADWeb.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <header>
        <div class="container">
            <div class="logo">
                <h1>JITAD</h1>
            </div>
            <h2>21 / 04 / 2015</h2>
            <br />
            <a href="/Konto/Zaloguj" class="sign-up">ZAREJESTRUJ SIĘ</a>
            <a href="https://www.facebook.com/events/351382441728847/" class="facebook-button-big" target="_blank">ŚLEDŹ NA FB</a>
        </div>
    </header>
    <!--<article>VIDEO</article>-->
    <article id="introduce">
        <div class="container">
            <h2>O KONFERENCJI</h2>
            <h3>JITAD dla niewtajemniczonych</h3>
            <div class="frame">
                <div class="bit-60">
                    <p>Już 21 kwietnia odbędzie się kolejna konferencja Junior IT Academic Day. Każdy JITAD to przede wszystkim: prezentacje, dyskusje i mnóstwo nagród. Głównym tematem tegorocznej edycji będą usługi chmurowe, takie jak Microsoft Azure. Nie zabraknie prelekcji także na inne tematy związane z IT. W towarzystwie osób związanych z branżą znajdzie się też czas na pytania do prelegentów, poznanie nowych osób, przetestowanie nowego sprzętu mobilnego, dyskusję czy poznanie warunków panujących na wydziale. Ponadto wśród uczestników rozlosowane zostaną nagrody. Junior ITAD stanowi świetny sposób na wejście w świat informatyki lub poszerzenia swojej informatycznej wiedzy. Konferencja odbędzie się na Wydziale Matematyki, Informatyki i Mechaniki UW. </p>
                </div>
                <div class="bit-40">
                    <img src="./images/icons.png" class="icons-win" />
                </div>
            </div>
        </div>
    </article>

    <article id="counter">
        <div class="container">
            <h2>POZOSTAŁO</h2>
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

    <article id="agenda">
        <a name="agenda"></a>
        <div class="container">
            <h2>AGENDA</h2>
            <h3>Plan dnia</h3>
            <div class="frame">
                <div class="bit-1">
                    <asp:Repeater ID="rpAgenda" runat="server">
                        <HeaderTemplate>
                            <table>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("Hour", "{0:hh\\:mm}") %> - <%#Eval("HourEnd", "{0:hh\\:mm}") %></td>
                                <td>
                                    <h4><%#Eval("Title") %></h4>
                                    <p><%#Eval("Author") %></p>
                                    <p><%#Eval("Description") %></p>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <a href="/Konto/Zaloguj" class="sign-up">ZAREJESTRUJ SIĘ</a>
        </div>
    </article>

    <article id="profiles">
        <a name="prelegenci"></a>
        <div class="container">
            <h2>PRELEGENCI</h2>
            <h3>Poznaj prowadzących wykłady</h3>
            <div class="frame">
                <div class="bit-3">
                    <img src="./images/prelegenci/przemek-trzepla.jpg" /><h4>Przemysław Trzepla</h4>
                    <h5>Microsoft</h5>
                    <p>Od trzech lat związany zawodowo z firmą Microsoft, współorganizator konkursu Imagine Cup, opiekun projektu praktyk oraz programu Dreamspark. Domorosły grafik i wielbiciel ciężkich brzmień.</p>
                </div>
                <div class="bit-3">
                    <img src="./images/prelegenci/ryszard-dalkowski.jpg" />
                    <h4>Ryszard Dałkowski</h4>
                    <h5>Niezależny konsultant i trener | Exertum</h5>
                    <p>
                        Były pracownik Microsoft z ponad 18-letnim stażem w korporacji w różnych rolach – technicznych, marketingowych, kierownika projektu i menadżera zespołu sprzedaży rozwiązań wspomagania biznesu.
Odpowiedzialny, m.in. za przygotowanie uzasadnienia biznesowego dla pierwszej polskiej lokalizacji oprogramowania Microsoft Windows Server. Przez ostatnie 4 lata w Microsoft odpowiadał za strategię współpracy i rozwoju otwartego oprogramowania na platformie cloud computing Microsoft Azure.
Wiceprezes Fundacji Aegis <a href="http://www.aegis.org.pl">www.aegis.org.pl</a>.
                    </p>
                </div>
                <div class="bit-3">
                    <img src="./images/prelegenci/janusz-jablonowski.jpg" /><h4>dr Janusz Jabłonowski</h4>
                    <h5>Zastępca Dyr. Instytutu Informatyki na Wydziale
Matematyki, Informatyki i Mechaniki UW</h5>
                    <p>
                        Prowadzi na MIMUW zajęcia z przedmiotów programistycznych.
Zainteresowania:  programowanie obiektowe, języki programowania i
półautomatyczne dowodzenie własności programów.
                    </p>
                </div>
            </div>
            <div class="frame">
                <div class="bit-3">
                    <img src="./images/prelegenci/dawid-chroscielski.jpg" /><h4>Dawid Chróścielski</h4><h5>Microsoft Junior .NET Leader | PP</h5>
                    <p>Microsoft Junior .NET Leader, student 2 roku Informatyki na Wydziale Elektrycznym Politechniki Poznańskiej. Współzałożyciel grupy developerów indie: Pixel Creators. Na co dzień zajmuje się tworzeniem gier z wykorzystaniem Unity. Aktywny uczestnik wielu gamejamów, konferencji, warsztatów dotyczących gier wideo. Zainteresowania: proceduralne generowanie roślinności w przestrzeni trójwymiarowej.</p>
                </div>
                <div class="bit-3">
                    <img src="./images/prelegenci/pawel-plawiak.jpg" /><h4>Paweł Pławiak</h4><h5>CEO | CBSG Polska</h5><p>Microsoft Certified Trainer, wykładowca akademicki, CEO w CBSG Polska. Posiada certyfikaty Microsoft pierwszej (MCP/MCSA/MCSE), drugiej (MCTS/MCITP) i trzeciej generacji (MOS/MTA/MCSA/MCSE). Od lipca 2009 roku MVP w kategorii Directory Services. Regularnie uczestniczy w wielu projektach i wdrożeniach, gdzie pełni rolę konsultanta rozwiązań opartych o platformę serwerową Windows. Współtwórca przewodników bezpieczeństwa dla Rządowego Zespołu Reagowania na Incydenty Komputerowe. Współpracuje z Microsoft w zakresie certyfikacji zawodowych. Twórca witryny www.certbook.it oraz lider Warszawskiej Grupy Użytkowników i Specjalistów Windows (www.wguisw.org). Pasjonat karawaningu.</p>
                </div>
                <div class="bit-3">
                    <img src="./images/prelegenci/przemek-galuszka.jpg" /><h4>Przemysław Gałuszka</h4><h5>Microsoft</h5><p>Były Microsoft Student Partner na Uniwersytecie Śląskim oraz Microsoft Student Consultant regionu Śląsko-Małopolskiego. Obecnie pracownik Microsoft Polska w dziale DX zajmującym się nowymi technologiami oraz działalnością ze społecznościami IT w Polsce.</p>
                </div>
            </div>
        </div>
    </article>

    <article id="stats">
        <a name="statystyka"></a>
        <div class="container">
            <h2>STATYSTYKA</h2>
            <h3>Konferencja w liczbach</h3>
            <div class="frame">
                <div class="bit-4">
                    <p>1</p>
                    <p>DZIEŃ</p>
                </div>
                <div>
                    <p>5</p>
                    <p>PRELEKCJI</p>
                </div>
                <div>
                    <p>7</p>
                    <p>GODZIN</p>
                </div>
                <div>
                    <p>14</p>
                    <p>ORGANIZATORÓW</p>
                </div>
                <div>
                    <p>100</p>
                    <p>NAGRÓD</p>
                </div>
                <div>
                    <p>300</p>
                    <p>MIEJSC</p>
                </div>
                <div>
                    <p>+&#8734;</p>
                    <p>WIEDZY</p>
                </div>
            </div>
            <img src="./images/stats.png" />
        </div>
    </article>

    <a name="mapa"></a>
    <article id="map">
    </article>
    <script type="text/javascript">
        var map = new Microsoft.Maps.Map(document.getElementById("map"), {
            credentials: "AnSo0DFYay_36kh_JAYCpbSC0GkpgnfVDPf_bkMa8V2_RuqYR19R-qy1t8meln9d",
            center: new Microsoft.Maps.Location(52.211854, 20.981977),
            mapTypeId: Microsoft.Maps.MapTypeId.road,
            zoom: 15
        });

        var pin = new Microsoft.Maps.Pushpin(map.getCenter(), { icon: 'images/map-pin.png', width: 50, height: 50, draggable: false });
        map.entities.push(pin);

        var pinInfobox = new Microsoft.Maps.Infobox(pin.getLocation(),
        {
            title: 'Wydział Matematyki, Informatyki i Mechaniki UW',
            description: 'Banacha 2a, Warszawa<br />(wejście od ul. Pasteura)',
            visible: true,
            offset: new Microsoft.Maps.Point(0, 15)
        });
        map.entities.push(pinInfobox);

    </script>

    <article id="topics">
        <a name="tematyka"></a>
        <div class="container">
            <h2>TEMATYKA</h2>
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

    <article id="partners">
        <a name="partnerzy"></a>
        <div class="container">
            <h2>WSPÓŁPRACA</h2>
            <h3>Nasi partnerzy</h3>
            <br />
            <div class="frame">
                <div class="bit-3" style="padding-top: 15px;"><a href="http://www.microsoft.com/pl-pl/default.aspx">
                    <img src="images/partnerzy/microsoft.png" alt="Microsoft" /></a></div>
                <div class="bit-3">
                    <img src="Images/partnerzy/exertum.jpg" alt="Exertum" /></div>
                <div class="bit-3">
                    <a href="http://pwn.pl/"><img src="Images/partnerzy/pwn.png" alt="PWN" /></a></div>
                <div class="bit-3">
                    <a href="http://it.pwn.pl/"><img src="Images/partnerzy/itpwnpl.png" alt="it.pwn.pl" /></a></div>
                <div class="bit-3">
                    <a href="http://cbsg.pl/"><img src="Images/partnerzy/cbsg.jpg" alt="CBSG Polska" /></a></div>
            </div>
        </div>
    </article>

    <footer>
        <div class="container">
            <div class="frame footer-color">
                <div class="bit-3">.</div>
                <div class="bit-3">.</div>
                <div class="bit-3">.</div>
            </div>
            <div class="frame">
                <div class="bit-2">
                    <div id="contactFrm">
                        <asp:ScriptManager ID="KontaktScriptManager" runat="server" EnablePageMethods="true" ScriptMode="Debug" />
                        <h2>KONTAKT</h2>
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
                <div class="bit-2" id="org">
                    <img src="images/juniornetuw.png" />
                    <p>Organizatorem wydarzenia jest koło naukowe „Junior .NET UW” działające na Wydziale Matematyki, Mechaniki i Informatyki Uniwersytetu Warszawskiego.</p>
                    <p>Facebook: <a href="https://www.facebook.com/juniorNETmimuw">facebook.com/juniorNETmimuw</a></p>
                    <p>JITAD 2015 na FB: <a href="https://www.facebook.com/events/351382441728847/">Junior IT Academic Days 2015</a></p>
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
