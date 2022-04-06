using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


namespace DXWebApplication1 {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
        }

        protected void btn_30_Click(object sender, EventArgs e)
        {
            string sKey = "2";
            string sUrl = string.Format("Vehicle.aspx?id={0}", sKey);
            Response.Redirect(sUrl); 

        }
        
    }
}