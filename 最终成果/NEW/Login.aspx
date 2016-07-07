<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Login.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>校友信息管理系统</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体"  >
				<br>
				<br>
				<br>
				<br>
				<br>
				<TABLE align="center" cellSpacing="0" cellPadding="0" width="526" 
                border="0" bgcolor="#99CCFF">
					<TR align="center">
						<TD colSpan="3">校友信息管理系统</TD>
					</TR>
					<TR>
						<TD>&nbsp;</TD>
						<TD width="187" height="219">
							<TABLE id="Table3" height="219" cellSpacing="0" cellPadding="0" width="187" border="0">
								<TR>
									<TD align="center" style="height: 243px">
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                        <table>
                                            <tr>
                                                <td colspan="3">
                                                    用户登录<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="主页" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 60px; height: 26px">
                                                    &nbsp;<asp:Label ID="usernameLabel" runat="server" Font-Size="12px" Text="姓名:"></asp:Label></td>
                                                <td style="width: 100px; height: 26px">
                                                    <asp:TextBox ID="uNameTextBox" runat="server" Width="100px"></asp:TextBox></td>
                                                <td style="width: 22px; border-top-style: none; border-right-style: none; border-left-style: none;
                                                    height: 26px; border-bottom-style: none">
                                                    <asp:Label ID="star1Label" runat="server" Font-Size="12px" ForeColor="Red" Text="*"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 60px; border-top-style: none; border-right-style: none; border-left-style: none;
                                                    height: 26px; border-bottom-style: none">
                                                    &nbsp;<asp:Label ID="usernumLabel" runat="server" Font-Size="12px" Text="班号"></asp:Label></td>
                                                <td style="width: 100px; height: 26px">
                                                    <asp:TextBox ID="uNumTextBox" runat="server" Width="100px"></asp:TextBox></td>
                                                <td style="width: 22px; border-top-style: none; border-right-style: none; border-left-style: none;
                                                    height: 26px; border-bottom-style: none">
                                                    <asp:Label ID="star2Label" runat="server" Font-Size="12px" ForeColor="Red" Text="*"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uNameTextBox"
                                                        ErrorMessage="用户名不能为空!" Font-Size="12px"></asp:RequiredFieldValidator><asp:RequiredFieldValidator
                                                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="uNumTextBox" ErrorMessage="密码学号不能为空!"
                                                            Font-Size="12px"></asp:RequiredFieldValidator></td>
                                            </tr>
                                            <tr>
                                                <td align="right" colspan="3" style="height: 23px">
                                                    &nbsp;<asp:CheckBox ID="isAdmin" runat="server" AutoPostBack="True" Font-Size="12px"
                                                        OnCheckedChanged="isAdmin_CheckedChanged" Text="管理" />
                                                    <asp:Button ID="loginBtn" runat="server" Font-Size="12px" OnClick="loginBtn_Click"
                                                        Text="登录" /></td>
                                            </tr>
                                        </table>
                                                <asp:Label ID="Label1" runat="server" Font-Size="12px" ForeColor="Red"></asp:Label>
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="12px" ForeColor="Red" NavigateUrl="~/register.aspx">注册</asp:HyperLink>&nbsp;
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        &nbsp;&nbsp;
                                        <br />
                                        </TD>
								</TR>
							</TABLE>
						</TD>
						<TD><IMG height="219" alt="" src="images/login1_4.jpg" width="18"></TD>
					</TR>
					<TR>
						<TD colSpan="3">&nbsp;</TD>
					</TR>
				</TABLE>
			</FONT>
            <asp:SqlDataSource ID="SqlDataSourceAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
                DataSourceMode="DataReader" SelectCommand="SELECT [name], [stunum] FROM [AdminInfo] WHERE (([name] = @name) AND ([stunum] = @stunum))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="uNameTextBox" Name="name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="uNumTextBox" Name="stunum" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" ConnectionString="<%$ ConnectionStrings:myclassConn %>"
                DataSourceMode="DataReader" SelectCommand="SELECT [name], [stunum] FROM [StudentInfo] WHERE (([name] = @name) AND ([classnum] = @classnum))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="uNameTextBox" Name="name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="uNumTextBox" Name="classnum" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
		</form>
	</body>
</HTML>
