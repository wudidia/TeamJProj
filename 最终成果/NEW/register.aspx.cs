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
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    int regFlag;
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
        // TextBox2.Text = "1069140108";
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
        //if (regFlag == 0)
        //{
        //    Label2.Text = "请修改用户名!";
        //}
        //else
        //{
            if (SqlDataSource1.Insert() != 0)
            {
                Session["name"] = TextBox1.Text;
                Session["classnum"] = DropDownList1.SelectedValue.ToString();
                Session["isAdmin"] = 0;
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('注册失败!')</script>");
            }
        //}
    }
    //protected void TextBox1_TextChanged(object sender, EventArgs e)
    //{
    //    string connstr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\myclass.mdf;Integrated Security=True;User Instance=True";
    //    string sql = "SELECT COUNT(*) FROM [StudentInfo] WHERE ([name] = @name)";
    //    SqlConnection conn = new SqlConnection(connstr);
    //    conn.Open();
    //    SqlCommand com = new SqlCommand(sql, conn);
    //    SqlParameter pa = new SqlParameter("@name", SqlDbType.VarChar, 50);
    //    pa.Value = TextBox1.Text;
    //    com.Parameters.Add(pa);
    //    int i = (int)com.ExecuteScalar();
    //    if (i != 0)
    //    {
    //        Label2.Text = "用户名已经注册";
    //        regFlag = 0;
    //    }
    //    else
    //    {
    //        Label2.Text = "用户名可以使用";
    //        regFlag = 1;
    //    }
       
    //}
}
