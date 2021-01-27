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

public partial class Products : System.Web.UI.Page
{
    DataAccess data = new DataAccess();
    int total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        data.DBDataAdapter("select productList.proid as [Transaction Id],productList.pname as [Product Name],productList.prate as [Product Rate],productList.pqty as [Quantity],ptotal as [Product Total] from productList where proId=" + Convert.ToInt32(Session["traId"].ToString()), gvProducts);
        gvProducts.FooterRow.Cells[2].Text = "Your Toatal Amount is   : ";

        data.DBReaderOpen("select ptotal from productList where proId=" + Convert.ToInt32(Session["traId"].ToString()));

        if (data.dr.HasRows)
        {
            while (data.dr.Read())
            {
                total +=Convert.ToInt32( (data.dr["ptotal"].ToString()));
            }
        }

        gvProducts.FooterRow.Cells[3].Text = total.ToString();
    }
    protected void ibPay_Click(object sender, ImageClickEventArgs e)
    {
        Session["amt"] = total;
        Response.Redirect("pgTransaction.aspx");
    }
}
