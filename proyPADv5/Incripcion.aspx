<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Incripcion.aspx.cs" Inherits="proyectoPADv4.Incripcion" %>

<script runat="server">

    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 100%;
            height: 465px;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12">
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
                &nbsp;&nbsp; Nombre&nbsp;&nbsp;
                <asp:TextBox ID="txtNombreAlumno" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            </td>
            <td>
                Nivel&nbsp;
                <asp:DropDownList ID="cbxNiveles" runat="server" Height="18px" Width="174px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                &nbsp;&nbsp; Dni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtDniAlumno" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style20">
                Curso
                <asp:DropDownList ID="cbxCurso" runat="server" Height="19px" Width="171px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                Fecha de nacimiento<br />
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">DATOS TUTOR</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                Dni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtDniTutor" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                Apellido&nbsp;
                <asp:TextBox ID="txtApellidoTutor" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                Nombre&nbsp;
                <asp:TextBox ID="txtNombreTutor" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnInscribir" runat="server" Text="Inscribir" Width="187px" OnClick="btnInscribir_Click1" />
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
</asp:Content>
