using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace EntityFrameWork
{
    public partial class ViewStudent : System.Web.UI.Page
    {
        dbClass obj = new dbClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String recrd = "<table><tr><td>Unique ID</td><td>Name</td><td>Father Name</td><td>Class</td><td>Address</td><td>Mobile No</td><td>Dob</td><td>delete</td><td>Update</td></tr>";
                DataTable tbl = new DataTable();
                String qry = "select * from tbStudent";
                tbl = obj.Srch(qry);
                if (tbl.Rows.Count > 0)
                {
                    for (int x = 0; x < tbl.Rows.Count; x++)
                    {
                        recrd = recrd + "<tr><td>"+tbl.Rows[x]["id"]+"</td><td>" + tbl.Rows[x]["SName"] + "</td>";
                        recrd = recrd + "<td>" + tbl.Rows[x]["SFatherName"] + "</td>";
                        recrd = recrd + "<td>" + tbl.Rows[x]["Sclass"] + "</td>";
                        recrd = recrd + "<td>" + tbl.Rows[x]["SAddress"] + "</td>";
                        recrd = recrd + "<td>" + tbl.Rows[x]["SMobile"] + "</td>";
                        recrd = recrd + "<td>" + tbl.Rows[x]["SDob"] + "</td>";
                        recrd = recrd + "<td><a href='ViewStudent.aspx?id=" + tbl.Rows[x]["id"] + "' class='btn-primary' style='border:5px ridge green;height:10px;padding:10px;'>Delete</td>";
                        recrd = recrd + "<td><a href='UpdateStudent.aspx?id=" + tbl.Rows[x]["id"] + "#Record' class='btn-primary' style='border:5px ridge green;height:10px;padding:10px;'>Update</td></tr>";
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
                    qry = "delete from tbStudent where id=" + Convert.ToInt32(Request.QueryString["id"].ToString()) + "";
                    obj.InsDelUpdt(qry);
                    Response.Redirect("ViewStudent.aspx?#Record");
                }

            }
            catch (Exception es) {
                rslt.InnerHtml = "error in the code";
            }
        }
    }
}