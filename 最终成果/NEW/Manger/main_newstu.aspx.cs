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

public partial class Manger_main_newstu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a;
        for (int i = 1; i <= 99; i++)
        {
            if (i <= 9)
            {
                a = "0" + i.ToString();
            }
            else
            {
                a = i.ToString();
            }
            DropDownList2.Items.Add(a);
            if (i >= 15 && i <= 35)
            {
                DropDownList3.Items.Add(i.ToString());
            }
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = "1" + DropDownList1.SelectedValue + DropDownList2.SelectedValue;
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = "1" + DropDownList1.SelectedValue + DropDownList2.SelectedValue;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (SqlDataSource2.Insert() != 0)
        {
            Label1.Text = "插入成功！";
        }
        else
        {
            Label1.Text = "插入失败！";
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
