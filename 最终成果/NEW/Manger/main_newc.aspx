<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main_newc.aspx.cs" Inherits="Manger_main_newc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>班级添加</title>
<link href="../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body><form id="form1" runat="server">
<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
 
    <tr>
      <th class="bg_tr" align="center" colspan="2" height="25">
          班级添加</th>
    </tr>
   
    <tr>
      <td  colspan="2" class="td_bg" align="center">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
          <table >
              <tr>
                  <td style="width: 53px">
                      班号：</td>
                  <td style="width: 100px">
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                  <td style="width: 100px">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                          ErrorMessage="不能为空！">*</asp:RequiredFieldValidator></td>
              </tr>
              <tr style="color: #1e5494">
                  <td style="width: 53px">
                      届别：</td>
                  <td style="width: 100px">
                      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                          DataTextField="department" DataValueField="department">
                      </asp:DropDownList>
                  </td>
                  <td style="width: 100px">
                  </td>
              </tr>
              <tr>
                  <td style="width: 53px">
                      专业：</td>
                  <td style="width: 100px">
                      <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
                          DataTextField="major" DataValueField="major">
                      </asp:DropDownList>
                  </td>
                  <td style="width: 100px">
                  </td>
              </tr>
              <tr>
                  <td colspan="3" style="height: 18px">
                      <asp:Label ID="Label1" runat="server" ForeColor="#0000C0"></asp:Label></td>
              </tr>
              <tr>
                  <td style="height: 17px" colspan="3">
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认" /></td>
              </tr>
          </table>
              </ContentTemplate>
          </asp:UpdatePanel>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT DISTINCT [department] FROM [Department]"></asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT [major] FROM [Department] WHERE ([department] = @department)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="DropDownList1" Name="department" PropertyName="SelectedValue"
                      Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues"
              ConnectionString="<%$ ConnectionStrings:myclassConn %>" DeleteCommand="DELETE FROM [ClassInfo] WHERE [id] = @original_id AND [ClassNum] = @original_ClassNum AND [Department] = @original_Department AND [Major] = @original_Major AND [Count] = @original_Count"
              InsertCommand="INSERT INTO [ClassInfo] ([ClassNum], [Department], [Major], [Count]) VALUES (@ClassNum, @Department, @Major, @Count)"
              OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ClassInfo] WHERE (([ClassNum] = @ClassNum) AND ([Department] = @Department))"
              UpdateCommand="UPDATE [ClassInfo] SET [ClassNum] = @ClassNum, [Department] = @Department, [Major] = @Major, [Count] = @Count WHERE [id] = @original_id AND [ClassNum] = @original_ClassNum AND [Department] = @original_Department AND [Major] = @original_Major AND [Count] = @original_Count">
              <SelectParameters>
                  <asp:ControlParameter ControlID="TextBox1" Name="ClassNum" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="DropDownList1" Name="Department" PropertyName="SelectedValue"
                      Type="String" />
              </SelectParameters>
              <DeleteParameters>
                  <asp:Parameter Name="original_id" Type="Int32" />
                  <asp:Parameter Name="original_ClassNum" Type="String" />
                  <asp:Parameter Name="original_Department" Type="String" />
                  <asp:Parameter Name="original_Major" Type="String" />
                  <asp:Parameter Name="original_Count" Type="Int32" />
              </DeleteParameters>
              <UpdateParameters>
                  <asp:Parameter Name="ClassNum" Type="String" />
                  <asp:Parameter Name="Department" Type="String" />
                  <asp:Parameter Name="Major" Type="String" />
                  <asp:Parameter Name="Count" Type="Int32" />
                  <asp:Parameter Name="original_id" Type="Int32" />
                  <asp:Parameter Name="original_ClassNum" Type="String" />
                  <asp:Parameter Name="original_Department" Type="String" />
                  <asp:Parameter Name="original_Major" Type="String" />
                  <asp:Parameter Name="original_Count" Type="Int32" />
              </UpdateParameters>
              <InsertParameters>
                  <asp:ControlParameter ControlID="TextBox1" Name="ClassNum" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="DropDownList1" Name="Department" PropertyName="SelectedValue"
                      Type="String" />
                  <asp:ControlParameter ControlID="DropDownList2" Name="Major" PropertyName="SelectedValue"
                      Type="String" />
                  <asp:Parameter DefaultValue="0" Name="Count" Type="Int32" />
              </InsertParameters>
          </asp:SqlDataSource>
      </td>
    </tr>
  
</table>
</form></body>
</html>
