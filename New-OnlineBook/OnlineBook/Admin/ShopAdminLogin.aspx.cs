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
    public partial class ShopAdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string sql = "select * from [User] where UserName=@UserName and Password=@Password and Rank=2";
            SqlParameter[] parameter = new SqlParameter[]
            {
                 new SqlParameter("@UserName",this.txtUserName.Text),
                 new SqlParameter("@Password",this.txtPassword.Text)
            };
            DataTable dt = DataBase.GetDataSet(sql, parameter);
            if (dt.Rows.Count > 0)
            {
                this.Session["UserName"] = this.txtUserName.Text;
                this.Session["UserId"] = dt.Rows[0]["UserId"].ToString();
                this.Session["Rank"] = dt.Rows[0]["Rank"].ToString();
                //Label4.Text = "欢迎回来，管理员：" + Session["UserName"];
                Application["Rank"] = 2;
                Response.Redirect("~/Admin/AddBook.aspx");
            }
            else
            {
                Label4.Text = "账号密码错误！请输入正确的管理员用户密码！";
            }


        }
    }
}