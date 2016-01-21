using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class common
    {
        public static string getConnectionString() 
        {
            System.Configuration.Configuration rootWebConfig =
        System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/ApplicationServices");
            System.Configuration.ConnectionStringSettings connString;
            if (0 < rootWebConfig.ConnectionStrings.ConnectionStrings.Count)
            {
                connString =
                    rootWebConfig.ConnectionStrings.ConnectionStrings["ApplicationServices"];
                if (null != connString)
                    return connString.ConnectionString;
                else
                    return string.Empty;
            }
            return string.Empty;
        }
    }
}