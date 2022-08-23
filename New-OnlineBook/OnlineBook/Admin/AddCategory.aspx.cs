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
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (!this.IsPostBack)
            {
                string sql = "select * from Category";
                DataTable dt = DataBase.GetDataSet(sql);
                this.GridView1.DataSource = dt;
                this.GridView1.DataBind();
            }
            if (Application["Rank"].ToString() != "2")
            {
                Response.Redirect("ShopAdminLogin.aspx");
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into Category(CategoryName,Description)values(@CategoryName,@Description)";
            SqlParameter[] parameter = new SqlParameter[]
                {           
                    new SqlParameter("@CategoryName",this.txtCategoryName.Text),
                    new SqlParameter("@Description",this.txtDescription.Text)
                };
            DataBase.ExecuteSql(sql, parameter);
            this.Response.Redirect("~/Admin/AddCategory.aspx");
            txtCategoryName.Text = "";
            txtDescription.Text="";
            Label1.Text = "添加成功！";
        }
    }
}