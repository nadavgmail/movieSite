<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changpassword.aspx.cs" Inherits="admin_changpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <a href="Addjob.aspx">הוספת עבודה</a></td>
            <td align="right">
                <a href="deleteandupdate.aspx">מחיקה ועידכון משרות</a></td>
        </tr>
    </table>
    <br /><br /><br />
    <div>
    <table align="center">
    <tr>
    <td>
        &nbsp;</td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtpassword" ErrorMessage="חובה להזין סיסמא" 
                ValidationGroup="password"></asp:RequiredFieldValidator>
        </td><td>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="סיסמא"></asp:Label>
        </td>
    </tr>
    <tr>
    <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="הסיסמאות אינן זהות" ControlToCompare="txtpassword" 
                ControlToValidate="txtconfirmpassword" ValidationGroup="password"></asp:CompareValidator></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtconfirmpassword" 
            ErrorMessage="חובה להזין אימות סיסמא" Display="Dynamic" 
            ValidationGroup="password"></asp:RequiredFieldValidator>
        </td><td>
            <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
        </td><td>
            <asp:Label ID="Label2" runat="server" Text="אשר סיסמא"></asp:Label>
        </td>
        
    </tr>
    </table>
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <div align="center"><asp:Button ID="btnchangepassword" runat="server" 
            Text="שנה סיסמא" onclick="btnchangepassword_Click" ValidationGroup="password" /></div>
    
        <div align="center"><asp:Label ID="lblconfirm" runat="server" Text=""></asp:Label></div>
    
    </form>
</body>
</html>
