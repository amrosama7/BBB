using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
                if (s == "cliento")
                {
                    account.InnerHtml = tkt.Name;
                    account.Attributes.Add("href", "users.aspx");

                }


            }
        }
       
       

    }
}