using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
 
namespace DXWebApplication1.UnitTest
{
    public partial class GridTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {

            string sval = "" ; 
           // var SelectedRow = ASPxGridView1.GetSelectedFieldValues("VehicleCode", "Vehicle");
            List<Object> selectItems = ASPxGridView1.GetSelectedFieldValues("VehicleCode");
            foreach (object selectItemId in selectItems)
            {
               sval = selectItemId.ToString();// table.Rows.Remove(table.Rows.Find(selectItemId));
            }

            ASPxLabel1.Text = sval;


        }

        

        
    }
}