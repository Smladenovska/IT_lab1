using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_lab1
{
    public partial class UspeshnoGlasanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 

            if (Session["email"] == null)
            {
                lbmail.Text = "";
            }
            else
            {
                lbmail.Text = Session["email"].ToString();

            }



            if(Session["predmet"] == null)
            {
                    lblpr.Text = "";
            }
            else
             {
                    lblpr.Text = Session["predmet"].ToString();
             }
             
        }

        }
    }
}