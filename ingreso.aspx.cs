using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ingreso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var nombre = TxtNombre.Text;
        var apellido = TxtApellido.Text;
        var patente = TxtPatente.Text;
        var user = Convert.ToInt32(Session["id_user"]);
        metodos m = new metodos();
        m.AddRecord(patente, nombre, apellido, user);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }
}