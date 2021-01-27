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

public partial class pgViewPro : System.Web.UI.Page
{
    DataAccess data = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        gridBind();
    }
    void gridBind()
    {
        data.DBOpen();
        data.cmd = new SqlCommand("Select * from UserInfo where uid=" + Convert.ToInt32(Session["uid"].ToString()), data.cn);
        SqlDataAdapter da = new SqlDataAdapter(data.cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dvUserPro.DataSource = ds;
        dvUserPro.DataBind();
      //  Panel1.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string cardNo = "";
        data.DBReaderOpen("Select cardNo from userinfo where uid=" + Convert.ToInt32(Session["Uid"].ToString()));
        if (data.dr.HasRows)
        {
            data.dr.Read();
            cardNo = data.dr["cardNo"].ToString();
        }
        data.DBReaderClose();

        data.DBOpen();
        data.cmd = new SqlCommand("userInfo_SP", data.cn);
        data.cmd.CommandType = CommandType.StoredProcedure;

        data.cmd.Parameters.Add(new SqlParameter("@mode", 2));
        data.cmd.Parameters.Add(new SqlParameter("@CardNo", cardNo));
        data.cmd.Parameters.Add(new SqlParameter("@FirstName", txtFName.Text));
        data.cmd.Parameters.Add(new SqlParameter("@LastName", txtLName.Text));
        data.cmd.Parameters.Add(new SqlParameter("@Uid", Convert.ToInt32(Session["uid"].ToString())));
        data.cmd.Parameters.Add(new SqlParameter("@UName", ""));
        data.cmd.Parameters.Add(new SqlParameter("@pwd", ""));
        data.cmd.Parameters.Add(new SqlParameter("@Email", txtEmail.Text));
        data.cmd.Parameters.Add(new SqlParameter("@DOB", Convert.ToDateTime(txtDOB.Text)));
        data.cmd.Parameters.Add(new SqlParameter("@Gender", ddlGender.SelectedItem.ToString()));
        data.cmd.Parameters.Add(new SqlParameter("@address1", txtAdd1.Text));
        data.cmd.Parameters.Add(new SqlParameter("@address2", txtAdd2.Text));
        data.cmd.Parameters.Add(new SqlParameter("@city ", txtCity.Text));
        data.cmd.Parameters.Add(new SqlParameter("@state", txtState.Text));
        data.cmd.Parameters.Add(new SqlParameter("@country", txtCountry.Text));
        data.cmd.Parameters.Add(new SqlParameter("@pincode", Convert.ToInt32(txtPin.Text)));
        data.cmd.Parameters.Add(new SqlParameter("@phone", Convert.ToInt32(txtPhone.Text)));

        data.cmd.ExecuteNonQuery();
        data.DBCmdClose();
        gridBind();

    }


    protected void btnEdit_Click1(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        data.DBCmdOpen("Select * from UserInfo where uid=" + Convert.ToInt32(Session["uid"].ToString()));
        data.dr = data.cmd.ExecuteReader();
        if (data.dr.HasRows)
        {
            data.dr.Read();
            txtAdd1.Text = data.dr["address1"].ToString();
            txtAdd2.Text = data.dr["address2"].ToString();
            txtCity.Text = data.dr["city"].ToString(); ;
            txtCountry.Text = data.dr["country"].ToString(); ;
            txtDOB.Text = data.dr["dob"].ToString();
            txtEmail.Text = data.dr["email"].ToString(); ;
            txtFName.Text = data.dr["firstname"].ToString();
            txtLName.Text = data.dr["lastname"].ToString();
            txtPhone.Text = data.dr["phone"].ToString(); ;
            txtPin.Text = data.dr["phone"].ToString();
            txtState.Text = data.dr["state"].ToString();
            txtFName.Focus();
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        gridBind();
    }

}

