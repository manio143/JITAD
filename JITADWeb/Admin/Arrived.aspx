<%@ Page Title="Arrived" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeBehind="Arrived.aspx.cs" Inherits="JITADWeb.Admin.Arrived" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin_Content_Holder" runat="server">

    <style type="text/css">
        ._table {
            border: 1px solid #0094ff;
            border-collapse: collapse;
        }

        ._head {
            background-color: #0094ff;
            color: white;
        }

        ._el {
            border: 1px solid #0094ff;
        }

        ._center {
            text-align: center;
        }
    </style>
    <div class="frame">
        <div class="bit-25">
            <p style="color: white">.</p>
        </div>
        <div class="bit-50">
            <asp:Repeater ID="rpArr" runat="server" OnItemDataBound="rpArr_ItemDataBound">
                <HeaderTemplate>
                    <table class="_table">
                        <tr>
                            <th class="_head">Login</th>
                            <th class="_head">Imię</th>
                            <th class="_head">Nazwisko</th>
			    <th class="_head">Szkoła</th>
                            <th class="_head">Przybył</th>
                            <th class="_head">Godzina przybycia</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="_el">
                            <asp:Label ID="lblLogin" Text='<%#Eval("Login") %>' runat="server" /></td>
                        <td class="_el"><%#Eval("Name") %></td>
                        <td class="_el"><%#Eval("Surname") %></td>
                        <td class="_el"><%#Eval("School") %></td>
                        <td class="_el _center">
                            <asp:CheckBox ID="cbArrived" runat="server" /></td>
                        <td class="_el _center"><%#Eval("Time", "{0:hh:mm:ss}") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <asp:Button Text="Zapisz" ID="btnSave" OnClick="btnSave_Click" runat="server" />
        </div>
        <div class="bit-25">
            <p style="color: white">.</p>
        </div>
    </div>

</asp:Content>
