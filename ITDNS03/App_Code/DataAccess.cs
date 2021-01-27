using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{
    public SqlConnection cn;
    public SqlCommand cmd;
    public SqlDataReader dr;
    public SqlDataAdapter da;
    public DataSet ds = new DataSet();
    public DataAccess()
    { }
    public void DBOpen()
    {
        cn = new SqlConnection(ConfigurationManager.AppSettings["connect"]);
        cn.Open();
    }
    public void DBClose()
    {
        cn.Close();
    }



    public void DBCmdOpen(string query)
    {
        DBOpen();
        cmd = new SqlCommand(query, cn);
        cmd.ExecuteNonQuery();
    }
     public void DBCmdClose()
    {
        cmd = null;
        cn.Close();
    }
      


    public void DBReaderOpen(string query)
    {
        DBOpen();
        cmd = new SqlCommand(query, cn);
       dr= cmd.ExecuteReader();
    }
    public void DBReaderClose()
    {
        cmd = null;
        dr.Close();
        cn.Close();
    }


   

    public void DBDataAdapter(string query, GridView gvControl)
    {
        DBOpen();
        cmd = new SqlCommand(query ,cn);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        gvControl.DataSource = ds;
        gvControl.DataBind();
        DBClose();
    }


        
}
