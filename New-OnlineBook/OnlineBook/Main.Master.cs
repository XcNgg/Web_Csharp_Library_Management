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
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string sql = "select * from Category";
                DataTable dt = DataBase.GetDataSet(sql);
                this.Repeater1.DataSource = dt;
                this.Repeater1.DataBind();

                if (Session["ReUsername"] != null)
                { 
                    this.txtUserName.Text=Session["ReUsername"].ToString();
                    this.txtPassword .Text=Session["Repassword"].ToString();
                }

                if (Application["Rank"] == null)
                {
                    Application["Rank"] = "0";
                }
                if (Session["USERNAME"] == null)
                {
                    Session["USERNAME"] = "游客";
                }
                if(Session["UserId"]==null)
                {
                    Session["UserId"] = "0";
                }
                if (Session["UserId"] == "0")
                {
                    this.lblUser.Text = "当前用户：" + Session["USERNAME"].ToString();

                }
                else
                {
                    this.lblUser.Text = "当前用户：" + Session["USERNAME"].ToString();
                    this.Logoutbtn.Visible = true;
                    this.txtPassword.Visible = false;
                    this.txtUserName.Visible = false;
                    this.Label1.Visible = false;
                    this.Label3.Visible = false;
                    this.btnLogin.Visible = false;
                    this.btnRegister.Visible = false;
                    this.SetuserBtn.Visible = true;
                }
            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("ShowBookByKey.aspx?KeyWord=" + this.txtSearch.Text);
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string sql = "select * from [User] where UserName='" + this.txtUserName.Text + "' and Password='" + this.txtPassword.Text + "'";
            DataTable dt = DataBase.GetDataSet(sql);
            if (dt.Rows.Count > 0)//如果返回的行数大于0，则说明该用户存在，可以执行以下语句
            {
                this.Session["UserName"] = this.txtUserName.Text;//赋值UserName
                this.Session["UserId"] = dt.Rows[0]["UserId"].ToString();//赋值数据库中的用户ID
                this.lblUser.Text = "当前用户：" + this.txtUserName.Text;//显示
                this.Session["Rank"] = dt.Rows[0]["Rank"].ToString();//赋值RANK值，
                Application["Rank"] = Session["Rank"];//历史记录下rank值
                Application["USERNAME"] = this.txtUserName.Text;//历史记录下USERNAME值
                this.txtUserName.Text = "";
                this.txtPassword.Text = "";
                this.Logoutbtn.Visible = true;
                 this.txtPassword.Visible = false;
                 this.txtUserName.Visible = false;
                 this.Label1.Visible = false;
                 this.Label3.Visible = false;
                 this.btnLogin.Visible = false;
                 this.btnRegister.Visible = false;
                 this.SetuserBtn.Visible = true;
                 Session["ReUsername"] = "";
                 Session["Repassword"] = "";

               
            }
            else//如果没有返回，则说明用户不存在
            {
                Response.Write("<script>alert('请您输入正确的用户名或密码');location.href='/Default.aspx';</script>");
            }
            
           
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Logoutbtn_Click(object sender, EventArgs e)
        {
            Application["Rank"] = "0";
            Application["USERNAME"] = "游客";
            Session["UserId"] = "0";
           this.Logoutbtn.Visible = false;
           this.SetuserBtn.Visible = false;
            this.lblUser.Text = "当前用户：" + Application["USERNAME"].ToString();
            this.txtPassword.Visible = true;
            this.txtUserName.Visible = true;
            this.Label1.Visible = true;
            this.Label3.Visible = true;
            this.btnLogin.Visible = true;
            this.btnRegister.Visible = true;

           
        }

        protected void SetuserBtn_Click(object sender, EventArgs e)
        {
            this.txtPassword.Visible = true;
            this.txtUserName.Visible = true;
            this.Label1.Visible = true;
            this.Label3.Visible = true;
            this.btnLogin.Visible = true;
            this.btnRegister.Visible = true;
        }

       
        
    }
}