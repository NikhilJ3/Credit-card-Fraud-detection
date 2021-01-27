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

public partial class pgAdmin : System.Web.UI.Page
{
    DataAccess data = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        gvUsers.Visible = false;
    }
    protected void lbtnViewPro_Click(object sender, EventArgs e)
    {
        gvUsers.Visible = true;
        data.DBDataAdapter("Select cardNo as 'CARD NUMBER',holdername as Name,holderaddress as ADDRESS,creditLimit as 'CREDIT LIMIT',Acno as 'ACCOUNT NO',Bankname as 'BANK NAME' from card", gvUsers);
    }
    protected void lbtnBlockedUser_Click(object sender, EventArgs e)
    {
        gvUsers.Visible = true;
        data.DBDataAdapter("Select cardNo as 'CARD NUMBER',holdername as Name,holderaddress as ADDRESS,Acno as 'ACCOUNT NO',Bankname as 'BANK NAME',placeoftransaction as 'PLACE OF TRANSACTION',placeid as 'PLACE ID',amount as AMOUNT,datetime as 'DATE TIME' from fraud", gvUsers);
    }
}
