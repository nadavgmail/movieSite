<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="jobs.aspx.cs" Inherits="jobs" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div align="center" >
        <asp:GridView ID="jobsGridView" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" GridLines="Horizontal" 
            onrowdatabound="jobsGridView_RowDataBound" 
            onrowediting="jobsGridView_RowEditing" BackColor="White" 
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
            onselectedindexchanged="jobsGridView_SelectedIndexChanged">
            <RowStyle BackColor="White" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="email" HeaderText="כתובת דואר אלקטרוני" 
                    SortExpression="email" />
                <asp:BoundField DataField="fax" HeaderText="פקס" SortExpression="fax" />
                <asp:TemplateField HeaderText="תאור">
                    <ItemTemplate>
                        <asp:TextBox ID="txt2" runat="server" Height="42px" TextMode="MultiLine" 
                            Width="158px" Font-Bold="True" ForeColor="#CC0000" ReadOnly="True" 
                            style="margin-right: 0px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataTextField="email" HeaderText="דואר אלקטרוני" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

</asp:Content>

