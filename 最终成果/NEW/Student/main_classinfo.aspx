<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main_classinfo.aspx.cs" Inherits="Student_main_classinfo" %>

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
          班级查看</th>
    </tr>
   
    <tr>
      <td  colspan="2" class="td_bg" align="center">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
          按班号查询<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4"
              DataTextField="ClassNum" DataValueField="ClassNum" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
          </asp:DropDownList>
          <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">显示全部</asp:LinkButton>
          <br />
          <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True"
              AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3"
              ForeColor="#333333" GridLines="None" Width="437px">
              <RowStyle BackColor="#EFF3FB" />
              <Columns>
                  <asp:BoundField DataField="ClassNum" HeaderText="班号" SortExpression="ClassNum" />
                  <asp:BoundField DataField="Department" HeaderText="届别" SortExpression="Department" />
                  <asp:BoundField DataField="Major" HeaderText="班级" SortExpression="Major" />
                  <asp:BoundField DataField="Count" HeaderText="人数" SortExpression="Count" />
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
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT * FROM [ClassInfo]"></asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT [ClassNum] FROM [ClassInfo]"></asp:SqlDataSource>
      </td>
    </tr>
  
</table>
</form></body>
</html>
