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

public partial class Manger_main_stuinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.SelectedIndex = 0;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string n1 = DropDownList1.SelectedValue;
        SqlDataSource1.SelectCommand = "SELECT * FROM [StudentInfo] WHERE [classnum]='" + n1 + "'";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("main_stuinfo.aspx");
    }
}
