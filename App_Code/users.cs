using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;
/// <summary>
/// Summary description for users
/// </summary>
public class users
{
	public users()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool getUserNameAndPassword(string userName,string password)
    {
        string constr = ConfigurationManager.ConnectionStrings["Moavjobs"].ConnectionString;
        OleDbConnection con = new OleDbConnection(constr);
        string sql = "select count(*) from users where username_=@myusernam and password_=@mypassword";
        OleDbCommand com = new OleDbCommand(sql, con);
        com.Parameters.Add("@myusernam", OleDbType.VarChar, 20);
        com.Parameters.Add("@mypassword", OleDbType.VarChar, 20);
        com.Parameters["@myusernam"].Value = userName;
        com.Parameters["@mypassword"].Value = password;
        con.Open();
        int count = (int)com.ExecuteScalar();
        con.Close();
        if (count == 0)
            return false;
        return true;

    }
    public void changePassword(string newpassword)
    {
        string constr = ConfigurationManager.ConnectionStrings["Moavjobs"].ConnectionString;
        OleDbConnection con = new OleDbConnection(constr);
        string sql = string.Format("update users set password_='{0}'", newpassword);
       // string sql = String.Format("UPDATE jobofer SET email='{0}',fax='{1}',job='{2}' WHERE id={3}", email, fax, job, id);
        OleDbCommand com = new OleDbCommand(sql, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
}
