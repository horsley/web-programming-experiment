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
           

            if (pass.Text.Length > 8)
            {
                Response.Write("<script>alert(\"密码长度错误\")</script>");
                return;
            }
            Response.Redirect("Exam1.aspx?user=" + user.Text.Trim() + "&test_type=" + test_type.SelectedItem.Text);
            
        }
    }
}
