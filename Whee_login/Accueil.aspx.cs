using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using Npgsql;

namespace Whee_login
{
    public partial class Accueil : System.Web.UI.Page
    {
        NpgsqlConnection con = new NpgsqlConnection("server=localhost;Port=5432;Database=whee;User Id=postgres;Password=root");


        protected void Page_Load(object sender, EventArgs e)
        {
            string id = (string)Session["idCompte"];
            con.Open();

            String sql = "SELECT * FROM public.compte WHERE idCompte='"+id+"'";
            NpgsqlCommand cmd = new NpgsqlCommand(sql, con);


            NpgsqlDataAdapter sda = new NpgsqlDataAdapter("SELECT * FROM public.annonce_covoiturage as oc inner join publier as o on oc.idCov = o.idCov inner join compte as s on o.idCompte = s.idCompte", con);
            DataTable dt = new DataTable();
            
            sda.Fill(dt);
           
            LabelN.DataBind();
            LabelPram.DataBind();
            ListViewAnnonce.DataSource = dt;
            ListViewAnnonce.DataBind();
            NpgsqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                LabelN.Text = String.Format(reader.GetString(3) + "." + reader.GetString(2));
                LabelPram.Text = String.Format(reader.GetString(3) + "." + reader.GetString(2));
                imgProfil.ImageUrl = reader.GetString(9);

            }
            con.Close();




        }



        protected void btnsearch_Click(object sender, EventArgs e)
        {
           
            con.Open();
            NpgsqlDataAdapter sda = new NpgsqlDataAdapter("SELECT * FROM public.annonce_covoiturage as oc inner join publier as o on oc.idCov = o.idCov inner join compte as s on o.idCompte = s.idCompte where pointdepart='" + textdepart.Text + "' AND pointarrive='" + textarrive.Text + "' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListViewAnnonce.DataSource = dt;
            ListViewAnnonce.DataBind();
            con.Close();
        }
    }
}


