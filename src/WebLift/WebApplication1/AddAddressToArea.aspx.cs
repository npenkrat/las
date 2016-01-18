using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{

    public partial class AddAddressToArea : System.Web.UI.Page
    {
        DataSetArea areaDataSet = new DataSetArea();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //TODO:read from bd
               /* string text = "test1";
                int number = areaDataSet.AreaTable.Rows.Count;
                areaDataSet.AreaTable.Rows.Add(new object[] { number + 1, text });
                string text2 = "test2";
                number = areaDataSet.AreaTable.Rows.Count;
                areaDataSet.AreaTable.Rows.Add(new object[] { number + 1, text2 });*/

                DropDownListArea.DataSource = CreateDataSource();
                DropDownListArea.DataTextField = "Name";
                DropDownListArea.DataValueField = "ID";
                DropDownListArea.DataBind();
            }

        }
        static DataSet FillDataSet(string SQLquery)
        {
            string sConnectionString;
            //Data Source=LEOPARDIC\SQLEXPRESS;Initial Catalog=Lift;Integrated Security=True;Pooling=False
            sConnectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=WebLift;Integrated Security=False;Password=sa777;User ID=sa;";
            //sConnectionString = "Password=3897409mike;User ID=leopardic\\east;"
            //                      + "Initial Catalog=Lift;"
            //                      + "Integrated Security=True;"
            //                      + "Data Source=LEOPARDIC\\SQLEXPRESS";
            SqlConnection objConn
                = new SqlConnection(sConnectionString);
            objConn.Open();

            SqlDataAdapter daAuthors
                = new SqlDataAdapter(SQLquery, objConn);
            DataSet ds = new DataSet("Area");
            daAuthors.FillSchema(ds, SchemaType.Source, "AreaTable");
            daAuthors.Fill(ds, "AreaTable");

            return ds;
        }
        ICollection CreateDataSource()
        {
            string SQLquery = "Select ID, Name From AreaTable";
            DataSet ds2 = FillDataSet(SQLquery);
           /* DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add(new DataColumn("ID", typeof(Int32)));
            dt.Columns.Add(new DataColumn("Name", typeof(string)));

            for (int i = 0; i < 9; i++)
            {
                dr = dt.NewRow();

                dr[0] = i;
                dr[1] = "Area " + i.ToString();

                dt.Rows.Add(dr);
            }

            //DataView dv = new DataView(dt);*/
            DataView dv = new DataView(ds2.Tables["AreaTable"]);
            return dv;
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            


        }
    }
}