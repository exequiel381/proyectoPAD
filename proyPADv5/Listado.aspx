<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Listado.aspx.cs" Inherits="proyPADv5.Listado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button3" runat="server" Text="Filtrar" Width="138px" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem>2018</asp:ListItem>
    <asp:ListItem>2019</asp:ListItem>
    <asp:ListItem>2020</asp:ListItem>
    <asp:ListItem>2021</asp:ListItem>
    <asp:ListItem>2022</asp:ListItem>
    <asp:ListItem>2023</asp:ListItem>
</asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="db" DataTextField="identificador" DataValueField="identificador">
</asp:DropDownList>
<asp:SqlDataSource ID="db" runat="server" ConnectionString="<%$ ConnectionStrings:Database2ConnectionString2 %>" SelectCommand="SELECT [identificador] FROM [Curso]" OnSelecting="db_Selecting"></asp:SqlDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" Height="387px" Width="938px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<br />
&nbsp;
</asp:Content>
