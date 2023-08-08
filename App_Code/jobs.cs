using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
/// Summary description for jobs
/// </summary>
public class jobs
{
    string job;

    public string Job
    {
        get { return job; }
        set { job = value; }
    }
    string email;

    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    string fax;

    public string Fax
    {
        get { return fax; }
        set { fax = value; }
    }
    string id;

    public string Id
    {
        get { return id; }
        set { id = value; }
    }
    public jobs()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
