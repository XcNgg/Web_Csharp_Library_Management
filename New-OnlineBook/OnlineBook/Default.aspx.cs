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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                string sql = "select top 9 * from Book where IsHot='是'";
                DataTable dt = DataBase.GetDataSet(sql);
                this.DataList1.DataSource = dt;
                this.DataList1.DataBind();
            }
        }


        

    }
}