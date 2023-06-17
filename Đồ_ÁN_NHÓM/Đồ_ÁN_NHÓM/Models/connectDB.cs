using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Đồ_ÁN_NHÓM.Models
{
    public class connectDB : System.Web.UI.Page
    {
        SqlConnection connection;
        private void lay_ketnoi(string connectString)
        {
            connection = new SqlConnection(connectString);
            connection.Open();
        }
        private void closeConnect()
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
        }


        public DataTable readDB(string sql)
        {
            string connectionVsDB = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("/App_Data/database.mdf") + ";Integrated Security=True";

            DataTable dt = new DataTable();
            try
            {
                lay_ketnoi(connectionVsDB);
                SqlDataAdapter da = new SqlDataAdapter(sql, connection);
                da.Fill(dt);
            }
            catch
            {
                dt = null;

            }
            finally
            {
                closeConnect();
            }
            return dt;
        }

        public void updateDB(string sql)
        {
            string connectionVsDB = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("/App_Data/database.mdf") + ";Integrated Security=True";
            try
            {
                lay_ketnoi(connectionVsDB);
                SqlCommand cmd = new SqlCommand(sql, connection);
                cmd.ExecuteNonQuery();
            }
            catch
            {
                return;
            }
            finally
            {
                closeConnect();
            }
        }




    }
}