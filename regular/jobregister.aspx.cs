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

public partial class jobregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnconnect_Click(object sender, EventArgs e)
    {
       if (!IsValid)
            return;
        users users = new users();
        if (!users.getUserNameAndPassword(txtUserName.Text, txtpassword.Text))
        {
            lblconfirm.Text = "שם משתמש או סיסמא שגויים";
            return;
        }
        FormsAuthentication.RedirectFromLoginPage("admin", false);

    }
}
