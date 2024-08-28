<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="prueba.IniciarSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <header style="text-align:center; font-size: 60px; color: #5f0e82;">Inicia Sesión</header>
        <br />
        <br />
    <div style="text-align:center; height: 150px;">
        <asp:Label runat="server" style="text-align:center; font-size: 20px; color: #696969; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ">Correo electronico</asp:Label>
        <br />
        <asp:TextBox ID="TxtCorreo" runat="server" Width="188px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Contraseña" style="text-align:center; font-size: 20px; color: #696969; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif"></asp:Label>
        <br />
        <asp:TextBox ID="TxtContraseña" runat="server" TextMode="Password" Width="140px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BtnIniSesion" runat="server" Text="Ingresar" Width="160px" Style="background-color: #800080;color: white;" Height="39px" OnClick="BtnIniSesion_Click"/>
    </div>
    </form>
    </body>
</html>
