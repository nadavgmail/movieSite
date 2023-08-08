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
using System.Web.UI.MobileControls;
using System.Collections.Generic;
/// <summary>
/// Summary description for getjos
/// </summary>
public class getjos
{
	public getjos()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public OleDbDataReader getAlljobs(OleDbConnection con)
    {
        
        OleDbDataReader reader = null;
        OleDbCommand com = new OleDbCommand("select * from jobofer", con);
        reader = com.ExecuteReader();
        return reader;
        
    }
    public jobs[] getAlljobs()
    {
        string constr = ConfigurationManager.ConnectionStrings["Moavjobs"].ConnectionString;
        OleDbConnection con = new OleDbConnection(constr);
        OleDbCommand com = new OleDbCommand("select * from jobofer", con);
        OleDbDataReader reader = null;
        try
        {
            con.Open();
            reader = com.ExecuteReader();
            List<jobs> j = new List<jobs>();
            jobs jobs = null;
            while (reader.Read())
            {
                jobs = new jobs();
                jobs.Email = (reader["email"].ToString());
                jobs.Id = (reader["id"].ToString());
                jobs.Fax = (reader["fax"].ToString());
                jobs.Job = (reader["job"].ToString());
                j.Add(jobs);
            }
            return j.ToArray();
        }
        finally
        {
            reader.Close();
            con.Close();
        }

    }
    //public OleDbDataReader getAlljobs()
    //{
    //    string constr = ConfigurationManager.ConnectionStrings["Moavjobs"].ConnectionString;
    //    OleDbConnection con = new OleDbConnection(constr);
    //    OleDbCommand com = new OleDbCommand("select * from jobofer", con);
    //    OleDbDataReader reader = null;
    //    try
    //    {
    //        con.Open();
    //        reader = com.ExecuteReader();
    //        return reader;
    //    }
    //    finally
    //    {
    //       // reader.Close();
    //       // con.Close();
    //    }
    //}
    public void deletejobs(string ID)
    {
        
        string constr=ConfigurationManager.ConnectionStrings["Moavjobs"].ConnectionString;
        OleDbConnection con = new OleDbConnection(constr);
        string sql = string.Format("delete from jobofer where ID={0}", ID);
        //string sql = string.Format("DELETE FROM Movies WHERE MoveiCode ={0}", movieCode);
        OleDbCommand com = new OleDbCommand(sql, con);
        con.Open();       
        com.ExecuteNonQuery();
        con.Close();
         //Response.Redirect("deletejobAndUpdate.aspx");
    }
    public void updatejob(string id,string email,string fax,string job)
    {
        string constr = ConfigurationManager.ConnectionStrings["Moavjobs"].ConnectionString;
        OleDbConnection con = new OleDbConnection(constr);
       // string sql = string.Format("UPDATE jobofer set  from jobofer where ID={0}", jobid);
        string sql = String.Format("UPDATE jobofer SET email='{0}',fax='{1}',job='{2}' WHERE id={3}", email, fax, job, id);
        OleDbCommand com = new OleDbCommand(sql, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
}
