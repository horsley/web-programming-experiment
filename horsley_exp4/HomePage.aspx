<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 193px;
        }
        .style2
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container">
        <div id="sidebar">
        
        
            <asp:LoginView ID="LoginView1" runat="server">
                <LoggedInTemplate>
                    你好,<asp:LoginName ID="LoginName1" runat="server" />
                    &nbsp;<br />
                    <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="重新登录" 
                        LogoutText="退出登录" onloggedout="LoginStatus1_LoggedOut" />
                    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/Member/ChPasswd.aspx">修改密码</asp:HyperLink>
                    <br />
                </LoggedInTemplate>
                <AnonymousTemplate>
                    <asp:Login ID="Login1" runat="server" CreateUserText="注册用户" 
                        CreateUserUrl="~/RegAndPwdRec.aspx" FailureText="登录失败请重试" LoginButtonText="登录" 
                        PasswordLabelText="密码:" PasswordRecoveryText="忘记密码" 
                        PasswordRecoveryUrl="~/RegAndPwdRec.aspx" RememberMeText="记住密码" TitleText="登录" 
                        UserNameLabelText="用户名:" Width="197px" 
                        DestinationPageUrl="~/HomePage.aspx" onloggedin="Login1_LoggedIn">
                        <CheckBoxStyle HorizontalAlign="Center" />
                        <LayoutTemplate>
                            <table border="0" cellpadding="1" cellspacing="0" 
                                style="border-collapse: collapse;">
                                <tr>
                                    <td class="style1">
                                        <fieldset>
                                            <table border="0" cellpadding="0">
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        <legend>登录</legend></td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="UserName" runat="server" Width="111px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                            ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                            ToolTip="User Name is required." ValidationGroup="ctl01$Login1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="111px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                            ControlToValidate="Password" ErrorMessage="Password is required." 
                                                            ToolTip="Password is required." ValidationGroup="ctl01$Login1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        &nbsp;</td>
                                                    <td align="left">
                                                        <asp:CheckBox ID="RememberMe" runat="server" CssClass="rememberme" 
                                                            Text="记住密码" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        &nbsp;</td>
                                                    <td align="left">
                                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" 
                                                            CssClass="btn btn-primary" Text="登录" ValidationGroup="ctl01$Login1" 
                                                             />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" class="style2">
                                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        <asp:HyperLink ID="CreateUserLink" runat="server" 
                                                            NavigateUrl="~/RegAndPwdRec.aspx">忘记密码</asp:HyperLink>
                                                        &nbsp;
                                                        <asp:HyperLink ID="PasswordRecoveryLink" runat="server" 
                                                            NavigateUrl="~/RegAndPwdRec.aspx">注册用户</asp:HyperLink>
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                    </asp:Login>
                    
                </AnonymousTemplate>
            </asp:LoginView>
        
        </div>
        <div id="content">
            <p>姜老师是个好老师，讲的课都很好懂，无论是数字电路还是web编程，只可惜课程的设置上面，为何是asp.net？这种技术入手容易，方便教学，方便使用（强大的IDE），但是却不太符合实际生产需要。
            可以说是比较过时了，以前web开发三足订立，jsp/asp/php。asp和jsp慢慢的也不流行了，但是在大型网站后端的业务还是用java做的多，中小型网站则得益于php的灵活，微软虽然推了.net但是无力回天，纵观当前互联网
            流行的网站和应用，基本都没有采用asp.net。而且服务器也基本是linux内核的，很少有windows的服务器。</p>
            <p>我们不可否认微软在个人桌面PC的成功，但我们也不可否认微软不是万能的，至少在服务器端程序这一块，开源世界
            的力量更大些。有75%的网站正在使用PHP，如Facebook、维基百科、雅虎和Photobucket等网站都是使用PHP编程语言来构建的。全球最流行的博客平台WordPress也是用这种语言构建的，很可能在其35%的网络流量中占到了一
            半的比例。此外，其他大多数主要的内容管理系统也同样使用这种语言，如Drupal和Joomla等。
            </p>
            <p><a href="https://www.google.com/trends/explore?hl=en-US#q=asp,+jsp,+php,+asp.net&cmpt=q" target="_blank">点击这里由google trends提供的趋势图，比较asp/asp.net/php/jsp的热度</a>
            </p>
            <p>测试账号：<br />管理员：admin 密码：admin888- 普通用户：test 密码：test8888-
            </p>
        </div>
    </div>
</asp:Content>

