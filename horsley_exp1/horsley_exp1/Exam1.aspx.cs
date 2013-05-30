using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace horsley_exp1
{
    public partial class Exam1 : System.Web.UI.Page
    {
        public int score = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            score = 0;
            if (RadioButtonList1.SelectedValue == "1") score += 20;
            if (RadioButtonList2.SelectedValue == "3") score += 20;

            if (CheckBoxList1.Items[0].Selected == true && CheckBoxList1.Items[2].Selected == true) score += 30;
            if (CheckBoxList2.Items[1].Selected == true && CheckBoxList2.Items[2].Selected == true) score += 30;


        }
    }
}
