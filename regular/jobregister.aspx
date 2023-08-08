<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jobregister.aspx.cs" Inherits="jobregister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <br /> <br /> <br />
    <table align="center">
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUserName" ErrorMessage="חובה להכניס שם משתמש"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbluser" runat="server" Text="שם משתמש"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="חובה להכניס סיסמא" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblpassword" runat="server" Text="סיסמא"></asp:Label>
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    <br /> <br /> <br />
    <div align="center">
    <asp:Button ID="btnconnect" runat="server" Text="התחבר" 
            onclick="btnconnect_Click" /></div><br /><br />
    <div align="center"><asp:Label ID="lblconfirm" runat="server"></asp:Label></div>
    </form>
</body>
</html>
