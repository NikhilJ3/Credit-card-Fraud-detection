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


public partial class pgTransaction : System.Web.UI.Page
{
    DataAccess data = new DataAccess();
    int CreditLimit = 0;
    int sumAmount = 0;
    bool Amt = false;
    bool Place = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        txtCardNo.Focus();
        lblError.Visible = false;
        txtAmt.Text = Session["amt"].ToString();
    }

    protected void txtCardNo_TextChanged(object sender, EventArgs e)
    {
        //TO check the user is blocked user or not
        data.DBCmdOpen("Select * from fraud where cardNo='" + txtCardNo.Text + "'");
        data.dr = data.cmd.ExecuteReader();
        if (data.dr.HasRows)
        {
            lblError.Text= "Sorry Your Account Was Disabled";
            lblError.Visible = true;
            data.DBReaderClose();
        }

        else
        {
            data.DBReaderClose();
            data.DBCmdOpen("Select * from card where cardNo='" + txtCardNo.Text + "'");
            data.dr = data.cmd.ExecuteReader();
            if (data.dr.HasRows)
            {
                data.dr.Read();
                txtACNO.Text = data.dr["ACNO"].ToString();
                txtACName.Text = data.dr["holderName"].ToString();
                txtBankName.Text = data.dr["BankName"].ToString();
                txtAddress.Text = data.dr["holderAddress"].ToString();
                txtPalce.Focus();
                btnSubmit.Enabled = true;
            }
            else
            {
                lblError.Text = "Sorry Invalid Card Number";
                lblError.Visible = true;
                txtCardNo.Focus();
                btnSubmit.Enabled = false;
            }
            data.DBReaderClose();
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {               
        //To Sum The Total Amount made By the Card Holder
        data.DBCmdOpen("select sum(amount) from account where cardNo='" + txtCardNo.Text + "'");
        data.dr = data.cmd.ExecuteReader();
        if (data.dr.HasRows)
        {
            data.dr.Read();
            if (data.dr[0].ToString() == "")
            {
                sumAmount = 0;
            }
            else
            {
                sumAmount = Convert.ToInt32(data.dr[0].ToString());
            }
        }
        data.DBReaderClose();

        //To Find Whether the CreditLimit is Exceed
        data.DBCmdOpen("select * from card where cardNo='" + txtCardNo.Text + "'");
        data.dr = data.cmd.ExecuteReader();
        if (data.dr.HasRows)
        {
            data.dr.Read();
            CreditLimit = Convert.ToInt32(data.dr["CreditLimit"].ToString());
        }
        data.DBReaderClose();


        // To Verify Genuine User Or Not
        data.DBCmdOpen("select count(cardNo) from account where cardNo='" + txtCardNo.Text + "'");
        data.dr = data.cmd.ExecuteReader();
        if (data.dr.HasRows)
        {
            data.dr.Read();
            if (data.dr[0].ToString() == "")
            {
                insertData();
            }
            else
            {
                int count = Convert.ToInt32(data.dr[0].ToString());
                data.DBReaderClose();
                if (count <= 3)
                {
                    insertData();
                }
                else
                {
                    int tranAmt = Convert.ToInt32(txtAmt.Text);
                    string trnPlace = txtPalce.Text;

                    //To Get all the transaction palce and amount to verify the current transction

                    data.DBReaderOpen("Select * from account where cardNo='" + txtCardNo.Text + "'");

                    if (data.dr.HasRows)
                    {
                        while (data.dr.Read())
                        {
                            if (data.dr["PlaceofTransaction"].ToString() == txtPalce.Text)
                            {
                                Place = true;
                                break;
                            }
                        }

                    }
                    data.DBReaderClose();


                    data.DBReaderOpen("select min(amount) as Min ,max(amount) as max from account where cardNo='" + txtCardNo.Text + "'");

                    if (data.dr.HasRows)
                    {
                        data.dr.Read();
                        {
                            int min = Convert.ToInt32(data.dr["Min"].ToString());
                            int max = Convert.ToInt32(data.dr["Max"].ToString());

                            if (min <= Convert.ToInt32(txtAmt.Text) && max >= Convert.ToInt32(txtAmt.Text))
                            {
                                Amt = true;
                            }
                        }

                    }


                    if (Amt && Place)
                    {
                        insertData();
                    }
                    else if (Amt)
                    {
                        insertData();
                    }
                    else
                    {
                        data.DBReaderOpen("Select uid from userInfo where cardNo='" + txtCardNo.Text + "'");
                        if (data.dr.HasRows)
                        {
                            data.dr.Read();
                            {
                                Session["TranUid"] = data.dr["uid"].ToString();
                                Session["CardNo"] = txtCardNo.Text;
                                Session["AccountNo"] = txtACNO.Text;
                                Session["BankName"] = txtBankName.Text;
                                Session["HolderName"] = txtACName.Text;
                                Session["Address"] = txtAddress.Text;
                                Session["Place"] = txtPalce.Text;
                                Session["PlaceId"] = txtPlaceId.Text;
                                Session["Amt"] = txtAmt.Text;
                                Session["SumAmount"] = sumAmount;
                                Session["creditLimit"] = CreditLimit;
                                Response.Redirect("pgVerification.aspx");
                            }
                        }
                    }


                }

            }

        }
    }
    void insertData()
    {

        if (Convert.ToInt32(txtAmt.Text) + sumAmount <= CreditLimit)
        {
            data.DBOpen();

            data.cmd = new SqlCommand("Account_SP", data.cn);
            data.cmd.CommandType = CommandType.StoredProcedure;

            data.cmd.Parameters.Add(new SqlParameter("@cardNo", txtCardNo.Text));
            data.cmd.Parameters.Add(new SqlParameter("@holderName", txtACName.Text));
            data.cmd.Parameters.Add(new SqlParameter("@HolderAddress", txtAddress.Text));
            data.cmd.Parameters.Add(new SqlParameter("@ACNO", txtACNO.Text));
            data.cmd.Parameters.Add(new SqlParameter("@BankName", txtBankName.Text));
            data.cmd.Parameters.Add(new SqlParameter("@PlaceofTransaction", txtPalce.Text));
            data.cmd.Parameters.Add(new SqlParameter("@PlaceId", Convert.ToInt32(txtPlaceId.Text)));
            data.cmd.Parameters.Add(new SqlParameter("@Amount", Convert.ToInt32(txtAmt.Text)));
            data.cmd.Parameters.Add(new SqlParameter("@DateTime", DateTime.Now));

            data.cmd.ExecuteNonQuery();
            data.DBCmdClose();
        }
        else
        {
            lblError.Text = "Sorry You are Exceed the Credit Limit";
            lblError.Visible = true;
        }

        txtPalce.Text = "";
        txtPlaceId.Text = "";
        txtCardNo.Text = "";
        txtBankName.Text = "";
        txtAmt.Text = "";
        txtAddress.Text = "";
        txtACNO.Text = "";
        txtACName.Text = "";
    }
}
