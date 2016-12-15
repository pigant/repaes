using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class resumen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CalSalida.SelectedDate = DateTime.Now.AddDays(-1);
    }
    protected void CalSalida_SelectionChanged(object sender, EventArgs e)
    {
        GridResumen.DataBind();
    }
    protected void BtnVolver_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }
}