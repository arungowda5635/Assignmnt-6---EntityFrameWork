using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace EntityFrameWork
{
    public partial class RegisterStudent : System.Web.UI.Page
    {
        dbClass obj = new dbClass();
        DataTable tbl = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            String qry = "select * from tbClass";
            tbl = obj.Srch(qry);
            for (int y=0;y<tbl.Rows.Count;y++) {
                TxtClass.Items.Add(tbl.Rows[y]["Sclass"].ToString());
            }

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            String qry = "insert into tbStudent(Name,FatherName,Address,Mobile,class,Dob) values('"+txtName.Text+"','"+ TxtFatherName.Text+"','"+txtAddress.Text+"','"+TxtmobileNo.Text+"','"+TxtClass.SelectedItem.ToString() +"','"+TxtDob.Text+"')";
            obj.InsDelUpdt(qry);
            qry = "";
            qry = "select * from tbStudent ORDER BY Id DESC";
            tbl = new DataTable();
            tbl = obj.Srch(qry);
            rslt.InnerHtml = "Student got admission and his Unique Id is=== "+tbl.Rows[0]["id"].ToString();
            

        }
    }
}