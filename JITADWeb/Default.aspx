<%@ Page Title="Strona Główna" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JITADWeb.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div class="frame">
            <img id="JITAD_logo" src="/Images/logo.jpg" class="logo" />
            <asp:ImageButton ID="btnRegister" ImageUrl="/Images/btnRegister.png" OnClick="btnRegister_Click" runat="server" />
            <p>Time left placeholder</p>
        </div>
        <div class="frame">
            <p>Video placeholder</p>
        </div>
        <div class="frame">
            <div class="bit-2">
                <p>some content</p>
            </div>
            <div class="bit-2">
                <p>more content</p>
            </div>
        </div>
        <div id="opis" class="frame">
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed fermentum velit, in consectetur est. Cras consequat, ex at tempor ultrices, est enim iaculis lacus, vitae lobortis nisi enim eget tortor. Etiam fermentum nulla a ligula sagittis vulputate. Mauris posuere malesuada orci, sed convallis dolor ultrices nec. Vivamus a erat tristique quam viverra elementum sit amet ac ante. Sed sollicitudin est non neque vulputate egestas. Nam rutrum hendrerit congue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu nisl erat. In dictum leo nibh, non scelerisque enim bibendum sit amet. Nulla dictum, nisi sed bibendum tincidunt, ante enim bibendum magna, ornare convallis dui libero quis mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed sit amet laoreet arcu, quis pulvinar erat.
            </p>
            <p>
                Proin augue erat, pretium sit amet quam sit amet, luctus sodales felis. Nulla eget dui tristique, ultricies dui sit amet, tempus enim. Nunc eget turpis neque. Vestibulum accumsan, nibh sed lobortis posuere, felis elit aliquet purus, id porta purus metus non nulla. Donec quis condimentum velit. Integer dignissim, arcu vitae varius finibus, velit dui eleifend nunc, ut aliquet nisl ipsum eu leo. Donec dignissim ipsum ac lectus volutpat, et porttitor nisl condimentum. Etiam sem nisl, consectetur non tellus id, consequat eleifend purus. Duis justo purus, vehicula in dictum ac, viverra sit amet orci. Suspendisse potenti. Praesent elementum, mauris eu rutrum porta, ligula ex molestie ex, sed ornare mi lacus at nisl. Vestibulum auctor nibh non arcu congue, in pharetra quam aliquet. Donec fringilla turpis in turpis egestas, et tristique magna tempor. 
            </p>
        </div>
        <div class="frame">
            <h3>Atrakcje</h3>
            <p>Tu będą wymienione atrakcje i w miarę jak przewija się w dół, z prawej strony wysuwać na środek będą się obrazki czy coś.</p>
        </div>
        <div class="frame">
            <h3>Kontakt</h3>
            <asp:ScriptManager ID="KontaktScriptManager" runat="server" EnablePageMethods="true" ScriptMode="Debug" />

            <asp:Panel ID="pnKontakt" DefaultButton="btnSend" runat="server">
                <asp:Label ID="lblResult" Style="display: none; font-weight: bold" runat="server" /><br />
                <a>E-mail</a><br />
                <asp:TextBox ID="txtEmail" runat="server" />
                <asp:Label ID="lblEMust" Text="* Pole wymagane." ForeColor="Red" Style="display: none" runat="server" /><br />
                <a>Tytuł</a><br />
                <asp:TextBox ID="txtTitle" runat="server" />
                <asp:Label ID="lblTMust" Text="* Pole wymagane." ForeColor="Red" Style="display: none" runat="server" /><br />
                <a>Wiadomość</a><br />
                <asp:TextBox ID="txtMssg" runat="server" TextMode="MultiLine" Columns="45" Rows="8" />
                <asp:Label ID="lblMMust" Text="* Pole wymagane." ForeColor="Red" Style="display: none" runat="server" /><br />
                <asp:Button ID="btnSend" Text="Wyślij" OnClientClick="Send(); return false;" runat="server" />
            </asp:Panel>
        </div>
    </div>


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
            if (!Validate(email, title, mssg)) return; //PageMethods.SendMessage(email, title, mssg, onSuccess, onError);
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
            if (email == "") { document.getElementById('<%:lblEMust.ClientID%>').style.display = "inline"; validated = false; }
            else document.getElementById('<%:lblEMust.ClientID%>').style.display = "none";
            if (title == "") { document.getElementById('<%:lblTMust.ClientID%>').style.display = "inline"; validated = false; }
            else document.getElementById('<%:lblTMust.ClientID%>').style.display = "none";
            if (mssg == "") { document.getElementById('<%:lblMMust.ClientID%>').style.display = "inline"; validated = false; }
            else document.getElementById('<%:lblMMust.ClientID%>').style.display = "none";
                    return validated;
                }

    </script>
</asp:Content>
