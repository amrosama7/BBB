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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FormsAuthenticationTicket tkt;
        if (Request.Cookies[".ASPXFORMSDEMO"] != null)
        {
            tkt = FormsAuthentication.Decrypt(Request.Cookies[".ASPXFORMSDEMO"].Value);
            if (tkt.Name == "loadbugs" && tkt.UserData == "adminooo")
                Response.Redirect("admin.aspx", true);
            else
            {
                if (tkt.UserData == "cliento")
                    Response.Redirect("users.aspx", true);
            }
            //else Response.Redirect("users.aspx", true);
        }
        else
        {
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            FormsAuthenticationTicket tkt;
            string cookiestr;
            HttpCookie ck;
            MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
            Queue queue = new Queue();
            queue.Enqueue(new MySQLParam("@u", TextBox1.Text));
            queue.Enqueue(new MySQLParam("@pass", TextBox2.Text));

            DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL signina", queue);
            if (dt_Results.Rows.Count > 0)
            {


                tkt = new FormsAuthenticationTicket(1, "loadbugs", DateTime.Now,
          DateTime.Now.AddMinutes(1200), true, "adminooo");
                cookiestr = FormsAuthentication.Encrypt(tkt);
                ck = new HttpCookie(FormsAuthentication.FormsCookieName, cookiestr);
                if (true)
                    ck.Expires = tkt.Expiration;
                ck.Path = FormsAuthentication.FormsCookiePath;
                Response.Cookies.Add(ck);

                string strRedirect;
                strRedirect = Request["ReturnUrl"];
                if (strRedirect == null)
                    strRedirect = "admin.aspx";
                Response.Redirect(strRedirect, true);

            }
            else
            {
                queue.Enqueue(new MySQLParam("@u", TextBox1.Text));
                queue.Enqueue(new MySQLParam("@pass", TextBox2.Text));
                DataTable dt_Result = MySQLExecute.ExecuteReturn(sqlCnn, "CALL signinu", queue);
                if (dt_Result.Rows.Count > 0)
                {
                    string s = dt_Result.Rows[0][0].ToString();
                    string ss = dt_Result.Rows[0][1].ToString();
                    tkt = new FormsAuthenticationTicket(1, s, DateTime.Now,
      DateTime.Now.AddMinutes(1200), true, "cliento"+dt_Result.Rows[0][1].ToString() );
                    cookiestr = FormsAuthentication.Encrypt(tkt);
                    ck = new HttpCookie(FormsAuthentication.FormsCookieName, cookiestr);
                    if (true)
                        ck.Expires = tkt.Expiration;
                    ck.Path = FormsAuthentication.FormsCookiePath;
                    Response.Cookies.Add(ck);
                    Response.Redirect("users.aspx", true);



                }
                else
                {
                    mess.Style.Add("display", "block");

                }
            }
            sqlCnn.Close();
        }
    }
   
}
