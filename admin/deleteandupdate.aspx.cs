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
public partial class admin_deleteandupdate : System.Web.UI.Page
{
   // OleDbDataReader reader = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
      
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        getjos alljobs = new getjos();
        string jobid = GridView1.DataKeys[e.RowIndex].Value.ToString();
        alljobs.deletejobs(jobid);
        Response.Redirect("deleteandupdate.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btndisconnect_Click(object sender, EventArgs e)
    {
        FormsAuthentication.RedirectToLoginPage();
        FormsAuthentication.SignOut();
        Session.Abandon();
    }
}
