<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteandupdate.aspx.cs" Inherits="admin_deleteandupdate" %>

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
<body >

    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                
        <asp:LinkButton ID="btndisconnect" runat="server" onclick="btndisconnect_Click">התנתק</asp:LinkButton>
                    
            <td>
                <a href="changpassword.aspx">שינוי שם משתמש וסיסמא</a></td>
            <td>
                <a href="Addjob.aspx">הוספת עבודה</a>
        </tr>
    </table>
<br />
<br />

    <div align="center"><asp:Label ID="Label3" runat="server" Text="עידכון מחיקה והוספת רשומה" 
        Font-Size="XX-Large" ForeColor="#660033"></asp:Label></div>
    <br /><br />
    <div align="center"><asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="deletejobs" SelectMethod="getAlljobs" 
        TypeName="getjos" UpdateMethod="updatejob">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="String"  />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="job" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" 
            onrowdeleting="GridView1_RowDeleting" DataSourceID="ObjectDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Width="289px" 
            DataKeyNames="Id">
            <RowStyle ForeColor="#000066" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:TemplateField HeaderText="Job" SortExpression="Job">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Job") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Height="69px" 
                            Text='<%# Bind("Job") %>' TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="חובה להכניס ערך"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="פורמט לא חוקי של דואר" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:GridView></div>
    <br /><br />
   
   
    <div align="center">
    </div>
    </form>
   
</body>
</html>
