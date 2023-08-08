<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="connectus.aspx.cs" Inherits="connectus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
<table align="center">
           <tr>
               <td>
                   <asp:Label ID="lblsubject" runat="server" Text="נושא" ForeColor="Red"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox>
               </td>
               <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                       ErrorMessage="חובה להכניס נושא" ControlToValidate="txtsubject" 
                       ValidationGroup="vlidatemail">*</asp:RequiredFieldValidator>
                   </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblcontent" runat="server" Text="תוכן" ForeColor="Red"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtcontent" runat="server" Height="90px" TextMode="MultiLine"></asp:TextBox>
               </td>
               <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                       ErrorMessage="חובה להכניס תוכן" ControlToValidate="txtcontent" 
                       ValidationGroup="vlidatemail">*</asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblname" runat="server" Text="שם" ForeColor="Red"></asp:Label>
               </td>
               
               <td>
                   <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
               </td>
               <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                       ErrorMessage="חובה להכניס שם" ControlToValidate="txtname" 
                       ValidationGroup="vlidatemail">*</asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblemail" runat="server" Text="כתובת דואר אלקטרוני אופציונלי " 
                       ForeColor="Red"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
               </td>
               <td>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                       ErrorMessage="כתובת דואר אלקטרוני שגויה" ControlToValidate="txtemail" 
                       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                       ValidationGroup="vlidatemail">*</asp:RegularExpressionValidator>
               </td>
               
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblphone" runat="server" Text="טלפון:הכנס מספר ללא מקפים" ForeColor="Red"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
               </td>
               <td>
                   <asp:CustomValidator ID="CustomValidator1" runat="server" 
                       ErrorMessage="מספר טלפון שגוי" ControlToValidate="txtphone" 
                       onservervalidate="CustomValidator1_ServerValidate" 
                       ValidationGroup="vlidatemail" ClientValidationFunction="checkphone">*</asp:CustomValidator>
               </td>
               <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                       ErrorMessage="חובה להכניס מספר טלפון" ControlToValidate="txtphone" 
                       ValidationGroup="vlidatemail">*</asp:RequiredFieldValidator>
               </td>
               
           </tr>
       </table>
       <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
    ShowMessageBox="True" ShowSummary="False" ValidationGroup="vlidatemail" />
    <div align="center"><asp:Button ID="btnsend" runat="server" Text="שלח דואר" 
            onclick="btnsend_Click" ValidationGroup="vlidatemail" /></div>
            
    </asp:Content>

