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
    public partial class ShowBookByCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                string sql = "select * from Book where CategoryId like '%" + this.Request["CategoryId"] + "%'";
                DataTable dt = DataBase.GetDataSet(sql);
                this.DataList1.DataSource = dt;
                this.DataList1.DataBind();


            }
        }
    }
}