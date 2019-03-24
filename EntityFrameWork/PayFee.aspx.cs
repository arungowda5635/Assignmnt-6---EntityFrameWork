using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameWork
{
    public partial class PayFee : System.Web.UI.Page
    {
        dbClass obj = new dbClass();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFee_Click(object sender, EventArgs e)
        {
            DateTime dt = new DateTime();

            String qry = "insert into tbFee(UniqID,Fee,Sdate) values("+Convert.ToInt32(txtId.Text)+","+Convert.ToInt32(txtFee.Text.ToString())+",'"+dt.ToLongDateString()+"')";
            obj.InsDelUpdt(qry);
            rslt.InnerHtml = "Fee Paid ";


        }
    }
}