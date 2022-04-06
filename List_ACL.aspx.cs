using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApplication1
{
    public partial class List_ACL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
            
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            
            ASPxGridViewExporter1.WriteXlsxToResponse("BlackListedDriver-" + DateTime.Now.ToString("MM-dd-yyyy"));  
        }  
    
    }
}