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

    }
    protected void CalSalida_SelectionChanged(object sender, EventArgs e)
    {
        metodos m = new metodos();
        m.GetRecordsFecha(CalSalida.SelectedDate);
        GridResumen.DataBind();
    }
}