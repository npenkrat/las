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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void ASPxGridViewList_DataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Visible = false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // The data source needs
            // to be bound to the GridView control only when the 
            // page is first loaded. Thereafter, the values are
            // stored in view state.                      
           // if (!IsPostBack)
            {

                // Declare the query string.
                //String queryString = 
                //"Select [CustomerID], [CompanyName], [Address], [City], [PostalCode], [Country] From [Customers]";

                // Run the query and bind the resulting DataSet
                // to the GridView control.
                // DataSet ds = GetData(queryString);
               //DataSetList
                //DataSetArea ds = new DataSetArea();
                DataSet1 ds = new DataSet1();

                //Fill DataSet
                string SQLquery = "Select ID as Номер, Name as Участок From AreaTable";
                DataSet ds2 = FillDataSet(SQLquery);

                string text = "area1";
                int number = ds.ListTable.Rows.Count;
                ds.ListTable.Rows.Add(new object[] { number + 1, "участок1","Ленинский" ,1,2,3,4,5,6,7,1,2,3,4});
                ds.ListTable.Rows.Add(new object[] { number + 2, "участок2", "Львовская", 5, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4 });
                ds.ListTable.Rows.Add(new object[] { number + 3, "участок3", "Ораниенбаумский", 6, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4 });
                ds.ListTable.Rows.Add(new object[] { number + 4, "участок4", "Ветеранов", 2, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4 });
                ds.ListTable.Rows.Add(new object[] { number + 5, "участок1", "Краснопутиловская", 6, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4 });
                ds.ListTable.Rows.Add(new object[] { number + 6, "участок2", "Гоголя", 2, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4 });
                ds.ListTable.Rows.Add(new object[] { number + 7, "участок6", "Ораниенбаумский", 6, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4 });
                ds.ListTable.Rows.Add(new object[] { number + 8, "участок9", "Ветеранов", 2, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4 });
                ds.ListTable.Rows.Add(new object[] { number + 9, "участок10", "Краснопутиловская", 6, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4 });
                ds.ListTable.Rows.Add(new object[] { number + 10, "участок12", "Гоголя", 2, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4 });
                            
               // ds.ListTable.Columns[0].Caption = "Идентификатор";
                

                //DataSet ds;
                if (ds.Tables.Count > 0)
                {
                    //for test
                    ASPxGridViewList.DataSource = ds;
                    //real data from bd
                   // ASPxGridViewList.DataSource = ds2;

                    //ASPxGridViewList.DataBound +=new EventHandler(ASPxGridViewList_DataBound);

                    //ASPxGridViewList.Columns[0].Visible = false;
                    ASPxGridViewList.DataBind();
                }
            }
        }
        static DataSet FillDataSet(string SQLquery)
        {
            string sConnectionString;
            sConnectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=WebLift;Integrated Security=False;Password=sa777;User ID=sa;";
            //Data Source=LEOPARDIC\SQLEXPRESS;Initial Catalog=Lift;Integrated Security=True;Pooling=False
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

            /*DataTable tblAuthors;
            tblAuthors = ds.Tables["AreaTable"];

            foreach (DataRow drCurrent in tblAuthors.Rows)
            {
                Console.WriteLine("{0} {1}",
                    drCurrent["ID"].ToString(),
                    drCurrent["Name"].ToString());
            }
            Console.ReadLine();*/
            return ds;
        }
    }
}