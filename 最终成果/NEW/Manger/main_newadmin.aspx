<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main_newadmin.aspx.cs" Inherits="Manger_main_newadmin" %>

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
          添加管理员</th>
    </tr>
   
    <tr>
      <td  colspan="2" class="td_bg" align="center">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
              CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333"
              GridLines="None" PageSize="5" Width="485px">
              <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              <Columns>
                  <asp:BoundField DataField="name" HeaderText="用户名" SortExpression="name" />
                  <asp:BoundField DataField="question" HeaderText="提示问题" SortExpression="question" />
                  <asp:CommandField ShowDeleteButton="True" />
              </Columns>
              <RowStyle BackColor="#EFF3FB" />
              <EditRowStyle BackColor="#2461BF" />
              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
              <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              <AlternatingRowStyle BackColor="White" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
              ConnectionString="<%$ ConnectionStrings:myclassConn %>" DeleteCommand="DELETE FROM [AdminInfo] WHERE [id] = @original_id"
              InsertCommand="INSERT INTO [AdminInfo] ([name], [stunum], [question], [answer]) VALUES (@name, @stunum, @question, @answer)"
              OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [AdminInfo]"
              UpdateCommand="UPDATE [AdminInfo] SET [name] = @name, [stunum] = @stunum, [question] = @question, [answer] = @answer WHERE [id] = @original_id AND [name] = @original_name AND [stunum] = @original_stunum AND [question] = @original_question AND [answer] = @original_answer">
              <DeleteParameters>
                  <asp:Parameter Name="original_id" Type="Int32" />
              </DeleteParameters>
              <UpdateParameters>
                  <asp:Parameter Name="name" Type="String" />
                  <asp:Parameter Name="stunum" Type="String" />
                  <asp:Parameter Name="question" Type="String" />
                  <asp:Parameter Name="answer" Type="String" />
                  <asp:Parameter Name="original_id" Type="Int32" />
                  <asp:Parameter Name="original_name" Type="String" />
                  <asp:Parameter Name="original_stunum" Type="String" />
                  <asp:Parameter Name="original_question" Type="String" />
                  <asp:Parameter Name="original_answer" Type="String" />
              </UpdateParameters>
              <InsertParameters>
                  <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="TextBox2" Name="stunum" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="DropDownList1" Name="question" PropertyName="SelectedValue"
                      Type="String" />
                  <asp:ControlParameter ControlID="TextBox4" Name="answer" PropertyName="Text" Type="String" />
              </InsertParameters>
          </asp:SqlDataSource>
          <br />
          <table style="width: 416px">
              <tr>
                  <td colspan="3"align="center">
                     新建管理员</td>
              </tr>
              <tr>
                  <td style="width: 65px">
                      用户名:</td>
                  <td style="width: 139px">
                      <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox></td>
                  <td style="width: 69px">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                          ErrorMessage="不能为空!">*</asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                  <td style="width: 65px">
                      密码:</td>
                  <td style="width: 139px">
                      <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="150px"></asp:TextBox></td>
                  <td style="width: 69px">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                          ErrorMessage="不能为空!">*</asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                  <td style="width: 65px; height: 28px">
                      确认:</td>
                  <td style="width: 139px; height: 28px">
                      <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="150px"></asp:TextBox></td>
                  <td style="width: 69px; height: 28px">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                          ErrorMessage="不能为空!">*</asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                  <td style="width: 65px">
                      问题：</td>
                  <td style="width: 139px" align="left">
                      <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2"
                          DataTextField="question" DataValueField="question">
                      </asp:DropDownList>
                  </td>
                  <td style="width: 69px">
                  </td>
              </tr>
              <tr>
                  <td style="width: 65px">
                      答案:</td>
                  <td style="width: 139px">
                      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                  <td style="width: 69px">
                  </td>
              </tr>
              <tr>
                  <td colspan="3">
                      &nbsp;&nbsp;
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
                          ControlToValidate="TextBox3" ErrorMessage="两次密码输入不一致!"></asp:CompareValidator></td>
              </tr>
              <tr>
                  <td colspan="3">
                  </td>
              </tr>
              <tr>
                  <td colspan="3" style="height: 26px">
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />
                      <asp:Label ID="Label1" runat="server"></asp:Label></td>
              </tr>
          </table>
              </ContentTemplate>
          </asp:UpdatePanel>
          &nbsp; &nbsp;&nbsp;
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT [question] FROM [question]"></asp:SqlDataSource>
      </td>
    </tr>
  
</table>
</form></body>
</html>
