using Assignment.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class SanPham : System.Web.UI.Page
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
            GridView1.DataSource = kn.getData("select * from SanPham");
            GridView1.DataBind();
        }
        protected void btnthem_Click(object sender, EventArgs e)
        {
            TextBox textMaSP = (TextBox)GridView1.FooterRow.FindControl("textMaSP");
            TextBox texttenSP = (TextBox)GridView1.FooterRow.FindControl("texttenSP");
            TextBox textNSX = (TextBox)GridView1.FooterRow.FindControl("textNSX");
            DropDownList textMLSP = (DropDownList)GridView1.FooterRow.FindControl("textMLSP1");

            string maSP = textMaSP.Text;
            string tenSp = texttenSP.Text;
            string NSX = textNSX.Text;
            string MLSP = textMLSP.Text;

            int kq = kn.insert("INSERT INTO SanPham VALUES('" + maSP + "', '" + tenSp + "','"
                + NSX + "', '" + MLSP + "') ");

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
            string maSP = e.Values["MaSanPham"].ToString();
            int kq = kn.insert("delete from SanPham where MaSanPham = '" + maSP + "'");
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

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Không sửa cột nào hết!
            GridView1.EditIndex = -1;
            loadDL();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            loadDL();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string maSP = e.NewValues["MaSanPham"].ToString();
            string tenSP = e.NewValues["TenSanPham"].ToString();
            string NSX = e.NewValues["NgaySanXuat"].ToString();
            string MLSP = e.NewValues["LoaiSanPham_MaLoaiSanPham"].ToString();

            int kq = kn.insert("update SanPham set MaSanPham = '" + maSP + "', TenSanPham = '"
                + tenSP + "',  NgaySanXuat = '" + NSX + "', LoaiSanPham_MaLoaiSanPham= '" + MLSP + "' where MaSanPham = '" + maSP + "'");
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