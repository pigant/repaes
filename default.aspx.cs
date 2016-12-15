using DatabaseModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            Response.Redirect("menu.aspx");
        }
    }
    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        DatabaseEntities1 Db = new DatabaseEntities1();
        var name = Login1.UserName;
        var user = (from u in Db.User where u.Username == name select u).FirstOrDefault();
        Session["id_user"] = user.IdUser;
        Session["name_user"] = user.FirstName + " " + user.LastName;
    }
}