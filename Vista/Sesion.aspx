﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sesion.aspx.cs" Inherits="ADSO_Proyecto_Rutas.Vista.Sesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>



        url("https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700&display=swap");


fieldset {
	padding: 0;
	margin: 0;
	border: 0;
	max-width: 340px;
	border-radius: 20px;
	width: 100%;
}

legend {
	font-size: 22px;
	font-weight: 600;
	color: #191919;
	margin: 0;
	background: #edf4fe;
	width: 100%;
	padding: 20px;
	box-sizing: border-box;
	border-radius: 10px 10px 0 0;
	border: 2px solid #3a88f6;
	display: flex;
}

fieldset label {
	font-weight: 300;
	font-size: 16px;
	cursor: pointer;
	display: flex;
	align-items: center;
	flex: 1;
	box-sizing: border-box;
	display: flex;
	padding: 20px 20px 20px 50px;
	font-weight: 500;
	color: #191919;
	-webkit-tap-highlight-color: transparent;
}

fieldset input[type="radio"] {
	position: relative;
	appearance: none;
	-webkit-appearance: none;
	transition: linear 0.8s;
	height: 0;
	width: 0;
	-webkit-tap-highlight-color: transparent;
}

fieldset input[type="radio"]:after {
	content: "";
	position: absolute;
	height: 16px;
	width: 16px;
	top: -10.5px;
	left: -30px;
	border-radius: 20px;
	border: 2px solid #3a88f6;
	transition: linear 0.2s;
	cursor: pointer;
}

fieldset input[type="radio"]:checked:after {
	content: "";
	position: absolute;
	height: 16px;
	width: 16px;
	background: #3a88f6;
	transition: linear 0.2s;
	cursor: pointer;
}

fieldset input[type="radio"]:checked:before {
	content: "";
	position: absolute;
	height: 8px;
	width: 8px;
	border-radius: 4px;
	background: #fff;
	left: -24px;
	top: -4.5px;
	z-index: 1;
	cursor: pointer;
}

.radio-item-container {
	display: flex;
	flex-direction: column;
	border: 2px solid #3a88f6;
	border-top: 0;
	background: #fff;
	border-radius: 0 0 10px 10px;
	padding: 10px 0;
}

.radio-item {
	display: flex;
	position: relative;
}

.icon {
	font-size: 24px;
	position: absolute;
	right: 26px;
	top: 11px;
	transition: linear 0.3s;
}

fieldset input[type="radio"]:checked + span > .icon {
	transform: scale(1.7);
}











        *, *:before, *:after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
  background: #cfcfcf;
  height: 100vh;
	margin: 0;
	display: grid;
	place-items: center;
	user-select: none;
}

input, button {
  border: none;
  outline: none;
  background: none;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
}

.tip {
  font-size: 20px;
  margin: 40px auto 50px;
  text-align: center;
}

.cont {
  overflow: hidden;
  position: relative;
  width: 900px;
  height: 550px;
  margin: 0 auto 100px;
  background: #fff;
}

.form {
  position: relative;
  width: 640px;
  height: 100%;
  transition: transform 1.2s ease-in-out;
  padding: 50px 30px 0;
}

.sub-cont {
  overflow: hidden;
  position: absolute;
  left: 640px;
  top: 0;
  width: 900px;
  height: 100%;
  padding-left: 260px;
  background: #fff;
  transition: transform 1.2s ease-in-out;
}
.cont.s--signup .sub-cont {
  transform: translate3d(-640px, 0, 0);
}

button {
  display: block;
  margin: 0 auto;
  width: 260px;
  height: 36px;
  border-radius: 30px;
  color: #fff;
  font-size: 15px;
  cursor: pointer;
}

.img {
  overflow: hidden;
  z-index: 2;
  position: absolute;
  left: 0;
  top: 0;
  width: 260px;
  height: 100%;
  padding-top: 360px;
}
.img:before {
  content: "";
  position: absolute;
  right: 0;
  top: 0;
  width: 900px;
  height: 100%;
  background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/142996/sections-3.jpg");
  background-size: cover;
  transition: transform 1.2s ease-in-out;
}
.img:after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.6);
}
.cont.s--signup .img:before {
  transform: translate3d(640px, 0, 0);
}
.img__text {
  z-index: 2;
  position: absolute;
  left: 0;
  top: 50px;
  width: 100%;
  padding: 0 20px;
  text-align: center;
  color: #fff;
  transition: transform 1.2s ease-in-out;
}
.img__text h2 {
  margin-bottom: 10px;
  font-weight: normal;
}
.img__text p {
  font-size: 14px;
  line-height: 1.5;
}
.cont.s--signup .img__text.m--up {
  transform: translateX(520px);
}
.img__text.m--in {
  transform: translateX(-520px);
}
.cont.s--signup .img__text.m--in {
  transform: translateX(0);
}
.img__btn {
  overflow: hidden;
  z-index: 2;
  position: relative;
  width: 100px;
  height: 36px;
  margin: 0 auto;
  background: transparent;
  color: #fff;
  text-transform: uppercase;
  font-size: 15px;
  cursor: pointer;
}
.img__btn:after {
  content: "";
  z-index: 2;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border: 2px solid #fff;
  border-radius: 30px;
}
.img__btn span {
  position: absolute;
  left: 0;
  top: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  transition: transform 1.2s;
}
.img__btn span.m--in {
  transform: translateY(-72px);
}
.cont.s--signup .img__btn span.m--in {
  transform: translateY(0);
}
.cont.s--signup .img__btn span.m--up {
  transform: translateY(72px);
}

