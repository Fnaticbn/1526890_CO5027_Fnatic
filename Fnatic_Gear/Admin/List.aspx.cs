using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fnatic_Gear.Admin
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Index.aspx");
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Add.aspx");
        }
    }
}