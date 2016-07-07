<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main_classinfo.aspx.cs" Inherits="Manger_main_classinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>班级查看</title>
<link href="../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body><form id="form1" runat="server">
<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
 
    <tr>
      <th class="bg_tr" align="center" colspan="2" height="25">
          班级查看</th>
    </tr>
   
    <tr>
      <td  colspan="2" class="td_bg" align="center">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
          按班号查询<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
              DataTextField="ClassNum" DataValueField="ClassNum" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
              <asp:ListItem Selected="True">显示全部</asp:ListItem>
          </asp:DropDownList>
          <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">显示全部</asp:LinkButton>
          <br />
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
              AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1"
              ForeColor="#333333" GridLines="None" Width="512px" Height="341px">
              <RowStyle BackColor="#EFF3FB" />
              <Columns>
                  <asp:BoundField DataField="ClassNum" HeaderText="班号" SortExpression="ClassNum">
                      <ControlStyle Width="100px" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Department" HeaderText="届别" SortExpression="Department">
                      <ControlStyle Width="100px" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Major" HeaderText="班级" SortExpression="Major">
                      <ControlStyle Width="100px" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Count" HeaderText="人数" SortExpression="Count">
                      <ControlStyle Width="30px" />
                  </asp:BoundField>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              </Columns>
              <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
              <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              <EditRowStyle BackColor="#2461BF" />
              <AlternatingRowStyle BackColor="White" />
          </asp:GridView>
              </ContentTemplate>
          </asp:UpdatePanel>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
              ConnectionString="<%$ ConnectionStrings:myclassConn %>" DeleteCommand="DELETE FROM [ClassInfo] WHERE [id] = @original_id AND [ClassNum] = @original_ClassNum AND [Department] = @original_Department AND [Major] = @original_Major AND [Count] = @original_Count"
              InsertCommand="INSERT INTO [ClassInfo] ([ClassNum], [Department], [Major], [Count]) VALUES (@ClassNum, @Department, @Major, @Count)"
              OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ClassInfo]"
              UpdateCommand="UPDATE [ClassInfo] SET [ClassNum] = @ClassNum, [Department] = @Department, [Major] = @Major, [Count] = @Count WHERE [id] = @original_id AND [ClassNum] = @original_ClassNum AND [Department] = @original_Department AND [Major] = @original_Major AND [Count] = @original_Count">
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
                  <asp:Parameter Name="ClassNum" Type="String" />
                  <asp:Parameter Name="Department" Type="String" />
                  <asp:Parameter Name="Major" Type="String" />
                  <asp:Parameter Name="Count" Type="Int32" />
              </InsertParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT [ClassNum] FROM [ClassInfo]"></asp:SqlDataSource>
      </td>
    </tr>
  
</table>
</form></body>
</html>
