using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebForm3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString[0] != "eloss")
        {
           
            MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
            Queue queue = new Queue();
            string qs_CANId = Request.QueryString[0];

            queue.Enqueue(new MySQLParam("@ido", qs_CANId));
            DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_print", queue);
            sqlCnn.Close();
            Label1.Text = dt_Results.Rows[0][0].ToString();
            Label2.Text = dt_Results.Rows[0][1].ToString();

            Label3.Text = dt_Results.Rows[0][2].ToString();

            Label4.Text = dt_Results.Rows[0][3].ToString();

            Label5.Text = dt_Results.Rows[0][4].ToString();
            Label11.Text = dt_Results.Rows[0][5].ToString();
        }
        else
        {
            MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);

            Queue queue = new Queue();
            string qs_CANId = Request.QueryString[1];

            queue.Enqueue(new MySQLParam("@ido", qs_CANId));
            DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_print", queue);

            Label1.Text = dt_Results.Rows[0][0].ToString();
            Label2.Text = dt_Results.Rows[0][1].ToString();

            Label3.Text = dt_Results.Rows[0][2].ToString();

            Label4.Text = dt_Results.Rows[0][3].ToString();

            Label5.Text = dt_Results.Rows[0][4].ToString();
            Label11.Text = dt_Results.Rows[0][5].ToString();

            hh.Style.Add("display", "block");
            hhh.Style.Add("display", "block");
            queue = new Queue();
            qs_CANId = Request.QueryString[2];
            queue.Enqueue(new MySQLParam("@ido", qs_CANId));
            dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_print", queue);
            sqlCnn.Close();

            Label6.Text = dt_Results.Rows[0][0].ToString();
            Label7.Text = dt_Results.Rows[0][1].ToString();

            Label8.Text = dt_Results.Rows[0][2].ToString();

            Label9.Text = dt_Results.Rows[0][3].ToString();

            Label10.Text = dt_Results.Rows[0][4].ToString();
            Label12.Text = dt_Results.Rows[0][5].ToString();


        }

    }
}