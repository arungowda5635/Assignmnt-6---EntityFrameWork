using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
namespace Business
{
    class ViewStudent
    {
        DataTable tbl = new DataTable();

        public DataTable getRecords(String qry) {
            tbl = getRecords(qry);
            return tbl;
        }
        
    }
}
