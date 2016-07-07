using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;

public class ValidateClass
{
	public ValidateClass()
	{

	}

    #region  验证输入为数字
    /// <summary>
    /// 验证输入为数字
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public bool validateNum(string str)
    {
        return Regex.IsMatch(str, "^[0-9]*[1-9][0-9]*$");
    }
    #endregion

    #region  验证输入身份证位数
    /// <summary>
    /// 验证输入身份证位数
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public bool validateMedian(string str)
    {
        return Regex.IsMatch(str, "^\\d{8}");
    }
    #endregion
}
