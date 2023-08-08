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
public partial class jobs : System.Web.UI.Page
{
    OleDbDataReader reader = null;
    protected void Page_Load(object sender, EventArgs e)
    {

        string constr = ConfigurationManager.ConnectionStrings["Moavjobs"].ConnectionString;
        OleDbConnection con = new OleDbConnection(constr);
        con.Open();
        getjos getalljobs = new getjos();
        reader = getalljobs.getAlljobs(con);
        jobsGridView.DataSource = reader;
        jobsGridView.DataBind();
        reader.Close();
        con.Close();
        
        
        

    }

    protected void jobsGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void jobsGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType != DataControlRowType.DataRow)
            return;


        TextBox txt = (TextBox)e.Row.FindControl("txt2");
        txt.Text = (reader["job"]).ToString();
        
    }
    protected void jobsGridView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
