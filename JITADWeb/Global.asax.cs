using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;

namespace JITADWeb
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            InitJQuery();
        }


        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
        private void InitJQuery()
        {
            string jQueryVersion = JQueryInstalledVersion;
            System.Web.UI.ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new System.Web.UI.ScriptResourceDefinition
            {
                Path = "~/Scripts/jquery-" + jQueryVersion + ".min.js",
                DebugPath = "~/Scripts/jquery-" + jQueryVersion + ".js",
                CdnPath = "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + jQueryVersion + ".min.js",
                CdnDebugPath = "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + jQueryVersion + ".js",
                CdnSupportsSecureConnection = true,
                LoadSuccessExpression = "window.jQuery"
            });
        }

        private string JQueryInstalledVersion
        {
            get
            {
                var scriptsDir = Context.Server.MapPath("~/Scripts/");
                foreach (var file in System.IO.Directory.EnumerateFiles(scriptsDir, "jquery-*.min.js"))
                {
                    var match = System.Text.RegularExpressions.Regex.Match(file, @"(\d+(?:\.\d+){1,3})");
                    if (match.Success)
                    {
                        return match.Groups[0].Value;
                    }
                }
                throw new InvalidOperationException("jQuery is not installed in the ~/Scripts dir");
            }
        } 
    }
    public static class GlobalFunctions
    {
        public static string AppId = "000000004C139653";
        public static string AppSecret = "hfA3pP7gECUnkSbKKKBW-eUuOwRZzlwe";

        public static bool IsLocalUrl(string url)
        {
            if (string.IsNullOrEmpty(url))
            {
                return false;
            }
            else
            {
                return ((url[0] == '/' && (url.Length == 1 ||
                        (url[1] != '/' && url[1] != '\\'))) ||   // "/" or "/foo" but not "//" or "/\"
                        (url.Length > 1 &&
                         url[0] == '~' && url[1] == '/'));   // "~/" or "~/foo"
            }
        }

        public static string GetKontoMenu(string pageTitle)
        {
            char page = '\0';
            if (pageTitle == "Konto") page = 'K';
            else if (pageTitle == "Usuń konto") page = 'U';

            string R = "<h3>";
            if (page != 'K') R += "<a href=\"/Konto/\">Zmień hasło</a>  ";
            else R += "Zmień hasło  ";
            if (page != 'U') R += "<a href=\"/Konto/Usuń konto\">Usuń konto</a>  ";
            else R += "Usuń konto  ";

            R += "</h3>";

            return R;
        }

        public static object GetAdminMenu(string pageTitle)
        {
            char page = '\0';
            if (pageTitle == "Statystyki") page = 'S';
            else if (pageTitle == "Użytkownicy") page = 'A';
            else if (pageTitle == "Arrived") page = 'P';
            else if (pageTitle == "Wiadomości") page = 'M';
            else if (pageTitle == "Losowanie") page = 'L';

            string R = "<h3 class=\"adminHeader\">";
            if (page != 'S') R += "<a href=\"/Admin/\">Statystyki</a>  ";
            else R += "Statystyki  ";
            if (page != 'A') R += "<a href=\"/Admin/Użytkownicy\">Użytkownicy</a>  ";
            else R += "Użytkownicy  ";
            if (page != 'P') R += "<a href=\"/Admin/Arrived\">Arrived</a>  ";
            else R += "Arrived  ";
            if (page != 'M') R += "<a href=\"/Admin/Wiadomości\">Wiadomości</a>  ";
            else R += "Wiadomości  ";
            if (page != 'L') R += "<a href=\"/Admin/Losowanie\">Losowanie</a>  ";
            else R += "Losowanie  ";

            R += "</h3>";

            return R;
        }
    }
}