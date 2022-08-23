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
    public partial class ManageOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = "";
            if (Application["Rank"].ToString() != "2")
            {
                Response.Redirect("ShopAdminLogin.aspx");
            }
            if (!this.IsPostBack)
            {
                string sql = "select [Order].OrderId,OrderDate,Telephone,Address,RealName,TotalPrice,Status,BookName,OrderDetail.SalePrice,OrderDetail.Quantity from [Order],OrderDetail,Book where [Order].OrderId=OrderDetail.OrderId and OrderDetail.BookId=Book.BookId order by [Order].OrderId ";
                SqlParameter[] parameter = new SqlParameter[]

        {
        new SqlParameter("@UserId",Convert.ToInt32(this.Session["UserId"]))
        };
                DataTable dt = DataBase.GetDataSet(sql, parameter);

                IList<OrderInfo> orderInfoes = new List<OrderInfo>();
                OrderInfo orderInfo = new OrderInfo();
                string tempOrderId = "11111";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (tempOrderId != dt.Rows[i]["OrderId"].ToString())
                    {
                        orderInfo = new OrderInfo();
                        orderInfoes.Add(orderInfo);
                        orderInfo.OrderId = dt.Rows[i]["OrderId"].ToString();
                        orderInfo.OrderDate = Convert.ToDateTime(dt.Rows[i]["OrderDate"]);
                        orderInfo.Telephone = dt.Rows[i]["Telephone"].ToString(); orderInfo.Address = dt.Rows[i]["Address"].ToString(); orderInfo.RealName = dt.Rows[i]["RealName"].ToString();
                        orderInfo.TotalPrice = Convert.ToDecimal(dt.Rows[i]["TotalPrice"]);
                        orderInfo.Status = dt.Rows[i]["Status"].ToString(); tempOrderId = orderInfo.OrderId;
                    }
                    Book book = new Book();
                    book.BookName = dt.Rows[i]["BookName"].ToString(); book.SalePrice = Convert.ToDecimal(dt.Rows[i]["SalePrice"]); book.Quantity = Convert.ToInt32(dt.Rows[i]["Quantity"]); orderInfo.OrderDetails.Add(book);
                }
                this.rptOrder.DataSource = orderInfoes;
                this.rptOrder.DataBind();

            }
        }

        protected void btnComplete_Click(object sender, EventArgs e)
        {
            {
                for (int i = 0; i < this.rptOrder.Items.Count; i++)
                {
                    CheckBox chkSelect =(CheckBox)this.rptOrder.Items[i].FindControl("chkSelect");
                    if (chkSelect.Checked == true)
                    {
                        string orderId = ((Label)this.rptOrder.Items[i].FindControl("lblOrderId")).Text;
                        string sql = "update [Order] set Status='交易结束' where OrderId=@OrderId";
                        SqlParameter[] parameter = new SqlParameter[] { new SqlParameter("@OrderId", orderId) };
                        DataBase.ExecuteSql(sql, parameter);
                    }
                   
                }
                Label4.Text = "交易已完成！";
            }
        }
    }
}