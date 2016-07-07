<%@ Page Language="C#" AutoEventWireup="true" CodeFile="error.aspx.cs" Inherits="error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body><form id="form1" runat="server">
<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
 
    <tr>
      <th class="bg_tr" align="center" colspan="2" height="25">
          系统提示</th>
    </tr>
   
    <tr>
      <td  colspan="2" class="td_bg" align="center">
          <span style="font-size: 14pt"><span style="font-family: 宋体">
              <div style="width: 329px; height: 100px">
                  <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Images/error.gif"
                      Width="62px" />
                  &nbsp; 出错啦！请联系管理员~ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                  &nbsp;&nbsp;<br />
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:HyperLink
                      ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">返回首页</asp:HyperLink></div>
          </span></span></td>
    </tr>
  
</table>
</form></body>
</html>
