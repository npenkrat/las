using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class NewArea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            DataSetArea areaDataSet = new DataSetArea();
            //read from DB
            DataSourceSelectArguments selectSt = new DataSourceSelectArguments();
            DataView allDataDataView = (DataView)SqlDataSource1.Select(selectSt);
            foreach (DataRowView d in allDataDataView)
            {
              int number2 = areaDataSet.AreaTable.Rows.Count;
              areaDataSet.AreaTable.Rows.Add(new object[] { number2+1, d["Name"].ToString()});
            }

            //read data from form
            string text = TextBoxAreaName.Text;

            //add data to dataset
            int number = areaDataSet.AreaTable.Rows.Count;
            areaDataSet.AreaTable.Rows.Add(new object[] { number+1, text });

            //TODO: Add to BD
            int t = 8;
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
            string SQLquery = "Select ID, Name From AreaTable";
            SqlDataAdapter da
                = new SqlDataAdapter(SQLquery, objConn);
            //da.FillSchema(areaDataSet, SchemaType.Source, "AreaTable");
        //    da.FillSchema(areaDataSet.AreaTable, SchemaType.Source);
            //da.Fill(areaDataSet, "AreaTable");
        //    da.Fill(areaDataSet.AreaTable);
            SqlCommand insertRow = new SqlCommand();
            insertRow.CommandText = "INSERT INTO AreaTable(ID, Name)   VALUES(@param1,@param2)";
            insertRow.Parameters.AddWithValue("@param1", number + 1);
            insertRow.Parameters.AddWithValue("@param2", text);
            insertRow.Connection = objConn;
            insertRow.ExecuteNonQuery();
            //da.InsertCommand = insertRow;
            //da.Update(areaDataSet.AreaTable);
            objConn.Close();
        }
    }
}