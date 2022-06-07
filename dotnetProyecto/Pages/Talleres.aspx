<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master"
AutoEventWireup="true" CodeFile="Talleres.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  Runat="Server"
>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            text-decoration: underline;
            font-size: xx-large;
        }
        .nuevoEstilo1 {
            background-image: url('Imagenes/MiCentro LOGO_Página_01.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center top;
        }
        .auto-style2 {
            font-size: x-large;
            border-left: 0 solid #C0C0C0;
            border-right: 0 solid #A0A0A0;
            border-top: 0 solid #C0C0C0;
            border-bottom: 0 solid #A0A0A0;
            padding: 1px;
        }
    </style>

    <div class="auto-style1">
            <strong>Informacion talleres</strong></div>
        <table class="w-100">
            <tr>
                <td>
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
                </td>
                <td><span class="auto-style2">Agregar nuevo taller</span><br />
                    <br />
                    ID taller:
                    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    Nombre de taller:
                    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    Horario: <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    Nombre tallerista asignado:&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="nom_tallerista" DataValueField="id_tallerista">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT * FROM [Tallerista]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Guardar" />
                    <br />
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id_taller" DataSourceID="SqlDataSource4">
                        <Columns>
                            <asp:BoundField DataField="id_taller" HeaderText="id_taller" ReadOnly="True" SortExpression="id_taller" />
                            <asp:BoundField DataField="nom_taller" HeaderText="nom_taller" SortExpression="nom_taller" />
                            <asp:BoundField DataField="hora_taller" HeaderText="hora_taller" SortExpression="hora_taller" />
                            <asp:BoundField DataField="id_tallerista" HeaderText="id_tallerista" SortExpression="id_tallerista" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="insert into [dbo].[Taller]
	(
	id_taller,
	nom_taller,
	hora_taller,
	id_tallerista
	)

	values (@id_taller, @nom_taller, @hora_taller, @id_tallerista)

	SELECT *from Taller where nom_taller = @nom_taller">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox3" Name="id_taller" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="TextBox2" Name="nom_taller" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" DbType="Time" Name="hora_taller" PropertyName="Text" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="id_tallerista" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
                </td>
            </tr>
    </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT * FROM [Taller]"></asp:SqlDataSource>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Regresar" OnClick="Button1_Click" />
        </p>
</asp:Content>
