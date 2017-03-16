using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

public class Database
{
  public static String ConnectionString
    {
        get
        {
            // get connection string from web.config
            return WebConfigurationManager.ConnectionStrings["msdbConnectionString"]
                          .ConnectionString;

        }
    }
}