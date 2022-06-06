<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Asistencia tallerista.aspx.cs" Inherits="Asistencia_tallerista" MasterPageFile="~/Pages/MasterPage.master" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .nuevoEstilo1 {
            background-image: url('Imagenes/MiCentro LOGO_Página_01.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center top;
        }
    </style>
</head>
<body class="nuevoEstilo1">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Ingresa asistencia tallerista</strong></div>
        <p>
            Nombre tallerista
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="nom_tallerista" DataValueField="id_tallerista">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT * FROM [Tallerista]"></asp:SqlDataSource>
            <br />
        </p>
        <table class="auto-style2">
            <tr>
                <td>
                    <table class="auto-style2">
                        <tr>
                            <td>Asistencia:<asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnDayRender="Calendar1_DayRender">
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                </asp:Calendar>
                            </td>
                            <td>Falta:<asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnDayRender="Calendar2_DayRender">
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                </asp:Calendar>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="id_tallerista" HeaderText="id_tallerista" SortExpression="id_tallerista" />
                                        <asp:BoundField DataField="nom_tallerista" HeaderText="nom_tallerista" SortExpression="nom_tallerista" />
                                        <asp:BoundField DataField="dia_asis" HeaderText="dia_asis" SortExpression="dia_asis" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="Asistencia_Tallerista" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="id_tallerista" PropertyName="SelectedValue" Type="Int32" />
                                        <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="dia_asis" PropertyName="SelectedDate" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="id_tallerista" HeaderText="id_tallerista" SortExpression="id_tallerista" />
                                        <asp:BoundField DataField="nom_tallerista" HeaderText="nom_tallerista" SortExpression="nom_tallerista" />
                                        <asp:BoundField DataField="dia_falt" HeaderText="dia_falt" SortExpression="dia_falt" />
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
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="falta_taller" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="id_tallerista" PropertyName="SelectedValue" Type="Int32" />
                                        <asp:ControlParameter ControlID="Calendar2" DbType="Date" Name="dia_falt" PropertyName="SelectedDate" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            Nombre tallerista
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="nom_tallerista" DataValueField="id_tallerista">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT * FROM [Tallerista]"></asp:SqlDataSource>
        </p>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id_tallerista" HeaderText="id_tallerista" SortExpression="id_tallerista" />
                <asp:BoundField DataField="nom_tallerista" HeaderText="nom_tallerista" SortExpression="nom_tallerista" />
                <asp:BoundField DataField="dia_asis" HeaderText="dia_asis" SortExpression="dia_asis" />
                <asp:BoundField DataField="dia_falt" HeaderText="dia_falt" SortExpression="dia_falt" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="Asistencia_faltas_talleristas" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="id_tallerista" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Regresar" />
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>

