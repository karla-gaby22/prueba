<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="prueba.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <header style="text-align:center; font-size: 60px; color: #5f0e82; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ">
                
                Registrate a WePlot</header>
        <div style="width: 591px; height: 479px; font-family: 'malgun Gothic'; text-align: justify; margin-left: 403px; flex: 1;">
            
            <br />
            <br />
            <p style="width: 52px; height: 18px; margin-left: 36px; display: inline-block; color: #696969; font-family: 'Malgun Gothic'; font-weight: 700;">Nombre*</p>
<p style="width: 52px; height: 18px; margin-left: 188px; display: inline-block; color: #696969; font-family: 'malgun Gothic'; font-weight: 700;">Apellido</p>
            <br />

        <asp:TextBox ID="TxtNombre" runat="server" style="margin-left: 38px" Width="142px"></asp:TextBox>
        <asp:TextBox ID="TxtApellido" runat="server" style="margin-left: 61px" Width="142px"></asp:TextBox>
            <br />
      <br />
        <p style="width: 96px; height: 18px; margin-left: 36px; display: inline-block; font-family: 'malgun Gothic';color: #696969; font-weight: 700;";>Email*</p>
        <p style="width: 52px; height: 18px; margin-left: 140px;display: inline-block; font-family: 'malgun Gothic';color: #696969; font-weight: 700;";>Telefono*</p>
           <br />

            <asp:TextBox ID="TxtEmail" runat="server" style="margin-left: 38px" Width="149px"></asp:TextBox>
            <asp:TextBox ID="TxtTelefono" runat="server" style="margin-left: 49px" Width="122px" MaxLength="10"></asp:TextBox>
               <br /> 
            <p style="width: 52px; height: 18px; margin-left: 36px; font-family: 'malgun Gothic';color: #696969; font-weight: 700;"> Pais</p>
            <asp:TextBox ID="Pais" runat="server" style="margin-left: 36px"></asp:TextBox>
<br />
           <p style="width: 159px; height: 19px; margin-left: 37px; display: inline-block; font-family: 'malgun Gothic';color: #696969; font-weight: 700;">Artista favorito</p>

           <p style="width: 123px; height: 20px; margin-left: 75px; display: inline-block; font-family: 'malgun Gothic';color: #696969; font-weight: 700;">Comida favorita</p>
            <br />
            <asp:TextBox ID="TxtArtistaF" runat="server" style="margin-left: 38px"></asp:TextBox>
            <asp:TextBox ID="TxtComidaF" runat="server" style="margin-left: 61px"></asp:TextBox>
            <br />
            <br />

   <p style="width: 152px; height: 19px; margin-left: 37px; display: inline-block;font-family: 'malgun Gothic';color: #696969; font-weight: 700;">Lugar favorito</p>

<p style="width: 111px; height: 20px; margin-left: 83px; display: inline-block;font-family: 'malgun Gothic';color: #696969; font-weight: 700;">Color favorito</p>
 <br />
        <asp:TextBox ID="TxtLugarF" runat="server" style="margin-left: 36px" Width="168px"></asp:TextBox>
            <asp:TextBox ID="TxtColorF" runat="server" style="margin-left: 61px" Width="137px"></asp:TextBox>

            <br />

           <p style="width: 141px; height: 19px; margin-left: 37px; display: inline-block;font-family: 'malgun Gothic';color: #696969; font-weight: 700;">Contraseña</p>

<p style="width: 166px; height: 20px; margin-left: 95px; display: inline-block;font-family: 'malgun Gothic';color: #696969; font-weight: 700;">Confirmar contraseña</p>
 <br />
        <asp:TextBox ID="TxtContraseña" runat="server" style="margin-left: 38px" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="TxtConfirmaContra" runat="server" style="margin-left: 61px" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator  ID="CompareValidator1" runat="server" ControlToCompare="TxtContraseña" ControlToValidate="TxtConfirmaContra" ErrorMessage="Las contraseñas no coinciden." ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
            <br />


        <div style="margin-left: 62px;">
        <label for="uploadImg">
            <br />
            Subir imagen de perfil:</label>
        <input type="file" id="uploadImg" name="uploadImg" accept="image/png, image/jpeg, image/jpg, image/gif" />
    </div>
        <p>
        <asp:Button ID="btnUnirme" runat="server" Height="42px" Text="Unirme a WePlot" Width="133px" Style="background-color: #800080;color: white; margin-left: 202px;" OnClick="btnUnirme_Click"  />
        </p>  
            
            <asp:Label ID="Label3" runat="server" Text="¿Ya tienes cuenta?"></asp:Label>

            &nbsp;<asp:HyperLink ID="LinkIniciarSesion" runat="server" NavigateUrl="IniciarSesion.aspx">Inicia Sesion aqui</asp:HyperLink>

        </div>
        <p>
        
        </p>
    
    </form>

</body>
</html>
