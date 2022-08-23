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
    public partial class BookDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                string bookId = Request["BookId"];
                string sql = "select * from Book where BookId=" + bookId; 
                DataTable dt = DataBase.GetDataSet(sql); 
                this.DetailsView1.DataSource = dt; 
                this.DetailsView1.DataBind();
            }

        }
        protected void btnShoppingCart_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(this.txtQuantity.Text) <= 0)
            {
                Response.Write("<script>alert('请添加正确的数量！');location.href='/Default.aspx';</script>");
            }
            else
            {
                string select = "select * from Cart where UserId=@UserId and BookId=@BookId ";
                SqlParameter[] sqlselect = new SqlParameter[]
                {
                    new SqlParameter("@UserId",Convert.ToInt32(Session["UserId"])),
                    new SqlParameter("@BookId",Convert.ToInt32(Request["BookId"]))
                };
                DataTable selectdt = DataBase.GetDataSet(select, sqlselect);

                if (selectdt.Rows.Count > 0)
                {
                    int a = Convert.ToInt32(selectdt.Rows[0]["Quantity"].ToString()) + Convert.ToInt32(this.txtQuantity.Text);
                    string update = "update [Cart] set Quantity=@Quantity where UserId=@UserId and BookId=@BookId";
                    SqlParameter[] sqlupdate = new SqlParameter[]
                             {
                              new SqlParameter("@UserId",Convert.ToInt32(Session["UserId"])),
                              new SqlParameter("@BookId",Convert.ToInt32(Request["BookId"])),
                              new SqlParameter("@Quantity",a)
                             };
                    DataBase.ExecuteSql(update, sqlupdate);
                    Response.Write("<script>alert('加入购物车成功'); location.href='/ShoppingCart.aspx';</script>");
                }

                else
                {

                    string insert = "insert into Cart(UserId,BookId,Quantity) values (@UserId,@BookId,@Quantity)";
                    SqlParameter[] insertsql = new SqlParameter[]
                        {
                           new SqlParameter("@UserId",Convert.ToInt32(Session["UserId"])),
                           new SqlParameter("@BookId",Convert.ToInt32(Request["BookId"])),
                            new SqlParameter("@Quantity",Convert.ToInt32(this.txtQuantity.Text))
                         };
                    DataBase.ExecuteSql(insert, insertsql);
                    Response.Write("<script>alert('加入购物车成功'); location.href='/ShoppingCart.aspx';</script>");
                }




            }
        }
    }
}