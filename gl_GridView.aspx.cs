using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApplication1
{
    public partial class gl_GridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sCaption = ASPxLabel1.Text;  
          
                DataView dvSql = (DataView)ds_tmpGL_WEB.Select(DataSourceSelectArguments.Empty);
                ASPxLabel1.Text = dvSql[0][5].ToString();
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            string sCaption = ASPxLabel1.Text;  
            ASPxGridViewExporter1.WriteXlsxToResponse( sCaption +  "GL-" + DateTime.Now.ToString("MM-dd-yyyy"));  
        }

        protected void ASPxButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ledger.aspx", false);
        }
    }
}