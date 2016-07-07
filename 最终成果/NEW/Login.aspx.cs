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

public partial class _Default : Web.Pages
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            uNumTextBox.Text = "";
            uNumTextBox.TextMode = TextBoxMode.SingleLine;
         
            HyperLink1.Visible = true;
            usernumLabel.Text = "班号:";
        }
    }
    protected void isAdmin_CheckedChanged(object sender, EventArgs e)
    {
        if (isAdmin.Checked == true)
        {
            uNumTextBox.Text = "";
            uNumTextBox.TextMode = TextBoxMode.Password;
       
            HyperLink1.Visible = false;
            usernumLabel.Text = "密码:";
        }
        else
        {
            uNumTextBox.Text = "";
            uNumTextBox.TextMode = TextBoxMode.SingleLine;
         
            HyperLink1.Visible = true;
            usernumLabel.Text = "学号:";
        }
    }
    protected void loginBtn_Click(object sender, EventArgs e)
    {
        int q = -1;
        SqlDataReader re;
        if (isAdmin.Checked == true)
        {
            re = (SqlDataReader)SqlDataSourceAdmin.Select(DataSourceSelectArguments.Empty);
            q = 1;
            if (re.Read())
            {
                Session["name"] = uNameTextBox.Text;
                Session["isAdmin"] = q;
                Session["stunum"] = uNumTextBox.Text;
                Response.Redirect("Manger/index.html");
            }
            else
            {
                Label1.Text = "用户名或密码错误请重新登陆";
               
            }
        }
        else
        {
            re = (SqlDataReader)SqlDataSourceUser.Select(DataSourceSelectArguments.Empty);
           
            if (re.Read())
            {
                Session["name"] = uNameTextBox.Text;
                Session["isAdmin"] = q;
                Session["classnum"] = uNumTextBox.Text;



                HttpCookie cookies;
                cookies = new HttpCookie("loginuser");

                cookies.Values.Add("Title", HttpUtility.UrlEncode(uNameTextBox.Text));
                cookies.Values.Add("ManagerId", HttpUtility.UrlEncode(uNumTextBox.Text));
 
        

                Response.Cookies.Set(cookies);






                Response.Redirect("Student/index.html");
            }
            else
            {
                Label1.Text = "用户名或密码错误请重新登陆";
            }
        }
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     
    }
}
