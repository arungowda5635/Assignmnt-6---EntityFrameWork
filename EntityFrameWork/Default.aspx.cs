using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EntityFrameWork
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            dbClass obj = new dbClass();
            try
            {

                if (TxtName.Text.ToString().Equals("") && TxtPassword.Text.ToString().Equals(""))
                {
                    rslt.InnerHtml = "Fill  user Name or password ";
                }
                else
                {

                    String qry = "select * from tbRegister where SuserName='" + TxtName.Text + "' and Spassword='" + TxtPassword.Text + "'";
                    DataTable tbl = new DataTable();
                    tbl = obj.Srch(qry);
                    if (tbl.Rows.Count > 0)
                    {
                        Response.Redirect("AdminZone.aspx");
                    }
                    else
                    {
                        rslt.InnerHtml = "invalid user Name or password";
                    }
                }
            }
            catch (Exception  es) {
                rslt.InnerHtml = "Fill Proper Details for Login";
            }
        }
    }
}