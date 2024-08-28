<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="prueba.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><style>                         #form1 {
            position: relative;
                             top: 12px;
                             left: 1px;
                         }
        .top-right-button {
            position: absolute;
            top: 0px;
            right: -3px;
                             height: 20px;
                         }</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <header style="text-align:center; font-size: 60px; color: #5f0e82; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ">
        
        Bienvenidos a WePlot</header>
        <div>
            <asp:Label runat="server" style="text-align:center; font-size: 20px; color: #696969; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ">Nombres </asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" style="text-align:center; font-size: 20px; color: #696969; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif "> Apellidos</asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" style="text-align:center; font-size: 20px; color: #696969; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ">Correo electronico</asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" style="text-align:center; font-size: 20px; color: #696969; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ">Comida Favorita</asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" style="text-align:center; font-size: 20px; color: #696969; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ">Artista Favorito</asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" style="text-align:center; font-size: 20px; color: #696969; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ">Lugar Favorito</asp:Label>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" style="text-align:center; font-size: 20px; color: #696969; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ">Color Favorito</asp:Label>
            <br />




        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
        <asp:Button ID="Button1" runat="server" Text="Cerrar Sesión" Width="100px" CssClass="top-right-button" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
