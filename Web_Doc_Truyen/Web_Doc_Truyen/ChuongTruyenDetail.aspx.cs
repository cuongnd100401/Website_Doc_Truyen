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
    public partial class ChuongTruyenDetail : System.Web.UI.Page
    {
        string str = @"Data Source=DESKTOP-FA5AISU\SQLEXPRESS;Initial Catalog=WebDocTruyen;Integrated Security=True";
        SqlConnection con;
        SqlCommand com = new SqlCommand();
        SqlDataAdapter dad = new SqlDataAdapter();
        DataTable dt = new DataTable();
        string id = "";
        string MaCT = "";
        string MaT = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["ID"].ToString();
            MaCT = id;
            con = new SqlConnection(str);
            con.Open();
            loadCT();
        }
        public void loadCT()
        {
            com = con.CreateCommand();
            com.CommandText = "select * from tblChuongTruyen where MaCT=" + MaCT;
            dad.SelectCommand = com;
            dt.Clear();
            dad.Fill(dt);
            foreach(DataRow r in dt.Rows)
            {
                MaT = r["MaT"].ToString();
            }
            /**/
            com = con.CreateCommand();
            com.CommandText = "select ROW_NUMBER() OVER (ORDER BY tblChuongTruyen.MaCT) AS stt,  tblChuongTruyen.MaCT, tblChuongTruyen.NoiDung, tblChuongTruyen.TenCT, tblTruyen.TenT from tblChuongTruyen, tblTruyen where tblTruyen.MaT= tblChuongTruyen.MaT and tblChuongTruyen.MaT=" + MaT;
            dad.SelectCommand = com;
            dt.Clear();
            dad.Fill(dt);
            foreach (DataRow r in dt.Rows)
            {
                if (MaCT.Equals(r["MaCT"].ToString()))
                {
                    lbTenT.Text = r["TenT"].ToString();
                    lbTenCT.Text ="Chương "+ r["stt"].ToString()+": "+ r["TenCT"].ToString();
                }
            }
        }

    }
}