using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using DevExpress.Web.Data;
 


namespace DXWebApplication1
{
    public partial class List_Vehicle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }*/

            //AddControl(); 
 
  
        }

        public void AddControl()
        {
            ASPxGridView grid1 = new ASPxGridView();
            grid1.ID = "ASPxGridView1";
            Page.Form.Controls.Add(grid1);
 
            GridViewCommandColumn commandColumn = new GridViewCommandColumn();
            commandColumn.ShowEditButton = true;
            grid1.Columns.Add(commandColumn);

        }
    }
}