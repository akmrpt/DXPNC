using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DXWebApplication1.UnitTest
{
    public partial class ASPxNavBar : System.Web.UI.Page
    {
        //private ASPxNavBar nbRuntime;
        private NavBarGroup group;
        private NavBarItem item;
        protected void Page_Load(object sender, EventArgs e)
        {
            //nbRuntime = new ASPxNavBar();
           // nbRuntime.ID = "ASPxNavBarRuntime";

            group = new NavBarGroup("Home");
            group.NavigateUrl = "~/Default.aspx";
            ASPxNavBar1.Groups.Add(group);

            NavBarCreate("Admin");
 
            // Create Group1
           // group = new NavBarGroup("Main");
            //// Set up items
            //item = new NavBarItem("Developer Express Inc.", "itemDX", "", "http://www.devexpress.com");
            //group.Items.Add(item);
            //ASPxNavBar1.Groups.Add(group);

            //// Create Group2
            //group = new NavBarGroup("DX Services");
            //// Set up items
            //item = new NavBarItem("Support Center", "itemSC", "", "http://www.devexpress.com/Support/Center/");
          
            ////item.Enabled = false;
            //group.Items.Add(item);
            //item = new NavBarItem("Knowledge Base", "itemKB", "", "http://www.devexpress.com/Support/Center/KB/");
            //group.Items.Add(item);
            //item = new NavBarItem("Client Center", "itemCC", "", "http://www.devexpress.com/ClientCenter/");
            //group.Items.Add(item);


            //ASPxNavBar1.Groups.Add(group);

            // Add the NavBar to the page
           // Page.Controls.Add(nbRuntime);
        }

        public void NavBarCreate(string UserName)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyPNC"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select ID, ParentID , Text, NavigateURL,IconID from dbo.WebMenu where ParentID=0", con);  
             DataTable dttc = new DataTable();  
             da.Fill(dttc);  
  
                foreach (DataRow row in dttc.Rows)
                 {
                     

                         da = new SqlDataAdapter("Select ID, ParentID , Text, NavigateURL,IconID from dbo.WebMenu where ParentID=" + row["ID"].ToString(), con);
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
                                 item.NavigateUrl = r["NavigateURL"].ToString();
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