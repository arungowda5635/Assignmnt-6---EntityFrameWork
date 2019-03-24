using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace EntityFrameWork
{
    public partial class ViewFee : System.Web.UI.Page
    {
        dbClass obj = new dbClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            String recrd = "<table><tr><td>ID</td><td>Unique ID </td><td>Fee</td><td>Date</td><td>delete</td></tr>";
            DataTable tbl = new DataTable();
            String qry = "select * from tbFee";
            tbl = obj.Srch(qry);
            if (tbl.Rows.Count > 0)
            {
                for (int x = 0; x < tbl.Rows.Count; x++)
                {
                    recrd = recrd + "<tr><td>" + tbl.Rows[x]["UniqID"] + "</td>";
                    recrd = recrd + "<td>" + tbl.Rows[x]["Fee"] + "</td>";
                    recrd = recrd + "<td>" + tbl.Rows[x]["Sdate"] + "</td>";
                    recrd = recrd + "<td><a href='ViewFee.aspx?id=" + tbl.Rows[x]["id"] + "' class='btn-primary' style='border:5px ridge green;height:90px;padding:50px;'>Delete</td></tr>";
                    
                }
                rslt.InnerHtml = recrd + "</table>";
            }
            else
            {
                rslt.InnerHtml = "record is empty";
            }

            if (Request.QueryString["id"] != null)
            {
                qry = "";
                qry = "delete from tbFee where id=" + Convert.ToInt32(Request.QueryString["id"].ToString()) + "";
                obj.InsDelUpdt(qry);
                Response.Redirect("ViewFee.aspx");
            }
        }
    }
}