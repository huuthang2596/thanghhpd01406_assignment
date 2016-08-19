using Assignment.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class HoaDonChiTiet : System.Web.UI.Page
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
            GridView1.DataSource = kn.getData("select * from ChiTietHoaDon");
            GridView1.DataBind();
        }
        protected void btnthem_Click(object sender, EventArgs e)
        {
            TextBox textMaCTHD = (TextBox)GridView1.FooterRow.FindControl("textMaCTHD");
            TextBox texttenHD = (TextBox)GridView1.FooterRow.FindControl("texttenHD");
            TextBox textTSP = (TextBox)GridView1.FooterRow.FindControl("textTSP");
            TextBox textSL = (TextBox)GridView1.FooterRow.FindControl("textSL");
            TextBox textGia = (TextBox)GridView1.FooterRow.FindControl("textGia");
            DropDownList textMHD = (DropDownList)GridView1.FooterRow.FindControl("MHD");
            DropDownList textMSP = (DropDownList)GridView1.FooterRow.FindControl("MSP");


            string maCTHD = textMaCTHD.Text;
            string tenHD = texttenHD.Text;
            string TSP = textTSP.Text;
            string SL = textSL.Text;
            string Gia = textGia.Text;
            string MHD = textMHD.Text;
            string MSP = textMSP.Text;

            int kq = kn.insert("INSERT INTO ChiTietHoaDon VALUES('" + maCTHD + "', '" + tenHD + "','"
                + TSP + "', '" + SL + "', '" + Gia + "','" + MHD + "','"+ MSP + "')");

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

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Không sửa cột nào hết!
            GridView1.EditIndex = -1;
            loadDL();
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            string maCTHD = e.Values["MaChiTietHoaDon"].ToString();
            int kq = kn.insert("delete from ChiTietHoaDon where MaChiTietHoaDon = '" + maCTHD + "'");
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



            string maCTHD = e.NewValues["MaChiTietHoaDon"].ToString();
            string tenHD = e.NewValues["TenHoaDon"].ToString();
            string TSP = e.NewValues["TenSanPham"].ToString();
            string SL = e.NewValues["SoLuong"].ToString();
            string Gia = e.NewValues["Gia"].ToString();
            string MHD = e.NewValues["HoaDon_MaHoaDon"].ToString();
            string MSP = e.NewValues["SanPham_MaSanPham"].ToString();


            int kq = kn.insert("update ChiTietHoaDon set MaChiTietHoaDon = '" + maCTHD + "', TenHoaDon = '"
                + tenHD + "',  TenSanPham = '" + TSP + "', SoLuong= '" + SL 
                + "',  Gia = '" + Gia + "', HoaDon_MaHoaDon= '" + MHD + "', SanPham_MaSanPham='" + MSP + "' where MaChiTietHoaDon = '" + maCTHD + "'");
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}