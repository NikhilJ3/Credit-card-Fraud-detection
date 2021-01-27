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

public partial class Productinfo : System.Web.UI.Page
{
    DataAccess data = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            data.DBReaderOpen("select * from productinfo");

            if (data.dr.HasRows)
            {
                while (data.dr.Read())
                {
                    ddlProName.Items.Add(data.dr["pName"].ToString());

                }
            }

            data.DBReaderOpen("select max(proid) from productList");

            if (data.dr.HasRows)
            {
                data.dr.Read();
                if (data.dr[0].ToString() == "")
                {
                    txtTranId.Text = "100";
                }
                else
                {
                    int a = Convert.ToInt32(data.dr[0].ToString()) + 1;
                    txtTranId.Text = a.ToString();
                }
            }
        }


    }   
    
    protected void ibtnAdd_Click(object sender, ImageClickEventArgs e)
    {
        if (ddlProName.SelectedIndex == 0)
        {
            Label5.Visible = true;
        }
        else
        {
            Label5.Visible = false;
            data.DBReaderOpen("select * from productinfo where pName='" + ddlProName.SelectedItem.ToString() + "'");

            if (data.dr.HasRows)
            {
                data.dr.Read();
                txtPRate.Text = (data.dr["pRate"].ToString());
            }


            data.DBCmdOpen("Insert into productList values (" + Convert.ToInt32(txtTranId.Text) + ",'" + ddlProName.SelectedItem.Text + "'," + Convert.ToInt32(txtPRate.Text)  + "," + Convert.ToInt32(txtPQty.Text) +","+(Convert.ToInt32(txtPRate.Text) * Convert.ToInt32(txtPQty.Text))+ ")");

            txtPQty.Text = "";
            txtPRate.Text = "";
            ddlProName.SelectedIndex = 0;

        }

    }
    protected void ibEdit_Click(object sender, ImageClickEventArgs e)
    {
        Session["traId"] = txtTranId.Text;
        Response.Redirect("pgProductsList.aspx");
    }
}
