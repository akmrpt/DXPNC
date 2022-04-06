using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApplication1
{
    public partial class Ledger : System.Web.UI.Page
    {
        string ConLive = ConfigurationManager.ConnectionStrings["MyPNC"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
           // ASPxDateEdit date = this.FindControl("DT_FROM") as ASPxDateEdit;
            var dateValue = DT_FROM.Date.ToString("yyyy-MM-dd");
            var act_cd = cb_acc_list.SelectedItem.Value.ToString();
            ASPxLabel1.Text = dateValue + " | " + act_cd;

            // execute AccountingReports_me sp_call_gl_web
            SqlUtil su = new SqlUtil();
            su.sp_GL_WEB(act_cd, dateValue);


            Response.Redirect("gl_GridView.aspx", false);
           // Server.Transfer("gl_GridView.aspx"); 
            //string query = "";
           // DataTable dt;

            //query = string.Format("exec dbo.sp_call_gl_web '" + act_cd + "','" + dateValue + "'");
           // query = string.Format("Select * from tmpGL_WEB");
            // dt = su.GetData(query, ConLive);



            //ASPxGridView1.DataSource = CreateData(query, ConLive);
            //ASPxGridView1.DataBind();
            //Response.Write("<script type=\"text/javascript\">alert('Your Date' " + dateValue + ");</script>");

        }
       

        private SqlDataSource CreateData(string query, string sconn) {
          
        string selectCmnd = query;
        return new SqlDataSource(sconn, selectCmnd);
    }
    }
}