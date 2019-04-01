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
           
         try
             {
                    
         
            //rslt.InnerHtml = txtAddress.Text + "--" + TxtClass.Text + "--" + TxtDob.Text + "--" + TxtFatherName.Text + "--" + TxtId.Text + "--" + TxtmobileNo.Text + "--" + txtName.Text;
            String qry = "Update tbStudent set SName='"+ txtName1.Text+ "',SFatherName='" + TxtFatherName1.Text + "',SAddress='" + txtAddress1.Text + "',SMobile='" + TxtmobileNo1.Text + "',Sclass='" + TxtClass1.Text + "',SDob='" + TxtDob1.Text + "' where ID='" + Convert.ToInt32(TxtId1.Text)+"'";
           
            obj.InsDelUpdt(qry);

            txtName1.Text = "";
            txtAddress1.Text = "";
            
            TxtDob1.Text = "";
            TxtFatherName1.Text = "";
            TxtId1.Text = "";
           TxtmobileNo1.Text = "";
            id = "";

            Response.Redirect("ViewStudent.aspx?#Record");
            }
            catch (Exception rs) {
                rslt.InnerHtml = "Error ";
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    DataTable tbl = new DataTable();
                    String qry = "select * from tbClass";
                    tbl = obj.Srch(qry);
                    for (int y = 0; y < tbl.Rows.Count; y++)
                    {
                        TxtClass1.Items.Add(tbl.Rows[y]["Sclass"].ToString());
                    }

                    qry = "";
                    tbl = new DataTable();

                    if (Request.QueryString["ID"] != null)
                    {
                        qry = "select * from tbStudent where ID=" + Convert.ToInt32(Request.QueryString["ID"].ToString()) + "";
                        tbl = obj.Srch(qry);
                        if (tbl.Rows.Count > 0)
                        {
                            name = tbl.Rows[0]["SName"].ToString();
                            address = tbl.Rows[0]["SAddress"].ToString();
                            sfather = tbl.Rows[0]["SFatherName"].ToString();
                            sdob = tbl.Rows[0]["SDob"].ToString();
                            mob = tbl.Rows[0]["SMobile"].ToString();
                            sclass = tbl.Rows[0]["Sclass"].ToString();
                            id = tbl.Rows[0]["id"].ToString();

                            TxtId1.Text = id;
                            txtName1.Text = name;
                            txtAddress1.Text = address;
                            TxtClass1.Text = sclass;
                            TxtDob1.Text = sdob;
                            TxtFatherName1.Text = sfather;
                            TxtmobileNo1.Text = mob;

                        }
                    }
                }
                catch (Exception rs)
                {
                    rslt.InnerHtml = "Here  is Some error in the Code";
                }
            }
        }
    }
}