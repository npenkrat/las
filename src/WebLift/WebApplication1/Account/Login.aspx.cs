﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebApplication1.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // RegisterHyperLink.NavigateUrl ="~/About.aspx";
            //LoginUser.UserName
            //LoginUser.Password
           // if(Roles.IsUserInRole("User"))
                RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
               // RegisterHyperLink.NavigateUrl = "~/List.aspx";

        }
    }
}
