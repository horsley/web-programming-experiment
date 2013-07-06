using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace horsley_exp1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (user.Text.Length == 0 || pass.Text.Length == 0)
            {
                Response.Write("<script>alert(\"全部字段必填，请重新输入！\")</script>");
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(pass.Text, @"[A-Za-z0-9]{1,8}"))
            {  //密码格式不对
                Response.Write("<script>alert(\"密码格式不对，请重新输入！\")</script>");
                return;
            }

            Response.Redirect("Exam1.aspx?user=" + user.Text.Trim() + "&test_type=" + test_type.SelectedItem.Text);
            
        }
    }
}
