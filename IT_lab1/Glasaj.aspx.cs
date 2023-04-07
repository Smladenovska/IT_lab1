using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_lab1
{
    public partial class Glasaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                string[] predmeti = new string[]
                {
                    "Интернет Технологии",
                    "Интернет",
                    "Дигитална Електроника"
                };
                foreach (string predmet in predmeti)
                {
                    lbPredmeti.Items.Add(predmet);
                }
                string[] krediti = new string[]
                {
                    "6","5.5","5.5"
                };
                //foreach (string p in krediti)
                //{
                   
                //}
                
                for(int i=0; i<krediti.Length; i++)
                {
                    lbKrediti.Items.Add(krediti[i]);
                }

                //if (Session["email"] == null)
                //{
                //    lbmail.Text = "";
                //}
                //else
                //{
                //    lbmail.Text = Session["email"].ToString();

                //}
                //lbmail.Text = lista.ToString();
            }
            
        }
        string[] profesori = new string[]
        {
            "Проф д-р Гоце Арменски",
            "Проф д-р Гоце",
            "Проф д-р Арменски"
        };


        protected void lbPredmeti_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            lbKrediti.SelectedIndex = lbPredmeti.SelectedIndex;
            if (ViewState["prof"] == null)
            {
                ViewState["prof"]= "";
            }
            else
            {
                lblProfesor.Text = profesori[lbPredmeti.SelectedIndex];
                
            }
           
            //lblProfesor.Text = profesori[lbPredmeti.SelectedIndex];
            
            
        }

        protected void vote_Click(object sender, EventArgs e)
        {
            if (lbPredmeti.SelectedItem != null && lbKrediti.SelectedItem != null)
            {
                string predmet = lbPredmeti.SelectedItem.ToString();
                Session["predmet"] = predmet;
               
                Response.Redirect("UspeshnoGlasanje.aspx");
            }

        }

        protected void dodadi_Click(object sender, EventArgs e)
        {

            string predmet = addPredmet.Text;
            string krediti = addKrediti.Text;
            if(predmet !="" && krediti != "")
            {
                lbPredmeti.Items.Add(predmet);
                lbKrediti.Items.Add(krediti);
            }

        }

        protected void izbrishi_Click(object sender, EventArgs e)
        {
            if(lbPredmeti.SelectedIndex != -1)
            {
                int indeks = lbPredmeti.SelectedIndex;
                lbPredmeti.Items.RemoveAt(indeks);
                lbKrediti.Items.RemoveAt(indeks);
            }

        }
    }
}