using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Request.Cookies["username"] != null)
        {
            string txtUsername = this.Request.Cookies["username"].Value;
            if (txtUsername != null)
            {                
                Menu m = (Menu)this.FindControl("Menu1");
                MenuItem ni = new MenuItem();
                if (Roles.IsUserInRole(txtUsername, "Administrator"))
                {
                    ni.Text = "管理员后台";
                    ni.NavigateUrl = "~/Admin/Default.aspx";
                }
                else if (Roles.IsUserInRole(txtUsername, "Member"))
                {
                    ni.Text = "会员中心";
                    ni.NavigateUrl = "~/Member/Private.aspx";
                }
                m.Items.Add(ni);
            }
        }
    }
}
