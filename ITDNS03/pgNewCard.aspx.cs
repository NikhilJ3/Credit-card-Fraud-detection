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

public partial class pgNewCard : System.Web.UI.Page
{
    DataAccess data = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        data.DBOpen();

        data.cmd = new SqlCommand("card_SP", data.cn);
        data.cmd.CommandType = CommandType.StoredProcedure;

        data.cmd.Parameters.Add(new SqlParameter("@cardNo", txtCardNo.Text));
        data.cmd.Parameters.Add(new SqlParameter("@CreditLimit", Convert.ToInt32(txtAmt.Text)));
        data.cmd.Parameters.Add(new SqlParameter("@holderName", txtACName.Text));
        //data.cmd.Parameters.Add(new SqlParameter("@HolderAddress", txtAddress.Text));
        data.cmd.Parameters.Add(new SqlParameter("@BankName", txtBankName.Text));
        data.cmd.Parameters.Add(new SqlParameter("@ACNO", txtACNO.Text));
        try
        {
            data.cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Not a Vaild Card Number')</script>");
            data.DBCmdClose();
        }

        data.DBCmdClose();

        txtCardNo.Text = "";
        txtAmt.Text = "";
        txtACName.Text = "";
        txtAddress.Text = "";
        txtBankName.Text = "";
        txtACNO.Text = "";

        Response.Redirect("pgNewUser.aspx");
    }
    protected void txtCardNo_TextChanged(object sender, EventArgs e)
    {
        data.DBReaderOpen("select * from card where cardNo='" + txtCardNo.Text + "'");
        if (data.dr.HasRows)
        {
            txtCardNo.Focus();
            lblerror.Visible = true;
            btnSubmit.Enabled = false;

        }
        else
        {
            txtACNO.Focus();
            btnSubmit.Enabled = true;
        }
    }
}
