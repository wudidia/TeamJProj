using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public class BaseClass
{
	public BaseClass()
	{

	}

    /// <summary>
    /// 返回连接字符串
    /// </summary>
    ///<returns>返回连接字符串</returns>

    public static SqlConnection DBCon()
    {
        return new SqlConnection(ConfigurationManager.AppSettings["myclassConn"]);
    }

    /// <summary>
    /// 返回数据集并通过GridView显示
    /// </summary> 
    /// <param name="dg">GridView实例的对象</param>
    /// <param name="id">进行数据库操作时库中的主键</param>
    /// <param name="strSql">sql语句</param>
    /// <param name="Tnaem">表名</param>

    public static void BindDG(GridView dg, string id, string strSql, string Tname)
    {
        SqlConnection conn = DBCon();
        SqlDataAdapter sda = new SqlDataAdapter(strSql, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds, Tname);
        dg.DataSource = ds.Tables[Tname];
        dg.DataKeyNames = new string[] { id };
        dg.DataBind();
    }

    /// <summary>
    /// 操作数据库
    /// </summary> 
    /// <param name="strSql">sql语句select/insert/delete/update</param>

    public static void OperateData(string strsql)
    {
        SqlConnection conn = DBCon();
        conn.Open();
        SqlCommand cmd = new SqlCommand(strsql, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    /// <summary>
    /// 管理员登录
    /// </summary> 
    /// <param name="AdminID">管理员账号</param>
    /// <param name="Password">管理员密码</param>
    /// <returns>验证成功返回true 否则返回false</returns>

    public static bool CheckAdmin(string AdminID, string Password)
    {
        SqlConnection conn = DBCon();
        conn.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from db_Admin where AdminID='" + AdminID + "' and Password='" + Password + "'", conn);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        if (i > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
        conn.Close();
    }

    /// <summary>
    /// 校友登录
    /// </summary> 
    /// <param name="AdminID">校友账号</param>
    /// <param name="Password">校友密码</param>
    /// <returns>验证成功返回true 否则返回false</returns>

    public static bool CheckStudent(string StudentID, string Password)
    {
        SqlConnection conn = DBCon();
        conn.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from db_Student where StudentID='" + StudentID + "' and Password='" + Password + "'", conn);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        if (i > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
        conn.Close();
    }
}
