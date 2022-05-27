using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_Doc_Truyen
{
    public partial class QLTruyen : System.Web.UI.Page
    {
        string str = @"Data Source=DESKTOP-FA5AISU\SQLEXPRESS;Initial Catalog=WebDocTruyen;Integrated Security=True";
        SqlConnection con;
        SqlCommand com = new SqlCommand();
        SqlDataAdapter dad = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(str);
            con.Open();
            loadData();
        }
        public void loadData()
        {
            com = con.CreateCommand();
            com.CommandText = "select * from tblTruyen";
            dad.SelectCommand = com;
            DataSet ds = new DataSet();
            dad.Fill(ds);
            DLTruyen.DataSource = ds;
            DLTruyen.DataBind();

        }
        protected void btnDoDL_Click(Object sender, EventArgs e)
        {
            LinkButton btnClick = (LinkButton)sender;
            string more = btnClick.CommandArgument.ToString();
        }
    }
}