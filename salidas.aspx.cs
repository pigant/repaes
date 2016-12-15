using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class salidas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnRegistrar_Click(object sender, EventArgs e)
    {
        metodos m = new metodos();
        m.SalidaVehic(Convert.ToInt32(ListPatentes.SelectedValue), DateTime.Now);
        Response.Redirect("menu.aspx");
    }
    protected void BtnVolver_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }
}