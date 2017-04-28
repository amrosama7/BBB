using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about : System.Web.UI.Page
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
                if (tkt.UserData == "cliento")
                {
                    account.InnerHtml = tkt.Name;
                    account.Attributes.Add("href", "users.aspx");

                }


            }
        }
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
    //    Queue queue = new Queue();
    //    queue.Enqueue(new MySQLParam("@u", TextBox1.Text));
    //    queue.Enqueue(new MySQLParam("@pass", TextBox2.Text));

    //    DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL signina", queue);
    //    if (dt_Results.Rows.Count > 0)
    //    {
    //        string s = dt_Results.Rows[0][0].ToString();
    //        Session["admin"] = dt_Results.Rows[0][0].ToString();

    //        Response.Redirect("admin.aspx");

    //    }
    //    else
    //    {
    //        queue.Enqueue(new MySQLParam("@u", TextBox1.Text));
    //        queue.Enqueue(new MySQLParam("@pass", TextBox2.Text));
    //        DataTable dt_Result = MySQLExecute.ExecuteReturn(sqlCnn, "CALL signinu", queue);
    //        if (dt_Result.Rows.Count > 0)
    //        {
    //            string s = dt_Result.Rows[0][0].ToString();
    //            Session["user"] = dt_Result.Rows[0][0].ToString();

    //            Response.Redirect("users.aspx");

    //        }

    //        else
    //        {
    //            failsignin.Visible = true;
    //        }
    //    }
    //    sqlCnn.Close();
    //}

    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
    //    Queue queue = new Queue();
    //    queue.Enqueue(new MySQLParam("@c", TextBox3.Text));
    //    DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL code", queue);
    //    if (dt_Results.Rows.Count > 0)
    //    {
    //        Queue queue2 = new Queue();
    //        queue2.Enqueue(new MySQLParam("@u", TextBox9.Text));
    //        queue2.Enqueue(new MySQLParam("@p", TextBox10.Text));
    //        queue2.Enqueue(new MySQLParam("@e", TextBox5.Text));
    //        queue2.Enqueue(new MySQLParam("@pn", TextBox7.Text));
    //        queue2.Enqueue(new MySQLParam("@hn", TextBox8.Text));
    //        queue2.Enqueue(new MySQLParam("@cn", TextBox4.Text));
    //        queue2.Enqueue(new MySQLParam("@a", TextBox6.Text));
    //        MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL signup", queue2);
    //        queue = new Queue();
    //        queue.Enqueue(new MySQLParam("@c", TextBox3.Text));
    //        MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL codes", queue);
    //    }
    //    else
    //    {
    //        codesignup.Visible = true;
    //    }
    //    sqlCnn.Close();
    //}
    //protected void Button4_Click(object sender, EventArgs e)
    //{
    //    MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
    //    Queue queue = new Queue();
    //    queue.Enqueue(new MySQLParam("@c", TextBox12.Text));
    //    DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL send_pass", queue);
    //    sqlCnn.Close();
    //    if (dt_Results.Rows.Count > 0)
    //    {
    //        MailMessage m = new MailMessage();
    //        SmtpClient sc = new SmtpClient();
    //        try
    //        {
    //            m.From = new MailAddress("amr.osama1995@gmail.com");
    //            m.To.Add(TextBox12.Text);
    //            m.Subject = "Load Bugs";
    //            m.IsBodyHtml = true;
    //            m.Body = dt_Results.Rows[0][0].ToString();
    //            sc.Host = "smtp.gmail.com";
    //            sc.Port = 587;
    //            sc.Credentials = new System.Net.NetworkCredential("amr.osama1995@gmail.com", "A.666666");

    //            sc.EnableSsl = true;
    //            sc.Send(m);
    //            Response.Write("Email Send successfully");
    //        }
    //        catch (Exception ex)
    //        {
    //            Response.Write(ex.Message);
    //            Response.Redirect("admin.aspx");
    //        }

    //    }
    //    else
    //    {
    //        codesignup.Visible = true;
    //    }
    //}
}