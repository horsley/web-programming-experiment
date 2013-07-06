using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace horsley_exp1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (user.Text.Length == 0 || pass.Text.Length == 0 || pass0.Text.Length == 0 || email.Text.Length == 0) //字段留空
            {
                Response.Write("<script>alert(\"全部字段必填，请重新输入！\")</script>");
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(pass.Text, @"[A-Za-z0-9]{1,8}")) //密码格式不对
            {
                Response.Write("<script>alert(\"密码格式不对，请重新输入！\")</script>");
                return;
            }
            if (!pass.Text.Equals(pass0.Text)) //两次密码不一致
            {
                Response.Write("<script>alert(\"两次密码不一致，请重新输入！\")</script>");
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(email.Text, @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*")) //电子邮件格式不对
            {
                Response.Write("<script>alert(\"电子邮件格式不对，请重新输入！\")</script>");
                return;
            }
            Response.Write("<script>alert(\"注册成功!自动跳转到登陆\"); location.href = \"Login.aspx\"</script>");
        }
    }
}
