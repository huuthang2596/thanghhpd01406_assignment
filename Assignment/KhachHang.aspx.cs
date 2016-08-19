using Assignment.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class KhachHang : System.Web.UI.Page
    {
        KetNoi kn = new KetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Lỗi poseback
            if (IsPostBack == false)
            {
                loadDL();
            }
           

            
        }
        
        private void loadDL()
        {
            GridView1.DataSource = kn.getData("select * from KhachHang");
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }
     
        protected void btnthem_Click(object sender, EventArgs e)
        {
            TextBox textMaKH = (TextBox)GridView1.FooterRow.FindControl("textMaKH");
            TextBox textTenKH = (TextBox)GridView1.FooterRow.FindControl("textTenKH");
            TextBox textDiaChi = (TextBox)GridView1.FooterRow.FindControl("textDiaChi");
            TextBox textMail = (TextBox)GridView1.FooterRow.FindControl("textMail");
            TextBox textSDT = (TextBox)GridView1.FooterRow.FindControl("textSDT");
            string maKH = textMaKH.Text;
            string tenKH = textTenKH.Text;
            string diaChi = textDiaChi.Text;
            string mail = textMail.Text;
            string sdt = textSDT.Text;
            int kq = kn.insert("INSERT INTO KhachHang VALUES('"+ maKH +"', '"+ tenKH +"','"
                + diaChi  + "', '"+ mail +"', '" + sdt + "') ");

            if (kq > 0 )
            {
                Response.Write("<script>alert('Thêm thành công!');</script>");
                loadDL();
            }
            else
            {
                Response.Write("<script>alert('Thêm thất bại!');</script>");
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string maKH = e.Values["MaKhachHang"].ToString();
            int kq = kn.insert("delete from KhachHang where MaKhachHang = '" + maKH + "'");
            if (kq > 0)
            {
                Response.Write("<script>alert('Xóa thành công!');</script>");
                loadDL();
            }
            else
            {
                Response.Write("<script>alert('Xóa thất bại!');</script>");
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            loadDL();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Không sửa cột nào hết!
            GridView1.EditIndex = -1;
            loadDL();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string maKH = e.NewValues["MaKhachHang"].ToString();
            string tenKH = e.NewValues["TenKhachHang"].ToString();
            string diaChi = e.NewValues["DiaChi"].ToString();
            string mail = e.NewValues["Mail"].ToString();
            string sdt = e.NewValues["SoDienThoai"].ToString();
            int kq = kn.insert("update KhachHang set MaKhachHang = '"+ maKH + "', TenKhachHang = '"
                + tenKH + "', DiaChi = '"+ diaChi + "', Mail = '"+ mail + "', SoDienThoai= '"+ sdt + "' where MaKhachHang = '" + maKH + "'");
            if (kq > 0)
            {
                Response.Write("<script>alert('Cập nhật thành công!');</script>");
                 GridView1.EditIndex = -1;
                loadDL();
            }
            else
            {
                Response.Write("<script>alert('Cập nhật thất bại!');</script>");
            }
        }

      
    }
}