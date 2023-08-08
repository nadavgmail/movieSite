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

public partial class admin_changpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchangepassword_Click(object sender, EventArgs e)
    {
        
        if (!IsValid)
            return;
        users users = new users();
        users.changePassword(txtpassword.Text);
        lblconfirm.Text = "הסיסמא שונתה בהצלחה";
        FormsAuthentication.RedirectToLoginPage();
        FormsAuthentication.SignOut();
        Session.Abandon();
        
    }
}
