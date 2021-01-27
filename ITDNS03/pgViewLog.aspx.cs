using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class pgViewLog : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataAdapter da;
    DataAccess data = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        string cardNo = "";
       
        data.DBReaderOpen("Select cardNo from userinfo where uid=" + Convert.ToInt32(Session["Uid"].ToString()));
        if (data.dr.HasRows)
        {
            data.dr.Read();
            cardNo = data.dr["cardNo"].ToString();
        }
        data.DBReaderClose();

        //data.DBOpen();
        //cmd = new SqlCommand("Select * from accounts where cardNo='" + cardNo + "'");
        //da = new SqlDataAdapter(cmd);
        //DataSet ds=new DataSet();
        //data.da.Fill(ds);
        //gvLogs.DataSource = ds;
        //gvLogs.DataBind();


        data.DBOpen();
        data.cmd = new SqlCommand("Select * from account where cardNo='" + cardNo + "'", data.cn);
        SqlDataAdapter da = new SqlDataAdapter(data.cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gvLogs.DataSource = ds;
        gvLogs.DataBind();
    }
}
