<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main_stuinfo.aspx.cs" Inherits="Student_main_stuinfo" %>

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
          校友记录</th>
    </tr>
   
    <tr>
      <td  colspan="2" class="td_bg" align="center">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
                  &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
              <asp:ListItem>全部</asp:ListItem>
              <asp:ListItem>班干</asp:ListItem>
          </asp:DropDownList>
          &nbsp;&nbsp;<br />
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4"
              DataKeyNames="id" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None"
              Width="352px" onselectedindexchanged="GridView2_SelectedIndexChanged1">
              <RowStyle BackColor="#EFF3FB" />
              <Columns>
                  <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                  <asp:BoundField DataField="stunum" HeaderText="学号" SortExpression="stunum" />
                  <asp:BoundField DataField="Cadre" HeaderText="职务" SortExpression="Cadre" />
                  <asp:BoundField DataField="classnum" HeaderText="班号" SortExpression="classnum" />
                  <asp:CommandField ShowSelectButton="True" />
              </Columns>
              <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
              <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              <EditRowStyle BackColor="#2461BF" />
              <AlternatingRowStyle BackColor="White" />
          </asp:GridView>
          <br />
          <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow"
              BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource5"
              ForeColor="Black" GridLines="None" Height="50px" Width="244px" 
                      onpageindexchanging="DetailsView2_PageIndexChanging">
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
              </Fields>
              <HeaderStyle BackColor="Tan" Font-Bold="True" />
              <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
              <AlternatingRowStyle BackColor="PaleGoldenrod" />
          </asp:DetailsView>
              </ContentTemplate>
          </asp:UpdatePanel>
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT * FROM [StudentInfo] WHERE ([classnum] = @classnum)" 
              onselecting="SqlDataSource4_Selecting">
              <SelectParameters>
                  <asp:SessionParameter Name="classnum" SessionField="classnum" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
              SelectCommand="SELECT * FROM [StudentInfo] WHERE ([id] = @id)" 
              onselecting="SqlDataSource5_Selecting">
              <SelectParameters>
                  <asp:ControlParameter ControlID="GridView2" Name="id" PropertyName="SelectedValue"
                      Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>
      </td>
    </tr>
  
</table>
</form></body>
</html>
