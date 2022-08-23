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
    public partial class MyInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                if (Session["UserId"] != "0")
                 {
                    string sql = "select * from [User] where UserId=@UserId";
                    SqlParameter[] parameter = new SqlParameter[] {
                    new SqlParameter("@UserId",Convert.ToInt32(this.Session["UserId"]))

                    };
                    DataTable dt = DataBase.GetDataSet(sql, parameter);
                    if (dt.Rows.Count > 0)
                    {
                        this.lblUserName.Text = dt.Rows[0]["UserName"].ToString(); if (dt.Rows[0]["Sex"].ToString() == "男")
                        {
                            this.rdoMale.Checked = true;
                        }
                        else
                        {
                            this.rdoFemale.Checked = true;
                        }
                        this.lblName.Text = dt.Rows[0]["RealName"].ToString();
                        this.lblTelephone.Text = dt.Rows[0]["Telephone"].ToString();
                        this.lblAddress.Text = dt.Rows[0]["Address"].ToString();
                       
                    }
                 }
                else
                {
                    Response.Write("<script>alert('请先登陆');location.href='/Default.aspx';</script>");
                }
            }
          

            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //string sql = "update [User] set UserName=@UserName,Password=@Password,Telephone=@Telephone,Address=@Address where UserId=@UserId";
            //SqlParameter[] parameter = new SqlParameter[]
            //{
            //    new SqlParameter("@UserName",this.txtUserName.Text), 
            //    new SqlParameter("@UserId",Convert.ToInt32(this.Session["UserId"])),
            //    new SqlParameter("@Password",this.txtPassword.Text),
            //    new SqlParameter("@Telephone",this.txtTelephone.Text), 
            //    new SqlParameter("@Address",this.txtAddress.Text)
            //};
            //DataBase.ExecuteSql(sql, parameter);
            Response.Redirect("EditMyInFor.aspx");
        }

   
    }
}