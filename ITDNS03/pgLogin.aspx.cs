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

public partial class pgLogin : System.Web.UI.Page
{
    DataAccess data = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Clear();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        data.DBReaderOpen("Select * from Login where Uname='" + txtUName.Text + "' and pwd = '" + txtPass.Text + "'");
        if (data.dr.HasRows)
        {
            data.dr.Read();
            string roll = data.dr["Roll"].ToString();

            if (roll.ToString() == "Admin")
            {
                Response.Redirect("pgadmin.aspx");
            }
            else
            {
                Session["uid"] = data.dr["uid"].ToString();
                Response.Redirect("pgUsers.aspx");
            }
        }
        else
        {
            Label3.Visible = true;
        }

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("pgHome.aspx");
    }
}
