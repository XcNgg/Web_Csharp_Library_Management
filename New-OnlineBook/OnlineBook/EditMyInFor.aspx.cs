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
    public partial class EditMyInFor : System.Web.UI.Page
    {
        int n = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == "0")
            {
                Response.Write("LoginInit.aspx");
            }
            else
            {
                if (!this.IsPostBack)
                {
                    string sql = "select * from [User] where UserId=@UserId";
                    SqlParameter[] parameter = new SqlParameter[] {
                new SqlParameter("@UserId",Convert.ToInt32(this.Session["UserId"]))

                  };
                    DataTable dt = DataBase.GetDataSet(sql, parameter);
                    if (dt.Rows.Count > 0)
                    {
                        this.Usernametxt.Text = dt.Rows[0]["UserName"].ToString(); if (dt.Rows[0]["Sex"].ToString() == "男")
                        {
                            this.Man.Checked = true;
                        }
                        else
                        {
                            this.Woman.Checked = true;
                        }
                        this.UsernameLbl.Text = dt.Rows[0]["UserName"].ToString();
                        this.Nametxt.Text = dt.Rows[0]["RealName"].ToString();
                        this.phonetxt.Text = dt.Rows[0]["Telephone"].ToString();
                        this.Addresstxt.Text = dt.Rows[0]["Address"].ToString();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "select * from [User] where UserId=@UserId";
            SqlParameter[] parameter = new SqlParameter[] {
                new SqlParameter("@UserId",Convert.ToInt32(this.Session["UserId"]))
            };
             DataTable dt = DataBase.GetDataSet(sql, parameter);
                if (dt.Rows.Count > 0)
                {
                    this.Passwdtxt.Text = dt.Rows[0]["Password"].ToString();
                }
                Passwdtxt.Visible = true;
                
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        
        
               

                if (Passwdtxt.Visible == true)
                {
                    string sql = "update [User] set UserName=@UserName,Password=@Password,Telephone=@Telephone,Address=@Address where UserId=@UserId";
                    SqlParameter[] parameter = new SqlParameter[]
                    {   new SqlParameter("@UserId",Convert.ToInt32(this.Session["UserId"])),
                        new SqlParameter("@UserName",this.Usernametxt.Text), 
                        new SqlParameter("@Password",this.Passwdtxt.Text),
                        new SqlParameter("@Telephone",this.phonetxt.Text), 
                        new SqlParameter("@Address",this.Addresstxt.Text)
                    };
                    DataBase.ExecuteSql(sql, parameter);
                }
                else
                {
                    string sql = "update [User] set UserName=@UserName,Telephone=@Telephone,Address=@Address where UserId=@UserId";
                    SqlParameter[] parameter = new SqlParameter[]
                    {   new SqlParameter("@UserId",Convert.ToInt32(this.Session["UserId"])),
                        new SqlParameter("@UserName",this.Usernametxt.Text), 
                        new SqlParameter("@Telephone",this.phonetxt.Text), 
                        new SqlParameter("@Address",this.Addresstxt.Text)
                    };
                    DataBase.ExecuteSql(sql, parameter);
                }
            Response.Write("修改已成功！");
       }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}