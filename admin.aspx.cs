using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //FormsAuthenticationTicket tkt;
        //if (Request.Cookies[".ASPXFORMSDEMO"] != null)
        //{
        //    tkt = FormsAuthentication.Decrypt(Request.Cookies[".ASPXFORMSDEMO"].Value);
        //    if (tkt.Name == "loadbugs" && tkt.UserData == "adminooo")
        //    {
        //        account.InnerHtml = "loadbugs";
        //        account.Attributes.Add("href", "admin.aspx");
        //    }

        //    else
        //        Response.Redirect("Login.aspx", true);

        //}
        //else Response.Redirect("Login.aspx", true);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
        Queue queue = new Queue();
        queue.Enqueue(new MySQLParam("@c", TextBox1.Text));
        MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL addcode", queue);
        sqlCnn.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
        Queue queue = new Queue();
        queue.Enqueue(new MySQLParam("@u", "loadbugs"));
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
        queue.Enqueue(new MySQLParam("@ton", Label1.Text));
        queue.Enqueue(new MySQLParam("@u", Label2.Text));
        DataTable dt;

        dt = MySQLExecute.ExecuteReturn(sqlCnn, "CALL Download_Excel", queue);

        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);

        HttpContext.Current.Response.Clear();
        HttpContext.Current.Response.Buffer = true;
        HttpContext.Current.Response.Charset = "UTF-8";
        HttpContext.Current.Response.ContentEncoding = System.Text.Encoding.UTF8;
        Response.ContentEncoding = System.Text.Encoding.Unicode;
        Response.BinaryWrite(System.Text.Encoding.Unicode.GetPreamble());
        HttpContext.Current.Response.AddHeader("content-disposition", "attachment; filename= aaa.xls");

        HttpContext.Current.Response.ContentType = "application/vnd.ms-excel";


        System.IO.StringWriter stringWrite = new System.IO.StringWriter();

        System.Web.UI.HtmlTextWriter htmlWrite =
        new HtmlTextWriter(stringWrite);
        DataGrid grdExcel = new DataGrid();
        grdExcel.AllowPaging = false;
        grdExcel.DataSource = dt;
        grdExcel.DataBind();
        foreach (DataGridItem i in grdExcel.Items)
        {

            foreach (TableCell tc in i.Cells)
                tc.Attributes.Add("class", "text");

        }
        grdExcel.RenderControl(htmlWrite);
        string style = @"<style> .text { mso-number-format:\@; } </style> ";
        HttpContext.Current.Response.Write(style);
        HttpContext.Current.Response.Write(stringWrite.ToString());
        HttpContext.Current.Response.Flush();
        HttpContext.Current.Response.End();  

        //GridView GridView1 = new GridView();
        //GridView1.AllowPaging = false;
        //GridView1.DataSource = dt;
        //GridView1.DataBind();

        //Response.Clear();
        //Response.Buffer = true;
        //Response.AddHeader("content-disposition",
        // "attachment;filename=DataTable.xls");
        //Response.Charset = "UTF-8";
        //Response.ContentEncoding = System.Text.Encoding.UTF8;
        //Response.ContentType = "application/vnd.ms-excel";
        //StringWriter sw = new StringWriter();
        //HtmlTextWriter hw = new HtmlTextWriter(sw);

        //for (int i = 0; i < GridView1.Rows.Count; i++)
        //{
        //    //Apply text style to each Row
        //    GridView1.Rows[i].Attributes.Add("class", "textmode");
        //}
        //GridView1.RenderControl(hw);

        ////style to format numbers to string
        //string style = @"<style> .textmode { mso-number-format:\@; } </style>";
        //Response.Write(style);
        //Response.Output.Write(sw.ToString());
        //Response.Flush();
        //Response.End();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("Login.aspx", true);

    }
}