h2 {
  width: 100%;
  font-size: 26px;
  text-align: center;
}

label {
  display: block;
  width: 260px;
  margin: 25px auto 0;
  text-align: center;
}
label span {
  font-size: 12px;
  color: #cfcfcf;
  text-transform: uppercase;
}

input {
  display: block;
  width: 100%;
  margin-top: 5px;
  padding-bottom: 5px;
  font-size: 16px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.4);
  text-align: center;
}

.forgot-pass {
  margin-top: 15px;
  text-align: center;
  font-size: 12px;
  color: #cfcfcf;
}

.submit {
  margin-top: 40px;
  margin-bottom: 20px;
  background: #d4af7a;
  text-transform: uppercase;
}

.fb-btn {
  border: 2px solid #d3dae9;
  color: #8fa1c7;
}
.fb-btn span {
  font-weight: bold;
  color: #455a81;
}

.sign-in {
  transition-timing-function: ease-out;
}
.cont.s--signup .sign-in {
  transition-timing-function: ease-in-out;
  transition-duration: 1.2s;
  transform: translate3d(640px, 0, 0);
}

.sign-up {
  transform: translate3d(-900px, 0, 0);
}
.cont.s--signup .sign-up {
  transform: translate3d(0, 0, 0);
}

.icon-link {
  position: absolute;
  left: 5px;
  bottom: 5px;
  width: 32px;
}
.icon-link img {
  width: 100%;
  vertical-align: top;
}
.icon-link--twitter {
  left: auto;
  right: 5px;
}
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="tip"></p>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
<div class="cont">
    <br />
            <br />
            <br />
            <br />
  <div class="form sign-in">
    <h2>Bienvenidos</h2>
       <label>
		   <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
<asp:DropDownList ID="ddlListUsuario" runat="server" >
    <asp:ListItem Text="Alcaldia" Value="Alcaldia"></asp:ListItem>
    <asp:ListItem Text="Comerciante" Value="Comerciante"></asp:ListItem>
    <asp:ListItem Text="Turista" Value="Turista"></asp:ListItem>
    <asp:ListItem Text="Usuario" Value="Usuario"></asp:ListItem>
</asp:DropDownList>
    </label>
    <label>
      <span>Correo</span>
        <asp:TextBox ID="txtCorreoUsuario" runat="server"></asp:TextBox>
    </label>
    <label>
      <span>Contraseña</span>
                <asp:TextBox ID="txtClaveUsuario" runat="server"></asp:TextBox>
    </label>
    <p class="forgot-pass"></p>
      <label>
		  	  <asp:Button ID="btnInicioS" runat="server" Text="Button" Onclick="btnInicioS_Click" />
      </label>
  </div>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <h2>Ya está registrado?</h2>
        <p>Registre sus datos</p>
      </div>
      <div class="img__text m--in">
        <h2>Inicie sesion</h2>
      </div>
      <div class="img__btn">
        <span class="m--up">Registro</span>
        <span class="m--in">Inicio</span>
      </div>
    </div>
    <div class="form sign-up">
      <h2>Valide sus datos en los campos que se muestran acontinuación</h2>
      <label>
        <span>Nombre</span>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
      </label>
      <label>
        <span>Correo</span>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
      </label>
      <label>
        <span>Contraseña</span>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
      </label>
          <label>
        <span>Tipo de usuario</span>
              <br />
			  		<asp:Button ID="btnRegistrar" runat="server" Text="Button" OnClick="btnRegistrar_Click"/>

      </label>
        <br />
        <label>
        </label>
    </div>
  </div>
</div>

<a href="https://dribbble.com/shots/3306190-Login-Registration-form" target="_blank" class="icon-link">
  <img src="http://icons.iconarchive.com/icons/uiconstock/socialmedia/256/Dribbble-icon.png">
</a>
<a href="https://twitter.com/NikolayTalanov" target="_blank" class="icon-link icon-link--twitter">
  <img src="https://cdn1.iconfinder.com/data/icons/logotypes/32/twitter-128.png">
</a>
        </div>
        <script>
            document.querySelector('.img__btn').addEventListener('click', function () {
                document.querySelector('.cont').classList.toggle('s--signup');
            });
        </script>
    </form>
</body>
</html>

