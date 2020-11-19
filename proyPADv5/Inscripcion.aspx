<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Inscripcion.aspx.cs" Inherits="proyPADv5.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 100%;
            height: 678px;
        }
        .auto-style16 {
            width: 515px;
        }
        .auto-style19 {
            width: 515px;
            height: 37px;
        }
        .auto-style20 {
            height: 37px;
        }
        .auto-style21 {
            width: 515px;
            height: 26px;
        }
        .auto-style22 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2"   ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="background-color: bisque">

    
    &nbsp; <table class="auto-style12">
        <tr>
            <td class="auto-style16">&nbsp;DATOS ALUMNO&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp; Apellido&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtApellidoAlumno" runat="server" Width="145px"></asp:TextBox>
            </td>
            <td class="auto-style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;Nombre&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtNombreAlumno" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            </td>
            <td>
                Nivel&nbsp;
                <asp:DropDownList ID="cbxNiveles" runat="server" Height="34px" Width="174px" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="idNivel">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT * FROM [Nivel]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                &nbsp; Dni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtDniAlumno" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style20">
                Curso
                <asp:DropDownList ID="cbxCurso" runat="server" Height="35px" Width="171px" DataSourceID="SqlDataSource3" DataTextField="identificador" DataValueField="identificador">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Database2ConnectionString %>" SelectCommand="SELECT * FROM [Curso]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                &nbsp;
                Fecha de nacimiento<br />
                <asp:Calendar ID="FechaNac" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">DATOS TUTOR</td>
            <td>&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;
                Dni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txtDniTutor" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;
                Apellido&nbsp;
                <asp:TextBox ID="txtApellidoTutor" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;
                Nombre&nbsp;
                <asp:TextBox ID="txtNombreTutor" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnInscribir" runat="server" CausesValidation="False" Text="Inscribir" Width="150px" OnClick="btnInscribir_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
    </asp:Content>