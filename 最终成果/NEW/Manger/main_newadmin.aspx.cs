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

public partial class Manger_main_newadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (SqlDataSource1.Insert() != 0)
        {
            Response.Redirect("main_newadmin.aspx");
            Label1.Text = "新建成功";
        }
        else
        {
            Label1.Text = "新建失败";
        }
    }
}
