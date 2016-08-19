using Assignment.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class HoaDon : System.Web.UI.Page
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void loadDL()
        {
            GridView1.DataSource = kn.getData("select * from HoaDon");
            GridView1.DataBind();
        }
        protected void btnthem_Click(object sender, EventArgs e)
        {
            TextBox textMaHD = (TextBox)GridView1.FooterRow.FindControl("textMaHD");
            TextBox textNGD = (TextBox)GridView1.FooterRow.FindControl("textNGD");
            TextBox textDG = (TextBox)GridView1.FooterRow.FindControl("textDG");
            DropDownList textMaKH = (DropDownList)GridView1.FooterRow.FindControl("textMKH");
        
            string maHD = textMaHD.Text;
            string NGD = textNGD.Text;
            string DG = textDG.Text;
            string MaKH = textMaKH.Text;
            
            int kq = kn.insert("INSERT INTO HoaDon VALUES('" + maHD + "', '" + NGD + "','"
                + DG + "', '" + MaKH + "') ");

            if (kq > 0)
            {
                Response.Write("<script>alert('Thêm thành công!');</script>");
                loadDL();
            }
            else
            {
                Response.Write("<script>alert('Thêm thất bại!');</script>");
            }
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {

            string maHD = e.Values["MaHoaDon"].ToString();
            int kq = kn.insert("delete from HoaDon where MaHoaDon = '" + maHD + "'");
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

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string maHD = e.NewValues["MaHoaDon"].ToString();
            string NGD = e.NewValues["NgayGiaoDich"].ToString();
            string DG = e.NewValues["DonGia"].ToString();
            string maKH = e.NewValues["KhachHang_MaKhachHang"].ToString();
        
            int kq = kn.insert("update HoaDon set MaHoaDon = '" + maHD + "', NgayGiaoDich = '"
                + NGD + "',  DonGia = '" + DG + "', KhachHang_MaKhachHang= '" + maKH + "' where MaHoaDon = '" + maHD + "'");
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

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Không sửa cột nào hết!
            GridView1.EditIndex = -1;
            loadDL();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}