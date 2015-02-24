<%@ Page Title="Wiadomości" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeBehind="Wiadomości.aspx.cs" Inherits="JITADWeb.Admin.Wiadomości" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Admin_Content_Holder" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("._btn").click(function () {
                $(this).next("._message").toggle();
                return false;
            });
        });
    </script>
    <style type="text/css">
        ._title{
            display:inline;
        }
        ._email{
            display:inline;
            position:fixed;
            left:450px;
        }
        ._date{
            display:inline;
            position:fixed;
            left:800px;
        }
        ._btn{
            display:block;
        }
        ._message{
            display: none;
        }
    </style>
    <asp:Repeater ID="rpMssg" runat="server">
        <ItemTemplate>
            <div>
                <p class="_title"><%#Eval("Title") %></p>
                <p class="_email"><%#Eval("Email") %></p>
                <p class="_date"><%#Eval("Date") %></p>
                <button class="_btn">Wiadomość</button>
                <p class="_message"><%#LineToBr(Eval("Mssg")) %></p>
                <hr />
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
