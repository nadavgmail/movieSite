using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;

public partial class admin_Addjob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (!IsValid)
            return;
        string conStr = ConfigurationManager.ConnectionStrings["Moavjobs"].ConnectionString;
        OleDbConnection con = new OleDbConnection(conStr);
        string sql = string.Format("INSERT INTO jobofer(job,email,fax) VALUES ('{0}','{1}','{2}')", txtdescription.Text, txtmail.Text, txtfax.Text);
        OleDbCommand command = new OleDbCommand(sql, con);

        try
        {
            con.Open();
            command.ExecuteNonQuery();
        }
        catch
        {
            lblerror.Text = "בעיה בבסיס הנתונים ";
        }
        finally
        {
            con.Close();
            Server.Transfer("Addjob.aspx");
        }
    }
    protected void btndisconnect_Click(object sender, EventArgs e)
    {
        FormsAuthentication.RedirectToLoginPage();
        FormsAuthentication.SignOut();
        Session.Abandon();
    }
}
