using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineBook
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

           }

        protected void txtRegister_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "")
            {
                Response.Write("<script>alert('不允许空用户名！');location.href='/Register.aspx';</script>");
            }
            else if (txtPassword.Text == "")
            {
                Response.Write("<script>alert('不允许空密码！');location.href='/Register.aspx';</script>");
            }
            else
            {

                string sql = "select * from [User] where UserName=@Username"; SqlParameter[] sqlParamete = new SqlParameter[] { new SqlParameter("@Username", this.txtUserName.Text) };
                DataTable dt = DataBase.GetDataSet(sql, sqlParamete);

                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script>alert('已经存在该用户名，请重新取名');location.href='/Register.aspx';</script>");

                }
                else
                {
                    sql = "insert into[User](UserName,Password,Sex,RealName,Telephone,Address)values(@Username,@Password,@Sex,@RealName,@Telephone,@Address)";
                    sqlParamete = new SqlParameter[]
                 {
                    new SqlParameter("@Username",this.txtUserName.Text), 
                    new SqlParameter("@Password",this.txtPassword.Text),
                    new SqlParameter("@Sex",this.rdoFemale.Checked?"女":"男"),
                    new SqlParameter("@RealName",this.txtName.Text),
                    new SqlParameter("@Telephone",this.txtTelephone.Text),
                    new SqlParameter("@Address",this.txtAddress.Text)
                  };
                    DataBase.ExecuteSql(sql, sqlParamete);
                    Session["ReUsername"] = this.txtUserName.Text;
                    Session["Repassword"] = this.txtPassword.Text;
                    Response.Write("<script>alert('注册成功！！');location.href='/Default.aspx';</script>");


                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}