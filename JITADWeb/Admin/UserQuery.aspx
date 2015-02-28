<%@ Page Title="UserQuery" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeBehind="UserQuery.aspx.cs" Inherits="JITADWeb.Admin.AdminQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin_Content_Holder" runat="server">

    <div class="frame">
        <style type="text/css">
            .admin_table_header {
                background-color: #0094ff;
                color: white;
            }

            .admin_table_el {
                border: 1px solid #0094ff;
            }

            .txt_center {
                text-align: center;
            }
        </style>
        <div class="bit-10">
            <p style="color: white">.</p>
        </div>
        <div class="bit-80">
            <asp:Repeater ID="rptUserQuery" runat="server">
                <HeaderTemplate>
                    <table class="admin_table_el" style="border-collapse: collapse;">
                        <tr>
                            <th class="admin_table_header">Login</th>
                            <th class="admin_table_header">E-mail</th>
                            <th class="admin_table_header">Imię</th>
                            <th class="admin_table_header">Nazwisko</th>
                            <th class="admin_table_header">Zarejestrowano</th>
                            <th class="admin_table_header">Ostatnie logowanie</th>
                            <th class="admin_table_header">Przybycie na JITAD</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="admin_table_el"><%#Eval("UserName")%></td>
                        <td class="admin_table_el"><%#Eval("Email") %></td>
                        <td class="admin_table_el"><%#Eval("Name") %></td>
                        <td class="admin_table_el"><%#Eval("Surname") %></td>
                        <td class="admin_table_el txt_center" title="<%#Eval("Registered")%>"><%#Eval("Registered", "{0:dd/M/yyyy}") %></td>
                        <td class="admin_table_el txt_center" title="<%#Eval("LastLoggedIn")%>"><%#Eval("LastLoggedIn", "{0:dd/M/yyyy}") %></td>
                        <td class="admin_table_el txt_center"><%#Eval("ArrivedAtEvent", "{0:hh:mm:ss}") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
        <div class="bit-10">
            <p style="color: white">.</p>
        </div>
    </div>

</asp:Content>
