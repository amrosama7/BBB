using MySql.Data.MySqlClient;
using System.Collections;
using System.Data;



public static class MySQLExecute
{
    public static MySqlConnection OpenConnection(string ConnectionString)
    {
        try
        {
            MySqlConnection ConToOpen = new MySqlConnection(ConnectionString);
            ConToOpen.Open();

            return ConToOpen;
        }
        catch { return null; }
    }

    public static bool ExecuteNonQuery(MySqlConnection MySQLCon, string MySQLCmd, Queue ParamList)
    {
        try
        {
            MySqlCommand MySQLCom = new MySqlCommand();
            if (MySQLCmd.Contains("CALL"))
                MySQLCmd += "(";

            if (ParamList != null)
            {
                int QCount = ParamList.Count;
                for (int i = 0; i < QCount; i++)
                {
                    MySQLParam SQLPar = (MySQLParam)ParamList.Dequeue();
                    MySQLCom.Parameters.AddWithValue(SQLPar.ParamaterName, SQLPar.ParamaterValue);

                    MySQLCmd += SQLPar.ParamaterName;
                    if (i < QCount - 1)
                        MySQLCmd += ", ";
                }
            }

            if (MySQLCmd.Contains("CALL"))
                MySQLCmd += ")";

            MySQLCom.Connection = MySQLCon;
            MySQLCom.CommandText = MySQLCmd;
            MySQLCom.ExecuteNonQuery();

            return true;
        }
        catch { return false; }
    }

    public static DataTable ExecuteReturn(MySqlConnection MySQLCon, string MySQLCmd, Queue ParamList)
    {
        try
        {
            DataTable DT_Results = new DataTable();
            MySqlCommand MySQLCom = new MySqlCommand();

            MySQLCmd += "(";

            if (ParamList != null)
            {
                int QCount = ParamList.Count;
                for (int i = 0; i < QCount; i++)
                {
                    MySQLParam SQLPar = (MySQLParam)ParamList.Dequeue();
                    MySQLCom.Parameters.AddWithValue(SQLPar.ParamaterName, SQLPar.ParamaterValue);

                    MySQLCmd += SQLPar.ParamaterName;
                    if (i < QCount - 1)
                        MySQLCmd += ", ";
                }
            }

            MySQLCmd += ")";

            MySQLCom.Connection = MySQLCon;
            MySQLCom.CommandText = MySQLCmd;
            MySQLCom.CommandTimeout = int.MaxValue;
            MySqlDataReader MySQLReader = MySQLCom.ExecuteReader();
            DT_Results.Load(MySQLReader);

            return DT_Results;
        }
        catch { return null; }
    }

    public static object ExecuteScalar(MySqlConnection MySQLCon, string MySQLCmd, Queue ParamList)
    {
        try
        {
            MySqlCommand MySQLCom = new MySqlCommand();

            MySQLCmd += "(";

            if (ParamList != null)
            {
                int QCount = ParamList.Count;
                for (int i = 0; i < QCount; i++)
                {
                    MySQLParam SQLPar = (MySQLParam)ParamList.Dequeue();
                    MySQLCom.Parameters.AddWithValue(SQLPar.ParamaterName, SQLPar.ParamaterValue);

                    MySQLCmd += SQLPar.ParamaterName;
                    if (i < QCount - 1)
                        MySQLCmd += ", ";
                }
            }

            MySQLCmd += ")"; 

            MySQLCom.Connection = MySQLCon;
            MySQLCom.CommandText = MySQLCmd;
            object scalarValue = MySQLCom.ExecuteScalar();

            return scalarValue;
        }
        catch { return null; }
    }

    public static bool CloseConnection(MySqlConnection ConToClose)
    {
        try { ConToClose.Close(); return true; }
        catch { return false; }
    }
}

public class MySQLParam
{
    public MySQLParam(string ParamName, string ParamValue)
    {
        ParamaterName = ParamName;
        ParamaterValue = ParamValue;
    }

    public string ParamaterName;
    public string ParamaterValue;
}