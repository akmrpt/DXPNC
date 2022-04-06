using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApplication1.UnitTest
{

    public partial class LayoutControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ExportPDF(){
           // FontFactory.GetFont("Times New Roman", 14);
            Font myTimesFont = FontFactory.GetFont("Times New Roman", 14);

        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=TestPage.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        this.Page.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
       

        htmlparser.Parse(sr);

        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
         }

        protected void ASPxButton_ExportPDF_Click(object sender, EventArgs e)
        {
            ExportPDF(); 
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
             //Response.Write("" + edit_make.Text);
           //  string script = "alert("+edit_make.Text+")";

            SqlUtil su = new SqlUtil();
              string sVal  = edit_make.Text ;
            su.sp_Add_Vehicle_Attribute(1,sVal,"Admin") ; 

            
             
            // System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", "Posted", true);
        }
    }
}