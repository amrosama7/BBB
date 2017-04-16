using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class users : System.Web.UI.Page
{
    public string id;
    public string nom;
    public string init;
    protected void Page_Load(object sender, EventArgs e)
    {
        FormsAuthenticationTicket tkt;
        if (Request.Cookies[".ASPXFORMSDEMO"] != null)
        {
            tkt = FormsAuthentication.Decrypt(Request.Cookies[".ASPXFORMSDEMO"].Value);
            string s = tkt.UserData.Substring(0, 7);
            string ss = tkt.UserData.Substring(7);
            if (s == "cliento")
            {
                account.InnerHtml = tkt.Name;
                id = tkt.Name;
                init = ss;
                account.Attributes.Add("href", "users.aspx");
            }

            else
                Response.Redirect("Login.aspx", true);

        }
        else Response.Redirect("Login.aspx", true);
        if (!IsPostBack)
        {
            MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
            Queue queue = new Queue();
            queue.Enqueue(new MySQLParam("@u", id));
            DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL editget", queue);
            if (dt_Results.Rows.Count > 0)
            {
                TextBox10.Text = dt_Results.Rows[0][0].ToString();
                TextBox13.Text = dt_Results.Rows[0][1].ToString();

                TextBox11.Text = dt_Results.Rows[0][3].ToString();
                nom = dt_Results.Rows[0][3].ToString(); ;
                TextBox12.Text = dt_Results.Rows[0][4].ToString();
            }
            sqlCnn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("Login.aspx", true);


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
        Queue queue = new Queue();
        queue.Enqueue(new MySQLParam("@u", id));
        queue.Enqueue(new MySQLParam("@o", TextBox2.Text));
        queue.Enqueue(new MySQLParam("@n", TextBox3.Text));
        MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL changepass", queue);
        sqlCnn.Close();
        FormsAuthentication.SignOut();
      
        Session.Clear();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
        Queue queue = new Queue();
        queue.Enqueue(new MySQLParam("@u", id));
        queue.Enqueue(new MySQLParam("@e", TextBox10.Text));
        queue.Enqueue(new MySQLParam("@pn", TextBox13.Text));
        queue.Enqueue(new MySQLParam("@hn", ""));
        queue.Enqueue(new MySQLParam("@cn", TextBox11.Text));
        queue.Enqueue(new MySQLParam("@a", TextBox12.Text));
        MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL editset", queue);
        nom = TextBox11.Text;
        sqlCnn.Close();


    }

}