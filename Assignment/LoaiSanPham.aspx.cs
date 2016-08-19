using Assignment.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class LoaiSanPham : System.Web.UI.Page
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
            GridView1.DataSource = kn.getData("select * from LoaiSanPham");
            GridView1.DataBind();
        }
        protected void btnthem_Click(object sender, EventArgs e)
        {
            TextBox textMaLSP = (TextBox)GridView1.FooterRow.FindControl("textmaLSP");
            TextBox textTenLSP = (TextBox)GridView1.FooterRow.FindControl("texttenLSP");


            string maLSP = textMaLSP.Text;
            string tenLSP = textTenLSP.Text;
 

            int kq = kn.insert("INSERT INTO LoaiSanPham VALUES('" + maLSP + "', '"  + tenLSP + "') ");

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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string maLSP = e.Values["MaLoaiSanPham"].ToString();
            int kq = kn.insert("delete from LoaiSanPham where MaLoaiSanPham = '" + maLSP + "'");
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
            string maLSP = e.NewValues["MaLoaiSanPham"].ToString();
            string tenLSP = e.NewValues["TenLoaiSanPham"].ToString();


            int kq = kn.insert("update LoaiSanPham set MaLoaiSanPham = '" + maLSP + "',  TenLoaiSanPham= '" 
                + tenLSP + "' where MaLoaiSanPham = '" + maLSP + "'");
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