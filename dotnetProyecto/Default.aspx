<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Informacion talleres</strong></div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_taller" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id_taller" HeaderText="id_taller" ReadOnly="True" SortExpression="id_taller" />
                <asp:BoundField DataField="nom_taller" HeaderText="nom_taller" SortExpression="nom_taller" />
                <asp:BoundField DataField="hora_taller" HeaderText="hora_taller" SortExpression="hora_taller" />
                <asp:BoundField DataField="id_tallerista" HeaderText="id_tallerista" SortExpression="id_tallerista" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT * FROM [Taller]"></asp:SqlDataSource>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Regresar" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
