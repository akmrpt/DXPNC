using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Configuration;
using System.Web.Security;

namespace DXWebApplication1 {
    public partial class MainMaster : System.Web.UI.MasterPage {

        private NavBarGroup group;
        private NavBarItem item;
        protected void Page_Load(object sender, EventArgs e) {

            string login = "" ; 
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }

            if (Session["UserName"] != null)
            {
                login  = Session["UserName"].ToString();
            }

            ASPxNavBar1.Groups.Clear(); 

             //Session["UserName"].ToString(); 
            group = new NavBarGroup("Dashboard");
            group.NavigateUrl = "~/DashBoardView.aspx?key=" + login;
            group.HeaderImage.IconID = "chart_kpi_32x32office2013"; 
            ASPxNavBar1.Groups.Add(group);

            NavBarCreate(login);
        }


        public void NavBarCreate(string UserName)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyPNC"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select ID, ParentID , Text, NavigateURL, IconID from dbo.WebMenu where ParentID=0", con);
            DataTable dttc = new DataTable();
            da.Fill(dttc);

            foreach (DataRow row in dttc.Rows)
            {


                da = new SqlDataAdapter("Select ID, ParentID , Text, NavigateURL ,IconID from dbo.WebMenu where ParentID=" + row["ID"].ToString(), con);
                DataTable dtDist = new DataTable();
                da.Fill(dtDist);
                // Create Group 
                group = new NavBarGroup(row["Text"].ToString());
                group.HeaderImage.IconID = row["IconID"].ToString(); 

                if (dtDist.Rows.Count > 0)
                {
                    foreach (DataRow r in dtDist.Rows)
                    {
                        //Create Item
                        item = new NavBarItem(r["Text"].ToString(), "itemDX" + r["ID"].ToString());
                        item.NavigateUrl =  r["NavigateURL"].ToString();
                        item.Image.IconID = r["IconID"].ToString();
                        group.Items.Add(item);
                    }
                }

                // Add Group with Items In NavBar
                ASPxNavBar1.Groups.Add(group);

            }

        }
    }
}