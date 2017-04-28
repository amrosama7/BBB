
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

public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FormsAuthenticationTicket tkt;
        if (Request.Cookies[".ASPXFORMSDEMO"] != null)
        {
            tkt = FormsAuthentication.Decrypt(Request.Cookies[".ASPXFORMSDEMO"].Value);
            if (tkt.Name == "loadbugs" && tkt.UserData == "adminooo")
            {
                account.InnerHtml = "loadbugs";
                account.Attributes.Add("href", "admin.aspx");
            }
            else
            {
                string s = tkt.UserData.Substring(0, 7);
           //     string ss = tkt.UserData.Substring(7);
                if (s == "cliento")
                {
                    account.InnerHtml = tkt.Name;
                    account.Attributes.Add("href", "users.aspx");

                }


            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox2.Text == TextBox3.Text && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && TextBox9.Text != "")
        {

            MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
            Queue queue = new Queue();
            queue.Enqueue(new MySQLParam("@c", TextBox4.Text));
            DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL code", queue);
            if (dt_Results.Rows.Count > 0)
            {
                queue = new Queue();
                queue.Enqueue(new MySQLParam("@u", TextBox1.Text));
                queue.Enqueue(new MySQLParam("@i", TextBox9.Text));
                dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL check_user", queue);
                if (dt_Results.Rows.Count == 0)
                {
                    Queue queue2 = new Queue();
                    queue2.Enqueue(new MySQLParam("@u", TextBox1.Text));
                    queue2.Enqueue(new MySQLParam("@p", TextBox2.Text));
                    queue2.Enqueue(new MySQLParam("@e", TextBox5.Text));
                    queue2.Enqueue(new MySQLParam("@pn", TextBox7.Text));
                    queue2.Enqueue(new MySQLParam("@hn", ""));
                    queue2.Enqueue(new MySQLParam("@cn", TextBox8.Text));
                    queue2.Enqueue(new MySQLParam("@a", TextBox6.Text));
                    queue2.Enqueue(new MySQLParam("@i", TextBox9.Text));
                    MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL signup", queue2);
                    queue = new Queue();
                    queue.Enqueue(new MySQLParam("@c", TextBox4.Text));
                    MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL codes", queue);
                    Response.Redirect("login.aspx", true);
                }
                else
                {
                    mess.Style.Add("display", "block");
                    mess.InnerText = "Used Username or initials";
                }
            }
            else
            {
                mess.Style.Add("display", "block");
                mess.InnerText = "Wrong Code!";

            } sqlCnn.Close();
        }
    }
}