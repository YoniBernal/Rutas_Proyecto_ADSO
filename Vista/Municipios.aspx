<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Municipios.aspx.cs" Inherits="ADSO_Proyecto_Rutas.Vista.Municipios" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
    <link href="Css/Municipio.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div class="container">
  <br />
  <div class="label-container">
    <h1>Bienvenidos a <asp:Label ID="lblNombre" runat="server" Text="Label" class="large-font text-center" style="color: black;"></asp:Label></h1>
    <br />
    <div>
      <asp:Label ID="lbldescripcion" runat="server" Text="Label" class="large-font" style="color: black;"></asp:Label>
    </div>
  </div>
  <br />
  <asp:image imageurl="https://th.bing.com/th/id/OIP.jNym1ebb3RQUrmtVtbLYfgHaEK?pid=ImgDet&rs=1" runat="server" />
</div>



<div class="container second">
  <div class="column-66">
    <h1 class="xlarge-font"><b></b></h1>

    <div class="container" style="margin-top: 20px; display: flex;">
        <div style="flex: 1;">
            <form>
                <!-- Agrega aquí tus campos de formulario -->
            </form>
        </div>
        <div class="card" style="margin-left: 10px;">
            <div class="">
                <div class="face face1">
                    <div class="content">
                        <img src="https://th.bing.com/th/id/OIP.jNym1ebb3RQUrmtVtbLYfgHaEK?pid=ImgDet&rs=1" />
                        <h3>Terreno</h3>
                    </div>
                </div>
                <div class="face face2">
                    <div class="content">
                        <asp:Label ID="lblN_Habitantes" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLatitud" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLongitud" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div class="card" style="margin-left: 10px;">
            <div class="">
                <div class="face face1">
                    <div class="content">
                        <img src="#" />
                        <h3>Posicion Geográfica</h3>
                    </div>
                </div>
                <div class="face face2">
                    <div class="content">
                        <asp:Label ID="lblUbicacion" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblExtension" runat="server" Text="Label"></asp:Label>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
      <br />
</div>
    </div>




<div class="container second">
  <div class="column-66">

        <h1 class="xlarge-font"><b></b></h1>

    <div class="container" style="margin-top: 20px; display: flex;">
     
        <div class="card" style="margin-left: 10px;">
            <div class="">
               
             
            </div>
        </div>
        <div class="card" style="margin-left: 10px;">
            <div class="">
                <label>AQUI VA EL CLIMA</label>   <br />
                <br />
<div id="ww_8dbc6c77b7147" v='1.3' loc='id' a='{"t":"horizontal","lang":"es","sl_lpl":1,"ids":[],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"#FFFFFF","cl_font":"#000000","cl_cloud":"#d4d4d4","cl_persp":"#2196F3","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722"}'>Weather Data Source: <a href="https://tiempolargo.com/madrid_tiempo_25_dias/" id="ww_8dbc6c77b7147_u" target="_blank">Tiempo en Madrid a 25 días</a></div><script async src="https://app1.weatherwidget.org/js/?id=ww_8dbc6c77b7147"></script>            </div>
        </div>
    </div>

</div>



    
    </form>
</body>
</html>

