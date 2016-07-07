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

public partial class Student_main_stuinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView2.SelectedIndex = 0;
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex == 0)
        {
            Response.Redirect("main_stuinfo.aspx");
        }
        else
        {
            SqlDataSource4.SelectCommand = "SELECT * FROM [StudentInfo] WHERE ([classnum] = @classnum) AND [Cadre]!='校友'";
        }
    }
    protected void DetailsView2_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void SqlDataSource5_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
