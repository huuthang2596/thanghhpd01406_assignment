using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace Assignment.App_Code
{
    public class KetNoi
    {
         SqlConnection connect;

        public int insert(string sql)
        {
            int kq = 0;
            try
            {
                GetConnect();
                SqlCommand cmd = new SqlCommand(sql,connect);
                kq = cmd.ExecuteNonQuery();
                // ExecuteNonQuery: thực thi câu lệnh mà không truy vấn
            }
            catch (System.Exception ex)
            {

            }
            finally
            {
                closeConnect();
            }
            return kq;
        }
        public int xoa(string sql)
        {
            int kq = 0;
            try
            {
                GetConnect();
                SqlCommand cmd = new SqlCommand(sql, connect);
                kq = cmd.ExecuteNonQuery();
                // ExecuteNonQuery: thực thi câu lệnh mà không truy vấn
            }
            catch (System.Exception ex)
            {

            }
            finally
            {
                closeConnect();
            }
            return kq;
        }
        internal void insert()
        {
            throw new NotImplementedException();
        }

        public DataTable getData(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
            
                GetConnect();
                SqlDataAdapter adapter = new SqlDataAdapter(sql, connect);
                adapter.Fill(dt);
            }
            catch (System.Exception ex) {
                dt = null;
            }
            finally
            {
                closeConnect();
            }
            return dt;
        }

        private void GetConnect()
        {
            connect = new SqlConnection("Data Source=DESKTOP-SA252LC\\SQLEXPRESS;Initial Catalog=master;Integrated Security=False;User ID=sa;Password=thanghernandez1;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            connect.Open();
        }

        private void closeConnect()
        {
            if(connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
        }
    }
}