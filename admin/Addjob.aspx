<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addjob.aspx.cs" Inherits="admin_Addjob" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
    <form id="form1" runat="server">
<table class="style1">
    <tr>
        <td>
            <a href="changpassword.aspx">שינוי שם משתמש וסיסמא</a></td>
        <td align="right">
           <a href="deleteandupdate.aspx">מחיקה ועידכון משרות</a></td>
        <td align="left">
            <asp:LinkButton ID="btndisconnect" runat="server">התנתק</asp:LinkButton>
                </td>
    </tr>
</table>
<br />
 
        
        
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 365px;
        }
    </style>
</head>
<body dir=rtl >
    <div align="center">
    <br /><br /><br /><br /><br /><br />
        <asp:Label ID="Label1" runat="server" Text="הוספת משרה" Font-Size="XX-Large" ForeColor="#660033"></asp:Label>
    
    <br /><br />
    <table class="style1">
        <tr>
            <td>
                תיאור</td>
            <td class="style2">
                <asp:TextBox ID="txtdescription" runat="server" Height="94px" 
                    TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtdescription" ErrorMessage="חובה להכניס תיאור"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                דואר אלקטרוני</td>
            <td class="style2">
                <asp:TextBox ID="txtmail" runat="server" Width="293px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmail" ErrorMessage="פורמט הדואר שגוי" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                פקס</td>
            <td class="style2">
                <asp:TextBox ID="txtfax" runat="server" Width="291px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
       
            <br /><br />
    <asp:Button ID="Button1" runat="server" Text="הוסף מישרה" onclick="Button1_Click" /><br />
        <asp:Label ID="lblerror" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>

