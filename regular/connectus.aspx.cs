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
//using System.Web.Mail;
using System.Net.Mail;
public partial class connectus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (!ckeckNumber())
            args.IsValid = false;
        else
            args.IsValid = true;
    }
    private bool ckeckNumber()
    {

        if (!(txtphone.Text.Length == 10 || txtphone.Text.Length == 9))
            return false;
        for (int i = 0; i < txtphone.Text.Length; i++)
        {
            if (!((char)(txtphone.Text[i]) >= 48 && (char)(txtphone.Text[i]) <= 57))
            {
                return false;
            }
        }
        return true;
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        
        if (!IsValid)
            return;
        sendMail(); 

    }
    private void sendMail() 
    {
        MailMessage message = new MailMessage("nadav.marcus@gmail.com", "nadav.marcus@gmail.com");      
        string totalMessage = txtcontent.Text + "  phone:" + txtphone.Text + " email" + txtemail.Text;
        message.Subject =txtsubject.Text;
        message.Body = totalMessage;
        SmtpClient client = new SmtpClient("mail.netvision.net.il", 25);
        //client.Host = "mail.netvision.net.il";       
       // client.Send(message);        
        client.Send(message);
        Server.Transfer("connectus.aspx");
       
    }
}
