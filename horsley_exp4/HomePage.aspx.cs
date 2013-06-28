using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class HomePage : System.Web.UI.Page
{

    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        Login loginControl = (Login)LoginView1.Controls[0].Controls[0].FindControl("Login1");
        string txtUsername = loginControl.UserName;
        this.Response.Cookies.Add(new HttpCookie("username", txtUsername)); //登陆后设置cookie 方便模板页根据登录用户显示个性化的菜单

        //根据登录用户角色跳转页面
        if (Roles.IsUserInRole(txtUsername, "Administrator"))
        {
            this.Response.Redirect("~/Admin/Default.aspx");
        }
        else if (Roles.IsUserInRole(txtUsername, "Member"))
        {
            this.Response.Redirect("~/Member/Private.aspx");
        }
    }
    protected void LoginStatus1_LoggedOut(object sender, EventArgs e)
    {
        //通过添加一个过期时间为一天前的cookie覆盖掉旧的登陆cookie
        HttpCookie c = new HttpCookie("username");
        c.Expires = DateTime.Now.AddHours(-24);
        this.Response.Cookies.Add(c);
    }
}
