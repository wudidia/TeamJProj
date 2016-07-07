using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Manger_main_classinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string n1 = DropDownList1.SelectedValue;
        SqlDataSource1.SelectCommand = "SELECT * FROM [ClassInfo] WHERE [ClassNum]='" + n1 + "'";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //SqlDataSource1.SelectCommand = "SELECT * FROM [ClassInfo]";
        Response.Redirect("main_classinfo.aspx");
    }
}
