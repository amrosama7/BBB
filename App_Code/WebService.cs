using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }
    [WebMethod]
    public void edit_U()
    {
        System.Collections.Specialized.NameValueCollection editParams = this.Context.Request.Form;
        string colName = editParams.Keys[0];
        string newVal = editParams[0];
        string tbleId = editParams[1];
        if (colName == "amount")
        {
            MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
            Queue queue = new Queue();
            queue.Enqueue(new MySQLParam("@u", tbleId));

            queue.Enqueue(new MySQLParam("@a", newVal));
            MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL ae", queue);
            sqlCnn.Close();
        }

    }
    [WebMethod]
    public void edit_F()
    {
        System.Collections.Specialized.NameValueCollection editParams = this.Context.Request.Form;
        string colName = editParams.Keys[0];
        string newVal = editParams[0];
        string tbleId = editParams[1];
        if (colName == "M1")
        {
            MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
            Queue queue = new Queue();


            queue.Enqueue(new MySQLParam("@ido", tbleId));

            queue.Enqueue(new MySQLParam("@stat", newVal));
            MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL edit_stat", queue);
            sqlCnn.Close();

        }
        else
        {
            if (colName == "name" || colName == "address" || colName == "phone" || colName == "amount")
            {
                MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
                Queue queue = new Queue();


                queue.Enqueue(new MySQLParam("@ido", tbleId));

                queue.Enqueue(new MySQLParam("@stat", newVal));
                MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL edit_" + colName + colName[colName.Length - 1], queue);
                sqlCnn.Close();
            }
            else
            {
                MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
                Queue queue = new Queue();


                queue.Enqueue(new MySQLParam("@ido", tbleId));

                queue.Enqueue(new MySQLParam("@stat", newVal));
                MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL edit_comment", queue);
                sqlCnn.Close();

            }

        }
    }
    [WebMethod]
    public void edit_FF()
    {
        System.Collections.Specialized.NameValueCollection editParams = this.Context.Request.Form;
        string colName = editParams.Keys[0];
        string newVal = editParams[0];
        string tbleId = editParams[1];
        if (colName == "name" || colName == "address" || colName == "phone" || colName == "description" || colName == "amount")
        {
            MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
            Queue queue = new Queue();


            queue.Enqueue(new MySQLParam("@ido", tbleId));

            queue.Enqueue(new MySQLParam("@stat", newVal));
            MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL edit_" + colName, queue);
            sqlCnn.Close();
        }
    }

    [WebMethod]
    public void Delete(string id)
    {

        if (id != null)
        {
            MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
            Queue queue = new Queue();


            queue.Enqueue(new MySQLParam("@ido", id));


            MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL delete_ship", queue);
            sqlCnn.Close();
        }


    }
    [WebMethod]
    public void Delete3(string id)
    {

        if (id != null)
        {
            MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
            Queue queue = new Queue();


            queue.Enqueue(new MySQLParam("@ido", id));


            MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL delete_shipa", queue);
            sqlCnn.Close();
        }


    }
    [WebMethod]
    public void Delete2(string id)
    {

        if (id != null)
        {
            MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
            Queue queue = new Queue();


            queue.Enqueue(new MySQLParam("@ido", id));


            MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL delete_user", queue);
            sqlCnn.Close();
        }


    }
    [WebMethod]
    public void done(string id)
    {
        MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);

        Queue queue = new Queue();
        queue.Enqueue(new MySQLParam("@ido", id));
        MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL done", queue);
        sqlCnn.Close();


    }
    [WebMethod]
    public void searchu(string id, string awb, string name, string status, string datef, string datet)
    {

    }
    [WebMethod]
    public void get_rows(string id, string name, string u, string awb, string uname, string status, string datef, string datet)
    {



        //MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);

        //if (datef == "" && datet == "" && name == "" && uname == "" && status == "" && awb == "")
        //{
        //    Queue queue = new Queue();
        //    queue.Enqueue(new MySQLParam("@ton", name));
        //    queue.Enqueue(new MySQLParam("@u", u));
        //    DataTable dt_Results;
        //    JQGridResults results;
        //    dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_all_ship", queue);


        //    sqlCnn.Close();
        //    int count = dt_Results.Rows.Count;
        //    results = new JQGridResults();
        //    results.rows = new JQGridRow[count];
        //    int count_col = dt_Results.Columns.Count;


        //    for (int i = 0; i < count; i++)
        //    {
        //        results.rows[i].id = dt_Results.Rows[i][1].ToString();
        //        results.rows[i].cell = new string[count_col];
        //        // results.rows[i].cell[count_col - 1] = "<input type='button' style= 'cursor: pointer;'    onclick='add(" + dt_Results.Rows[i][0].ToString() + ")' value='show'  />";
        //        //results.rows[i].cell[count_col] = "<input type='button' style= 'cursor: pointer;'  onclick='addd(" + dt_Results.Rows[i][0].ToString() + ")' value='print'  />";
        //        //results.rows[i].cell[0] = dt_Results.Rows[i][2].ToString();
        //        //results.rows[i].cell[1] = dt_Results.Rows[i][0].ToString();
        //        //results.rows[i].cell[2] = dt_Results.Rows[i][1].ToString();

        //        for (int j = 0; j < count_col; j++)
        //        {

        //            //if (j == 7) {
        //            //    sss = double.Parse(dt_Results.Rows[i][j].ToString());
        //            //}
        //            results.rows[i].cell[j] = dt_Results.Rows[i][j].ToString();



        //        }



        //    }




        //    this.Context.Response.Write(new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(results));
        //}
        //else
        //{
        // if (datef == "" && datet == "")
        // {
        //     Queue queue = new Queue();
        //     queue.Enqueue(new MySQLParam("@ton", name));
        //     queue.Enqueue(new MySQLParam("@u", u));
        //     queue.Enqueue(new MySQLParam("@tonu", uname));
        //     queue.Enqueue(new MySQLParam("@awbo", awb));

        //     queue.Enqueue(new MySQLParam("@statos", status));
        //     DataTable dt_Results;
        //     JQGridResults results;
        //     dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_all_ship2", queue);


        //     sqlCnn.Close();
        //     int count = dt_Results.Rows.Count;
        //     results = new JQGridResults();
        //     results.rows = new JQGridRow[count];
        //     int count_col = dt_Results.Columns.Count;


        //     for (int i = 0; i < count; i++)
        //     {
        //         results.rows[i].id = dt_Results.Rows[i][1].ToString();
        //         results.rows[i].cell = new string[count_col];
        //         // results.rows[i].cell[count_col - 1] = "<input type='button' style= 'cursor: pointer;'    onclick='add(" + dt_Results.Rows[i][0].ToString() + ")' value='show'  />";
        //         //results.rows[i].cell[count_col] = "<input type='button' style= 'cursor: pointer;'  onclick='addd(" + dt_Results.Rows[i][0].ToString() + ")' value='print'  />";
        //         //results.rows[i].cell[0] = dt_Results.Rows[i][2].ToString();
        //         //results.rows[i].cell[1] = dt_Results.Rows[i][0].ToString();
        //         //results.rows[i].cell[2] = dt_Results.Rows[i][1].ToString();

        //         for (int j = 0; j < count_col; j++)
        //         {

        //             //if (j == 7) {
        //             //    sss = double.Parse(dt_Results.Rows[i][j].ToString());
        //             //}
        //             results.rows[i].cell[j] = dt_Results.Rows[i][j].ToString();



        //         }



        //     }




        //     this.Context.Response.Write(new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(results));

        // }
        // else
        // {
        //     if (datet == "")
        //     {
        //         Queue queue = new Queue();
        //         queue.Enqueue(new MySQLParam("@ton", name));
        //         queue.Enqueue(new MySQLParam("@u", u));
        //         queue.Enqueue(new MySQLParam("@tonu", uname));
        //         queue.Enqueue(new MySQLParam("@awbo", awb));

        //         queue.Enqueue(new MySQLParam("@statos", status));
        //         queue.Enqueue(new MySQLParam("@datef", datef));
        //         DataTable dt_Results;
        //         JQGridResults results;
        //         dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_all_ship3", queue);


        //         sqlCnn.Close();
        //         int count = dt_Results.Rows.Count;
        //         results = new JQGridResults();
        //         results.rows = new JQGridRow[count];
        //         int count_col = dt_Results.Columns.Count;


        //         for (int i = 0; i < count; i++)
        //         {
        //             results.rows[i].id = dt_Results.Rows[i][1].ToString();
        //             results.rows[i].cell = new string[count_col];
        //             // results.rows[i].cell[count_col - 1] = "<input type='button' style= 'cursor: pointer;'    onclick='add(" + dt_Results.Rows[i][0].ToString() + ")' value='show'  />";
        //             //results.rows[i].cell[count_col] = "<input type='button' style= 'cursor: pointer;'  onclick='addd(" + dt_Results.Rows[i][0].ToString() + ")' value='print'  />";
        //             //results.rows[i].cell[0] = dt_Results.Rows[i][2].ToString();
        //             //results.rows[i].cell[1] = dt_Results.Rows[i][0].ToString();
        //             //results.rows[i].cell[2] = dt_Results.Rows[i][1].ToString();

        //             for (int j = 0; j < count_col; j++)
        //             {

        //                 //if (j == 7) {
        //                 //    sss = double.Parse(dt_Results.Rows[i][j].ToString());
        //                 //}
        //                 results.rows[i].cell[j] = dt_Results.Rows[i][j].ToString();



        //             }



        //         }




        //         this.Context.Response.Write(new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(results));

        //     }
        //     else
        //     {
        //         if (datef == "")
        //         {
        //             Queue queue = new Queue();
        //             queue.Enqueue(new MySQLParam("@ton", name));
        //             queue.Enqueue(new MySQLParam("@u", u));
        //             queue.Enqueue(new MySQLParam("@tonu", uname));
        //             queue.Enqueue(new MySQLParam("@awbo", awb));

        //             queue.Enqueue(new MySQLParam("@statos", status));
        //             queue.Enqueue(new MySQLParam("@datet", datet));
        //             DataTable dt_Results;
        //             JQGridResults results;
        //             dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_all_ship4", queue);


        //             sqlCnn.Close();
        //             int count = dt_Results.Rows.Count;
        //             results = new JQGridResults();
        //             results.rows = new JQGridRow[count];
        //             int count_col = dt_Results.Columns.Count;


        //             for (int i = 0; i < count; i++)
        //             {
        //                 results.rows[i].id = dt_Results.Rows[i][1].ToString();
        //                 results.rows[i].cell = new string[count_col];
        //                 // results.rows[i].cell[count_col - 1] = "<input type='button' style= 'cursor: pointer;'    onclick='add(" + dt_Results.Rows[i][0].ToString() + ")' value='show'  />";
        //                 //results.rows[i].cell[count_col] = "<input type='button' style= 'cursor: pointer;'  onclick='addd(" + dt_Results.Rows[i][0].ToString() + ")' value='print'  />";
        //                 //results.rows[i].cell[0] = dt_Results.Rows[i][2].ToString();
        //                 //results.rows[i].cell[1] = dt_Results.Rows[i][0].ToString();
        //                 //results.rows[i].cell[2] = dt_Results.Rows[i][1].ToString();

        //                 for (int j = 0; j < count_col; j++)
        //                 {

        //                     //if (j == 7) {
        //                     //    sss = double.Parse(dt_Results.Rows[i][j].ToString());
        //                     //}
        //                     results.rows[i].cell[j] = dt_Results.Rows[i][j].ToString();



        //                 }



        //             }




        //             this.Context.Response.Write(new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(results));

        //         }
        //         else
        //         {
        //             Queue queue = new Queue();
        //             queue.Enqueue(new MySQLParam("@ton", name));
        //             queue.Enqueue(new MySQLParam("@u", u));
        //             queue.Enqueue(new MySQLParam("@tonu", uname));
        //             queue.Enqueue(new MySQLParam("@awbo", awb));

        //             queue.Enqueue(new MySQLParam("@statos", status));
        //             queue.Enqueue(new MySQLParam("@datef", datef));
        //             queue.Enqueue(new MySQLParam("@datet", datet));
        //             DataTable dt_Results;
        //             JQGridResults results;
        //             dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_all_ship5", queue);


        //             sqlCnn.Close();
        //             int count = dt_Results.Rows.Count;
        //             results = new JQGridResults();
        //             results.rows = new JQGridRow[count];
        //             int count_col = dt_Results.Columns.Count;


        //             for (int i = 0; i < count; i++)
        //             {
        //                 results.rows[i].id = dt_Results.Rows[i][1].ToString();
        //                 results.rows[i].cell = new string[count_col];
        //                 // results.rows[i].cell[count_col - 1] = "<input type='button' style= 'cursor: pointer;'    onclick='add(" + dt_Results.Rows[i][0].ToString() + ")' value='show'  />";
        //                 //results.rows[i].cell[count_col] = "<input type='button' style= 'cursor: pointer;'  onclick='addd(" + dt_Results.Rows[i][0].ToString() + ")' value='print'  />";
        //                 //results.rows[i].cell[0] = dt_Results.Rows[i][2].ToString();
        //                 //results.rows[i].cell[1] = dt_Results.Rows[i][0].ToString();
        //                 //results.rows[i].cell[2] = dt_Results.Rows[i][1].ToString();

        //                 for (int j = 0; j < count_col; j++)
        //                 {

        //                     //if (j == 7) {
        //                     //    sss = double.Parse(dt_Results.Rows[i][j].ToString());
        //                     //}
        //                     results.rows[i].cell[j] = dt_Results.Rows[i][j].ToString();



        //                 }



        //             }




        //             this.Context.Response.Write(new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(results));

        //         }
        //     }

        // }
        //}

    }
    [WebMethod]
    public void add_row(string id, string init, string awb, string a, string b, string c, string d, string e, string f)
    {
        //MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
        //Queue queue = new Queue();
        //if (awb == "" || !(id.Equals("Palma",StringComparison.InvariantCultureIgnoreCase)))
        //{
        //    queue.Enqueue(new MySQLParam("@u", id));

        //    DataTable dt = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_last_id", queue);
        //    int xx = init.Length;
        //    string s = "";
        //    if(dt.Rows.Count!=0)
        //    s = dt.Rows[0][0].ToString();
        //    int number;
        //    if (s != "")
        //        number = int.Parse(s.Substring(xx)) + 1;
        //    else number = 1;
        //    awb = init + number;

        //}
        //queue = new Queue();
        //queue.Enqueue(new MySQLParam("@u", id));
        //queue.Enqueue(new MySQLParam("@a", a));
        //queue.Enqueue(new MySQLParam("@n", b));
        //queue.Enqueue(new MySQLParam("@p", c));
        //queue.Enqueue(new MySQLParam("@d", d));
        //queue.Enqueue(new MySQLParam("@c", e));
        //queue.Enqueue(new MySQLParam("@amoun", f));
        //queue.Enqueue(new MySQLParam("@awb", awb));


        //MySQLExecute.ExecuteNonQuery(sqlCnn, "CALL neworder2", queue);
        //sqlCnn.Close();




    }
    [WebMethod]
    public void get_rows2(string id, string name)
    {
        //MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);

        //Queue queue = new Queue();
        //queue.Enqueue(new MySQLParam("@ton", name));
        //DataTable dt_Results;
        //JQGridResults results;
        //dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_all_users", queue);
        //sqlCnn.Close();
        //int count = dt_Results.Rows.Count;
        //results = new JQGridResults();
        //results.rows = new JQGridRow[count];
        //int count_col = dt_Results.Columns.Count;

        //int coco = 0;
        //for (int i = 0; i < count; i++)
        //{
        //    results.rows[i].id = dt_Results.Rows[i][0].ToString();
        //    results.rows[i].cell = new string[count_col];
        //    coco = 0;
        //    for (int j = 0; j < (count_col); j++)
        //    {

        //        results.rows[i].cell[coco] = dt_Results.Rows[i][j].ToString();


        //        coco++;
        //    }
        //}
        //this.Context.Response.Write(new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(results));
    }
    [WebMethod]
    public void get_u_rows(string id, string awb, string name, string status, string datef, string datet)
    {


        //    MySqlConnection sqlCnn = MySQLExecute.OpenConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);
        //    if ( datef == "" && datet == "")
        //    {
        //        Queue queue = new Queue();

        //        queue.Enqueue(new MySQLParam("@user", id));

        //        queue.Enqueue(new MySQLParam("@ton", name));
        //        queue.Enqueue(new MySQLParam("@awbo", awb));

        //        queue.Enqueue(new MySQLParam("@statos", status));

        //        DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_user_ship", queue);
        //        sqlCnn.Close();
        //        int count = dt_Results.Rows.Count;
        //        JQGridResults results = new JQGridResults();
        //        results.rows = new JQGridRow[count];
        //        int count_col = dt_Results.Columns.Count;

        //        for (int i = 0; i < count; i++)
        //        {
        //            results.rows[i].id = dt_Results.Rows[i][0].ToString();
        //            results.rows[i].cell = new string[count_col];


        //            for (int j = 0; j < (count_col); j++)
        //            {



        //                results.rows[i].cell[j] = dt_Results.Rows[i][j].ToString();






        //            }
        //        }



        //        this.Context.Response.Write(new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(results));

        //    }
        //    else
        //    {
        //        if ( datet == "")
        //        {
        //            Queue queue = new Queue();

        //            queue.Enqueue(new MySQLParam("@user", id));

        //            queue.Enqueue(new MySQLParam("@ton", name));
        //            queue.Enqueue(new MySQLParam("@awbo", awb));

        //            queue.Enqueue(new MySQLParam("@statos", status));
        //            queue.Enqueue(new MySQLParam("@datef", datef));

        //            DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_user_ship_search", queue);
        //            sqlCnn.Close();
        //            int count = dt_Results.Rows.Count;
        //            JQGridResults results = new JQGridResults();
        //            results.rows = new JQGridRow[count];
        //            int count_col = dt_Results.Columns.Count;

        //            for (int i = 0; i < count; i++)
        //            {
        //                results.rows[i].id = dt_Results.Rows[i][0].ToString();
        //                results.rows[i].cell = new string[count_col];


        //                for (int j = 0; j < (count_col); j++)
        //                {



        //                    results.rows[i].cell[j] = dt_Results.Rows[i][j].ToString();






        //                }
        //            }



        //            this.Context.Response.Write(new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(results));

        //        }
        //        else
        //        {
        //            if(datef == "")
        //            {
        //                Queue queue = new Queue();

        //                queue.Enqueue(new MySQLParam("@user", id));

        //                queue.Enqueue(new MySQLParam("@ton", name));
        //                queue.Enqueue(new MySQLParam("@awbo", awb));

        //                queue.Enqueue(new MySQLParam("@statos", status));
        //                queue.Enqueue(new MySQLParam("@datet", datet));

        //                DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_user_ship_searcht", queue);
        //                sqlCnn.Close();
        //                int count = dt_Results.Rows.Count;
        //                JQGridResults results = new JQGridResults();
        //                results.rows = new JQGridRow[count];
        //                int count_col = dt_Results.Columns.Count;

        //                for (int i = 0; i < count; i++)
        //                {
        //                    results.rows[i].id = dt_Results.Rows[i][0].ToString();
        //                    results.rows[i].cell = new string[count_col];


        //                    for (int j = 0; j < (count_col); j++)
        //                    {



        //                        results.rows[i].cell[j] = dt_Results.Rows[i][j].ToString();






        //                    }
        //                }



        //                this.Context.Response.Write(new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(results));

        //            }
        //            else
        //            {
        //                Queue queue = new Queue();

        //                queue.Enqueue(new MySQLParam("@user", id));

        //                queue.Enqueue(new MySQLParam("@ton", name));
        //                queue.Enqueue(new MySQLParam("@awbo", awb));

        //                queue.Enqueue(new MySQLParam("@statos", status));
        //                queue.Enqueue(new MySQLParam("@datef", datef));
        //                queue.Enqueue(new MySQLParam("@datet", datet));

        //                DataTable dt_Results = MySQLExecute.ExecuteReturn(sqlCnn, "CALL get_user_ship_searchtot", queue);
        //                sqlCnn.Close();
        //                int count = dt_Results.Rows.Count;
        //                JQGridResults results = new JQGridResults();
        //                results.rows = new JQGridRow[count];
        //                int count_col = dt_Results.Columns.Count;

        //                for (int i = 0; i < count; i++)
        //                {
        //                    results.rows[i].id = dt_Results.Rows[i][0].ToString();
        //                    results.rows[i].cell = new string[count_col];


        //                    for (int j = 0; j < (count_col); j++)
        //                    {



        //                        results.rows[i].cell[j] = dt_Results.Rows[i][j].ToString();






        //                    }
        //                }



        //                this.Context.Response.Write(new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(results));

        //            }
        //        }

        //    }
        //}
    }

    public struct JQGridResults
    {
        public JQGridRow[] rows;
    }
    public struct JQGridRow
    {
        public string id;
        public string[] cell;
    }
}

    

