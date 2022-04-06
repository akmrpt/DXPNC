using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration; 

namespace DXWebApplication1
{

    public class SqlUtil
    {
        DataSet ds = new DataSet();
        SqlConnection con;
        SqlCommand cmd = new SqlCommand();
        SqlParameter sp1 = new SqlParameter();
        SqlParameter sp2 = new SqlParameter();
        SqlParameter sp3 = new SqlParameter(); 
        public void sp_Add_Vehicle_Attribute(int iOP, string sColValue , string sUserName)
        {

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyPNC"].ConnectionString);
            cmd = new SqlCommand("sp_Add_Vehicle_Attribute", con);
            cmd.CommandType = CommandType.StoredProcedure;
           // cmd.Parameters.Add("@Op", SqlDbType.Int).Value = iOP;
            cmd.Parameters.AddWithValue("@Op", iOP);
            cmd.Parameters.AddWithValue("@ColValue", sColValue);
            cmd.Parameters.AddWithValue("@UserID", sUserName);
            //cmd.Parameters.Add("@ColValue", SqlDbType.VarChar).Value = sColValue;
           // cmd.Parameters.Add("@UserID", SqlDbType.VarChar).Value = sUserName;

           
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();  
        }
        public void sp_GL_WEB(string sAC_CD, string sFrom_DT)
        {

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyPNC"].ConnectionString);
            cmd = new SqlCommand("sp_call_gl_web", con);
            cmd.CommandType = CommandType.StoredProcedure;


            cmd.Parameters.AddWithValue("@acc_cd", sAC_CD);
            cmd.Parameters.AddWithValue("@from_dt", sFrom_DT);
          


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
         private static DataTable GetData(string query, string sconn)
        {
            string constr = sconn;//ConfigurationManager.ConnectionStrings["ConLive"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    DataTable dt = new DataTable();
                    using (SqlDataAdapter sda = new SqlDataAdapter(query, con))
                    {
                        sda.Fill(dt);
                    }

                    return dt;
                }
            }
        }
    }
}