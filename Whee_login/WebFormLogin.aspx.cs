using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Whee_login
{
    public partial class WebFormLogin : System.Web.UI.Page
    {
        private string connstring = String.Format("Server ={0};Port={1};" + "UserId={2};Password={3};Database={4};", "localhost", 5432, "postgres", "root", "whee");
        private NpgsqlConnection conn;
        private string sql;
        private NpgsqlCommand cmd;
        HashFile hash = new HashFile();

        

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new NpgsqlConnection(connstring);
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string emailEnter = yourUsername.Text;
            string passwordEnter = yourPassword.Text;
            string passwordHash = hash.Hasher(passwordEnter);
            



            sql = "SELECT * FROM public.compte WHERE mail='"+ emailEnter + "' AND mot_de_passe= '"+ passwordHash + "'";
            cmd = new NpgsqlCommand(sql, conn);
            
            
            object a = cmd.ExecuteScalar();
            
            if(a != null)
            {
                NpgsqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Session["idCompte"] = reader.GetString(0);
                    Response.Redirect("Accueil.aspx");
                }
                
            }
            else
            {
                TextBoxMessage.Text = "Email ou Mot de passe ERRONE";
            }
            conn.Close();
            yourUsername.Text = "";
            yourPassword.Text = "";


        }
    }
}
