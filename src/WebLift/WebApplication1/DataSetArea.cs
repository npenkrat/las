using System.Data;


namespace WebApplication1 {
    
    
    public partial class DataSetArea {


        
        public DataSet GetDataSet(int[] arr, string[] arr1)
        {
            DataSet dataSet = new System.Data.DataSet();
            DataTable myDataTable = dataSet.Tables.Add("AreaTable");
            myDataTable.Columns.Add("ID", typeof(int));
            myDataTable.Columns.Add("Name", typeof(string));

            for (int i = 0; i < arr.Length; ++i)
            {
                myDataTable.Rows.Add(new object[] { arr[i], arr1[i] });

            }

            return dataSet;
        }
    }
}
