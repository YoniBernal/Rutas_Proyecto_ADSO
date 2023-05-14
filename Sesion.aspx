<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sesion.aspx.cs" Inherits="SitioWebRutas.Sesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>


    <link href="Vista/CSS/login.css" rel="stylesheet" />

    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-wrap">
  <div class="login-html">
    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Ingresar</label>
    <input id="tab-2" type="radio" name="tab" class="sign-up"><label/ for="tab-2" class="tab">Registrarse</label>
    <div class="login-form">
      <div class="sign-in-htm">
        <div class="group">
          <label for="user" class="label">Correo electronico</label>
            <asp:TextBox ID="txtcorreo"  type="text" class="input"   runat="server"></asp:TextBox>
<%--            <input id="user" type="text" class="input">--%>
        </div>
        <div class="group">
          <label for="pass" class="label">Contraseña</label>
          <asp:TextBox ID="txtcontrasena"  type="text" class="input"   runat="server"></asp:TextBox>

        </div>



        <div class="group">
              <p>
      <asp:CheckBox ID="chkpaciente" runat="server"/>
    <label for="remember">Paciente</label>
  </p>
       <p>
      <asp:CheckBox ID="chkmedico" runat="server" />
    <label for="remember">Medico</label>
  </p>

        </div>



        <div class="group">
        </div>
        <div class="hr">

     <asp:Button ID="btnSesionIni" runat="server" Text="Sesion" OnClick="btnSesionIni_Click"/>
        </div>






        <div class="foot-lnk">
        </div>
      </div>
      <div class="sign-up-htm">
        <div class="group">
          <label for="user" class="label">Correo electronico</label>
            <asp:TextBox ID="txtcorr" type="text" class="input"   runat="server"></asp:TextBox>
        </div>
        <div class="group">
          <label for="pass" class="label">Contraseña</label>
            <asp:TextBox ID="txtcntr"  type="text" class="input"   runat="server"></asp:TextBox>
        </div>
        <div class="group">
          <label for="pass" class="label">Tipo de usuario</label>
            <asp:TextBox ID="txttipo"  type="text" class="input"   runat="server"></asp:TextBox>
        </div>
        <div class="group">

          <asp:Button ID="btnrgusu" CssClass="btn btn-primary" runat="server" Text="Guardar" />
<%--          <input type="submit" class="button" value="Sign Up">--%>
        </div>
        <div class="hr"></div>
        <div class="foot-lnk">
        </div>
      </div>
    </div>
  </div>
</div>

    </form>
</body>
</html>
