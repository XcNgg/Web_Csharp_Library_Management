using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineBook.Admin
{
    public partial class EditCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (Application["Rank"].ToString() != "2")
            {
                Response.Redirect("ShopAdminLogin.aspx");
            }
            if (!this.IsPostBack)
            {
                string sql = "select * from Category";
                DataTable dt = DataBase.GetDataSet(sql);
                this.GridView1.DataSource = dt;
                this.GridView1.DataBind();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            {
            string sql = "update Category set CategoryName=@CategoryName,Description=@Description where CategoryId=@CategoryId";
                SqlParameter[] parameter = new SqlParameter[]

                {
                    new SqlParameter("@CategoryName",this.txtCategoryName.Text),
                    new SqlParameter("@Description",this.txtDescription.Text),
                    new SqlParameter("@CategoryId",Convert.ToInt32(this.txtCategoryId.Text))
                };
                     DataBase.ExecuteSql(sql, parameter);
                    this.Response.Redirect("~/Admin/EditCategory.aspx");
            }
            Label1.Text = "修改成功！";
        }
      
     

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}