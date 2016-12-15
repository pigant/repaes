using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class salir : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();

        // Drop all the information held in the session
        Session.Clear();
        Session.Abandon();

        // clear authentication cookie
        HttpCookie cookie1 = new HttpCookie(FormsAuthentication.FormsCookieName, "");
        cookie1.Expires = DateTime.Now.AddYears(-1);
        Response.Cookies.Add(cookie1);

        // clear session cookie
        HttpCookie cookie2 = new HttpCookie("ASP.NET_SessionId", "");
        cookie2.Expires = DateTime.Now.AddYears(-1);
        Response.Cookies.Add(cookie2);

        // Redirect the user to the login page
        Response.Redirect("menu.aspx");
    }
}