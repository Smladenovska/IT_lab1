﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_lab1
{
    public partial class Najava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void najava_Click(object sender, EventArgs e)
        {
            if(password!=null) 
            {
                Session["email"] = email.Text;
                Response.Redirect("Glasaj.aspx");
            }
        }
    }
}