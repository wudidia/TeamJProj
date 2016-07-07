<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main_newstu.aspx.cs" Inherits="Manger_main_newstu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body><form id="form1" runat="server">
<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
 
    <tr>
      <th class="bg_tr" align="center" colspan="2" height="25">
          添加校友信息</th>
    </tr>
   
    <tr>
      <td  colspan="2" class="td_bg" align="center">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
          <table style="width: 344px; height: 239px">
              <tr>
                  <td style="width: 60px">
                      姓名：</td>
                  <td align="left" style="width: 121px">
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                  <td style="width: 77px">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                          ErrorMessage="不能为空！">*</asp:RequiredFieldValidator></td>
              </tr>
              <tr style="color: #1e5494">
                  <td style="width: 60px">
                      学号：</td>
                  <td align="left" style="width: 121px">
                      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                          DataTextField="ClassNum" DataValueField="ClassNum" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                      </asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"
                          OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                      </asp:DropDownList></td>
                  <td style="width: 77px">
                  </td>
              </tr>
              <tr>
                  <td style="width: 60px; height: 26px">
                  </td>
                  <td align="left" style="width: 121px; height: 26px">
                      <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" 
                          ontextchanged="TextBox2_TextChanged"></asp:TextBox></td>
                  <td style="width: 77px; height: 26px">
                  </td>
              </tr>
              <tr>
                  <td style="width: 60px">
                      年龄:</td>
                  <td align="left" style="width: 121px">
                      <asp:DropDownList ID="DropDownList3" runat="server">
                      </asp:DropDownList></td>
                  <td style="width: 77px">
                  </td>
              </tr>
              <tr>
                  <td style="width: 60px">
                      性别:</td>
                  <td align="left" style="width: 121px">
                      <asp:DropDownList ID="DropDownList4" runat="server">
                          <asp:ListItem Selected="True">男</asp:ListItem>
                          <asp:ListItem>女</asp:ListItem>
                      </asp:DropDownList></td>
                  <td style="width: 77px">
                  </td>
              </tr>
              <tr>
                  <td style="width: 60px">
                      职务：</td>
                  <td align="left" style="width: 121px">
                      <asp:DropDownList ID="DropDownList5" runat="server">
                          <asp:ListItem>校友</asp:ListItem>
                          <asp:ListItem>班长</asp:ListItem>
                          <asp:ListItem>生活班长</asp:ListItem>
                          <asp:ListItem>学习委员</asp:ListItem>
                          <asp:ListItem>体育委员</asp:ListItem>
                          <asp:ListItem>宣传委员</asp:ListItem>
                          <asp:ListItem>组织委员</asp:ListItem>
                          <asp:ListItem>团支书</asp:ListItem>
                      </asp:DropDownList></td>
                  <td style="width: 77px">
                  </td>
              </tr>
              <tr>
                  <td style="width: 60px; height: 18px">
                  </td>
                  <td style="width: 121px; height: 18px">
                      <asp:Label ID="Label1" runat="server"></asp:Label></td>
                  <td style="width: 77px; height: 18px">
                  </td>
              </tr>
              <tr>
                  <td style="width: 60px; height: 32px">
                  </td>
                  <td style="width: 121px; height: 32px">
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" /></td>
                  <td style="width: 77px; height: 32px">
                  </td>
              </tr>
          </table>
              </ContentTemplate>
          </asp:UpdatePanel>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT [ClassNum] FROM [ClassInfo]"></asp:SqlDataSource>
          &nbsp;
          <br />
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues"
              ConnectionString="<%$ ConnectionStrings:myclassConn %>" DeleteCommand="DELETE FROM [StudentInfo] WHERE [id] = @original_id AND [classnum] = @original_classnum AND [stunum] = @original_stunum AND [name] = @original_name AND [sex] = @original_sex AND [age] = @original_age AND [Cadre] = @original_Cadre AND (([photoPath] = @original_photoPath) OR ([photoPath] IS NULL AND @original_photoPath IS NULL))"
              InsertCommand="INSERT INTO [StudentInfo] ([classnum], [stunum], [name], [sex], [age], [Cadre], [photoPath]) VALUES (@classnum, @stunum, @name, @sex, @age, @Cadre, @photoPath)"
              OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [StudentInfo]"
              UpdateCommand="UPDATE [StudentInfo] SET [classnum] = @classnum, [stunum] = @stunum, [name] = @name, [sex] = @sex, [age] = @age, [Cadre] = @Cadre, [photoPath] = @photoPath WHERE [id] = @original_id AND [classnum] = @original_classnum AND [stunum] = @original_stunum AND [name] = @original_name AND [sex] = @original_sex AND [age] = @original_age AND [Cadre] = @original_Cadre AND (([photoPath] = @original_photoPath) OR ([photoPath] IS NULL AND @original_photoPath IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_id" Type="Int32" />
                  <asp:Parameter Name="original_classnum" Type="String" />
                  <asp:Parameter Name="original_stunum" Type="String" />
                  <asp:Parameter Name="original_name" Type="String" />
                  <asp:Parameter Name="original_sex" Type="String" />
                  <asp:Parameter Name="original_age" Type="Int32" />
                  <asp:Parameter Name="original_Cadre" Type="String" />
                  <asp:Parameter Name="original_photoPath" Type="String" />
              </DeleteParameters>
              <UpdateParameters>
                  <asp:Parameter Name="classnum" Type="String" />
                  <asp:Parameter Name="stunum" Type="String" />
                  <asp:Parameter Name="name" Type="String" />
                  <asp:Parameter Name="sex" Type="String" />
                  <asp:Parameter Name="age" Type="Int32" />
                  <asp:Parameter Name="Cadre" Type="String" />
                  <asp:Parameter Name="photoPath" Type="String" />
                  <asp:Parameter Name="original_id" Type="Int32" />
                  <asp:Parameter Name="original_classnum" Type="String" />
                  <asp:Parameter Name="original_stunum" Type="String" />
                  <asp:Parameter Name="original_name" Type="String" />
                  <asp:Parameter Name="original_sex" Type="String" />
                  <asp:Parameter Name="original_age" Type="Int32" />
                  <asp:Parameter Name="original_Cadre" Type="String" />
                  <asp:Parameter Name="original_photoPath" Type="String" />
              </UpdateParameters>
              <InsertParameters>
                  <asp:ControlParameter ControlID="DropDownList1" Name="classnum" PropertyName="SelectedValue"
                      Type="String" />
                  <asp:ControlParameter ControlID="TextBox2" Name="stunum" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="DropDownList4" Name="sex" PropertyName="SelectedValue"
                      Type="String" />
                  <asp:ControlParameter ControlID="DropDownList3" Name="age" PropertyName="SelectedValue"
                      Type="Int32" />
                  <asp:ControlParameter ControlID="DropDownList5" Name="Cadre" PropertyName="SelectedValue"
                      Type="String" />
                  <asp:Parameter Name="photoPath" Type="String" />
              </InsertParameters>
          </asp:SqlDataSource>
          <br />
          <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
      </td>
    </tr>
  
</table>
</form></body>
</html>
