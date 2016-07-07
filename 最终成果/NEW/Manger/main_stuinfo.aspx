<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main_stuinfo.aspx.cs" Inherits="Manger_main_stuinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校友信息</title>
<link href="../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body><form id="form1" runat="server">
    &nbsp;<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
 
    <tr>
      <th class="bg_tr" align="center" colspan="2" height="25">
          校友信息</th>
    </tr>
   
    <tr>
      <td  colspan="2" class="td_bg" align="center">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <br />
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
          &nbsp;<asp:Label ID="Label1" runat="server" Text="查询"></asp:Label>
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3"
              DataTextField="classnum" DataValueField="classnum" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
          </asp:DropDownList>
          &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">显示全部</asp:LinkButton><br />
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
              AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1"
              ForeColor="#333333" GridLines="None" Width="621px">
              <RowStyle BackColor="#EFF3FB" />
              <Columns>
                  <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                  <asp:BoundField DataField="Cadre" HeaderText="职务" SortExpression="Cadre" />
                  <asp:BoundField DataField="classnum" HeaderText="班号" SortExpression="classnum" />
                  <asp:BoundField DataField="stunum" HeaderText="学号" SortExpression="stunum" />
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:CommandField ShowDeleteButton="True" />
              </Columns>
              <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
              <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              <EditRowStyle BackColor="#2461BF" />
              <AlternatingRowStyle BackColor="White" />
          </asp:GridView>
          &nbsp;
          <br />
          <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow"
              BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource2"
              ForeColor="Black" GridLines="None" Height="50px" Width="244px">
              <FooterStyle BackColor="Tan" />
              <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
              <Fields>
                  <%--<asp:ImageField DataImageUrlField="photoPath" NullImageUrl="~/images/photo/err.png">
                  </asp:ImageField>--%>
                  <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                  <asp:BoundField DataField="Cadre" HeaderText="职务" SortExpression="Cadre" />
                  <asp:BoundField DataField="stunum" HeaderText="学号" SortExpression="stunum" />
                  <asp:BoundField DataField="classnum" HeaderText="班号" SortExpression="classnum" />
                  <asp:BoundField DataField="sex" HeaderText="性别" SortExpression="sex" />
                  <asp:BoundField DataField="age" HeaderText="年龄" SortExpression="age" />
                  <asp:CommandField ShowEditButton="True" />
              </Fields>
              <HeaderStyle BackColor="Tan" Font-Bold="True" />
              <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
              <AlternatingRowStyle BackColor="PaleGoldenrod" />
          </asp:DetailsView>
              </ContentTemplate>
          </asp:UpdatePanel>
          &nbsp;
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              DeleteCommand="DELETE FROM [StudentInfo] WHERE [id] = @id" InsertCommand="INSERT INTO [StudentInfo] ([classnum], [stunum], [name], [sex], [age], [isCadre], [question], [answer], [photoPath]) VALUES (@classnum, @stunum, @name, @sex, @age, @isCadre, @question, @answer, @photoPath)"
              SelectCommand="SELECT * FROM [StudentInfo]" UpdateCommand="UPDATE [StudentInfo] SET [classnum] = @classnum, [stunum] = @stunum, [name] = @name, [sex] = @sex, [age] = @age, [isCadre] = @isCadre, [question] = @question, [answer] = @answer, [photoPath] = @photoPath WHERE [id] = @id">
              <DeleteParameters>
                  <asp:Parameter Name="id" Type="Int32" />
              </DeleteParameters>
              <UpdateParameters>
                  <asp:Parameter Name="classnum" Type="String" />
                  <asp:Parameter Name="stunum" Type="String" />
                  <asp:Parameter Name="name" Type="String" />
                  <asp:Parameter Name="sex" Type="String" />
                  <asp:Parameter Name="age" Type="Int32" />
                  <asp:Parameter Name="isCadre" Type="Int32" />
                  <asp:Parameter Name="question" Type="String" />
                  <asp:Parameter Name="answer" Type="String" />
                  <asp:Parameter Name="photoPath" Type="String" />
                  <asp:Parameter Name="id" Type="Int32" />
              </UpdateParameters>
              <InsertParameters>
                  <asp:Parameter Name="classnum" Type="String" />
                  <asp:Parameter Name="stunum" Type="String" />
                  <asp:Parameter Name="name" Type="String" />
                  <asp:Parameter Name="sex" Type="String" />
                  <asp:Parameter Name="age" Type="Int32" />
                  <asp:Parameter Name="isCadre" Type="Int32" />
                  <asp:Parameter Name="question" Type="String" />
                  <asp:Parameter Name="answer" Type="String" />
                  <asp:Parameter Name="photoPath" Type="String" />
              </InsertParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues"
              ConnectionString="<%$ ConnectionStrings:myclassConn %>" DeleteCommand="DELETE FROM [StudentInfo] WHERE [id] = @original_id AND [classnum] = @original_classnum AND [stunum] = @original_stunum AND [name] = @original_name AND [sex] = @original_sex AND [age] = @original_age AND [Cadre] = @original_Cadre AND (([question] = @original_question) OR ([question] IS NULL AND @original_question IS NULL)) AND (([answer] = @original_answer) OR ([answer] IS NULL AND @original_answer IS NULL)) AND (([photoPath] = @original_photoPath) OR ([photoPath] IS NULL AND @original_photoPath IS NULL))"
              InsertCommand="INSERT INTO [StudentInfo] ([classnum], [stunum], [name], [sex], [age], [Cadre], [question], [answer], [photoPath]) VALUES (@classnum, @stunum, @name, @sex, @age, @Cadre, @question, @answer, @photoPath)"
              OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [StudentInfo] WHERE ([id] = @id)"
              UpdateCommand="UPDATE [StudentInfo] SET [classnum] = @classnum, [stunum] = @stunum, [name] = @name, [sex] = @sex, [age] = @age, [Cadre] = @Cadre WHERE [id] = @original_id AND [classnum] = @original_classnum AND [stunum] = @original_stunum AND [name] = @original_name AND [sex] = @original_sex AND [age] = @original_age AND [Cadre] = @original_Cadre">
              <SelectParameters>
                  <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue"
                      Type="Int32" />
              </SelectParameters>
              <DeleteParameters>
                  <asp:Parameter Name="original_id" Type="Int32" />
                  <asp:Parameter Name="original_classnum" Type="String" />
                  <asp:Parameter Name="original_stunum" Type="String" />
                  <asp:Parameter Name="original_name" Type="String" />
                  <asp:Parameter Name="original_sex" Type="String" />
                  <asp:Parameter Name="original_age" Type="Int32" />
                  <asp:Parameter Name="original_Cadre" Type="String" />
                  <asp:Parameter Name="original_question" Type="String" />
                  <asp:Parameter Name="original_answer" Type="String" />
                  <asp:Parameter Name="original_photoPath" Type="String" />
              </DeleteParameters>
              <UpdateParameters>
                  <asp:ControlParameter ControlID="DetailsView1" Name="classnum" PropertyName="SelectedValue"
                      Type="String" />
                  <asp:ControlParameter ControlID="DetailsView1" Name="stunum" PropertyName="SelectedValue"
                      Type="String" />
                  <asp:ControlParameter ControlID="DetailsView1" Name="name" PropertyName="SelectedValue"
                      Type="String" />
                  <asp:ControlParameter ControlID="DetailsView1" Name="sex" PropertyName="SelectedValue"
                      Type="String" />
                  <asp:ControlParameter ControlID="DetailsView1" Name="age" PropertyName="SelectedValue"
                      Type="Int32" />
                  <asp:ControlParameter ControlID="DetailsView1" Name="Cadre" PropertyName="SelectedValue"
                      Type="String" />
                  <asp:Parameter Name="original_id" Type="Int32" />
                  <asp:Parameter Name="original_classnum" Type="String" />
                  <asp:Parameter Name="original_stunum" Type="String" />
                  <asp:Parameter Name="original_name" Type="String" />
                  <asp:Parameter Name="original_sex" Type="String" />
                  <asp:Parameter Name="original_age" Type="Int32" />
                  <asp:Parameter Name="original_Cadre" Type="String" />
              </UpdateParameters>
              <InsertParameters>
                  <asp:Parameter Name="classnum" Type="String" />
                  <asp:Parameter Name="stunum" Type="String" />
                  <asp:Parameter Name="name" Type="String" />
                  <asp:Parameter Name="sex" Type="String" />
                  <asp:Parameter Name="age" Type="Int32" />
                  <asp:Parameter Name="Cadre" Type="String" />
                  <asp:Parameter Name="question" Type="String" />
                  <asp:Parameter Name="answer" Type="String" />
                  <asp:Parameter Name="photoPath" Type="String" />
              </InsertParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT DISTINCT [classnum] FROM [StudentInfo]"></asp:SqlDataSource>
      </td>
    </tr>
  
</table>
</form></body>
</html>
