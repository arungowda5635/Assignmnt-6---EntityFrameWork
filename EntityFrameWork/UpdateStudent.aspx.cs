using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace EntityFrameWork
{
    public partial class UpdateStudent : System.Web.UI.Page
    {
        String name = "", address = "", sclass = "", sdob = "", sfather = "", mob = "", id = "";
        dbClass obj = new dbClass();

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            String qry = "update tbStudent set Name='"+txtName.Text.ToString()+"',FatherName='"+TxtFatherName.Text.ToString()+"',Address='"+txtAddress.Text.ToString()+"',Mobile='"+TxtmobileNo.Text.ToString()+"',Class='"+TxtClass.Text.ToString()+"',Dob='"+TxtDob.Text.ToString()+"' where id="+TxtId.Text.ToString()+"";
            obj.InsDelUpdt(qry);
            Response.Redirect("ViewStudent.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable tbl = new DataTable();
             String qry = "select * from tbClass";
            tbl = obj.Srch(qry);
            for (int y=0;y<tbl.Rows.Count;y++) {
                TxtClass.Items.Add(tbl.Rows[y]["Sclass"].ToString());
            }

            qry = "";
            tbl = new DataTable();

            if (Request.QueryString["id"]!=null) {
                 qry = "select * from tbStudent where id="+Convert.ToInt32(Request.QueryString["id"].ToString()) +"";
                tbl = obj.Srch(qry);
                if (tbl.Rows.Count>0) {
                    name = tbl.Rows[0]["Name"].ToString();
                    address= tbl.Rows[0]["Address"].ToString();
                    sfather= tbl.Rows[0]["FatherName"].ToString();
                    sdob= tbl.Rows[0]["Dob"].ToString();
                    mob=tbl.Rows[0]["Mobile"].ToString();
                    sclass= tbl.Rows[0]["class"].ToString();
                    id= tbl.Rows[0]["id"].ToString();

                    TxtId.Text = id;
                    txtName.Text = name;
                    txtAddress.Text = address;
                    TxtClass.Text = sclass;
                    TxtDob.Text =sdob;
                    TxtFatherName.Text = sfather;
                    TxtmobileNo.Text = mob;

                }
            }
        }
    }
}