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
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (Application["Rank"].ToString() != "2")
            {
                Response.Redirect("ShopAdminLogin.aspx");
            }
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string sql = "update [User] set UserName=@UserName,Password=@Password where UserId=@UserId";
            SqlParameter[] parameter = new SqlParameter[]
            {
                new SqlParameter("@UserName",this.txtUserName.Text),
                new SqlParameter("@Password",this.txtPassword.Text),
                new SqlParameter("@UserId",Convert.ToInt32(this.Session["UserId"]))
            }; DataBase.ExecuteSql(sql, parameter);
            Response.Redirect("~/Admin/ChangePassword.aspx");
            txtPassword.Text = "";
            txtUserName.Text = "";
            Label1.Text = "修改成功！";
        }
    }
}