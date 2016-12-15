using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e){

    }
    protected void BtnIngreso_Click(object sender, EventArgs e){
        Response.Redirect("ingreso.aspx");
    }
    protected void BtnSalida_Click(object sender, EventArgs e){
        Response.Redirect("salidas.aspx");
    }
    protected void BtnResumen_Click(object sender, EventArgs e){
        Response.Redirect("resumen.aspx");
    }
    protected void BtnSalir_Click(object sender, EventArgs e){
        Response.Redirect("login.aspx");
    }
}