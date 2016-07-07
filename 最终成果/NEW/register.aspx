<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

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
          <span style="color: #ff0000">用户注册</span></th>
    </tr>
   
    <tr>
      <td  colspan="2" class="td_bg" align="center">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
          <table style="border-top-width: thin; border-left-width: thin; border-left-color: #66ccff;
              border-bottom-width: thin; border-bottom-color: #66ccff; border-top-color: #66ccff;
              border-right-width: thin; border-right-color: #66ccff">
              <tr>
                  <td align="left" colspan="3">
                      用户注册</td>
              </tr>
              <tr>
                  <td align="left" colspan="3">
                      姓名:&nbsp;
                      <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                          Width="150px"></asp:TextBox><span>*</span></td>
              </tr>
              <tr>
                  <td align="left" colspan="3">
                      学号:&nbsp;
                      <asp:Label ID="Label1" runat="server" Text="1" Width="5px"></asp:Label>
                      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
                          DataTextField="ClassNum" DataValueField="ClassNum" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                      </asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"
                          OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                      </asp:DropDownList></td>
              </tr>
              <tr>
                  <td align="left" colspan="3">
                      &nbsp;
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
              </tr>
              <tr>
                  <td align="left" colspan="3">
                      年龄: &nbsp;<asp:DropDownList ID="DropDownList3" runat="server">
                      </asp:DropDownList></td>
              </tr>
              <tr>
                  <td align="left" colspan="3">
                      性别:&nbsp;
                      <asp:DropDownList ID="DropDownList4" runat="server">
                          <asp:ListItem>男</asp:ListItem>
                          <asp:ListItem>女</asp:ListItem>
                      </asp:DropDownList></td>
              </tr>
              <tr>
                  <td align="left" colspan="3">
                      职务:&nbsp;
                      <asp:DropDownList ID="DropDownList5" runat="server">
                          <asp:ListItem>校友</asp:ListItem>
                          <asp:ListItem>班长</asp:ListItem>
                          <asp:ListItem>生活班长</asp:ListItem>
                          <asp:ListItem>学习委员</asp:ListItem>
                          <asp:ListItem>体育委员</asp:ListItem>
                          <asp:ListItem>团支书</asp:ListItem>
                          <asp:ListItem>宣传委员</asp:ListItem>
                      </asp:DropDownList></td>
              </tr>
              <tr>
                  <td colspan="3" style="height: 21px">
                      &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                          ErrorMessage="不能为空！"></asp:RequiredFieldValidator>
                      <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label></td>
              </tr>
              <tr>
                  <td style="height: 26px" colspan="3">
                      &nbsp;
                      &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注册" />
                  </td>
              </tr>
          </table>
              </ContentTemplate>
          </asp:UpdatePanel>
          &nbsp;&nbsp;
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
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
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT [ClassNum] FROM [ClassInfo]"></asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT [name] FROM [StudentInfo] WHERE ([name] = @name)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          &nbsp;</td>
    </tr>
  
</table>
</form></body>
</html>
