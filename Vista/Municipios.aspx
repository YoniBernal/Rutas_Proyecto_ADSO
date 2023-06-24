<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Municipios.aspx.cs" Inherits="ADSO_Proyecto_Rutas.Vista.Municipios" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
    <style>
        <style>
  * {
    box-sizing: border-box;
  }

  body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
   background: linear-gradient(-45deg, #e2c547 0, #cec547 8.33%, #b8c248 16.67%, #a0bc4a 25%, #87b34d 33.33%, #6da74f 41.67%, #53984f 50%, #3a894e 58.33%, #217c4e 66.67%, #00714f 75%, #006850 83.33%, #006252 91.67%, #005d55);
  background-size: 400% 400%;
  animation: gradient 15s ease infinite;
  height: 100vh;
}

@keyframes gradient {
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}
  .container {
    padding: 64px;
  }

  .row:after {
    content: "";
    display: table;
    clear: both;
  }

  .column-33 {
    float: left;
    width: 33.33333%;
    padding: 20px;
  }

  .large-font {
    font-size: 100px;
  }

  .xlarge-font {
    font-size: 64px;
  }

  .button {
    border: none;
    color: white;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
    background-color: #04AA6D;
  }

  img {
    display: block;
    height: auto;
    max-width: 100%;
  }

  @media screen and (max-width: 1000px) {
    .column-66,
    .column-33 {
      width: 100%;
      text-align: center;
    }
    img {
      margin-left: 20px;
    }
  }

  .column-33 {
    margin-left: 700px; 
  }

  .container .card {
    margin-left: 0; /* Remove the margin */
  }

  .container .card .face {
    width: 300px;
    height: 200px;
    transition: 0.5s;
  }

  .container .card .face.face1 {
    position: relative;
    background: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1;
    transform: translateY(100px);
  }

  .container .card:hover .face.face1 {
    background: #ff0057;
    transform: translateY(0);
  }

  .container .card .face.face1 .content {
    opacity: 0.2;
    transition: 0.5s;
  }

  .container .card:hover .face.face1 .content {
    opacity: 1;
  }

  .container .card .face.face1 .content img {
    max-width: 100px;
  }

  .container .card .face.face1 .content h3 {
    margin: 10px 0 0;
    padding: 0;
    color: #fff;
    text-align: center;
    font-size: 1.5em;
  }

  .container .card .face.face2 {
    position: relative;
    background: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
    box-sizing: border-box;
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.8);
    transform: translateY(-100px);
  }

  .container .card:hover .face.face2 {
    transform: translateY(0);
  }

  .container .card .face.face2 .content p {
    margin: 0;
    padding: 0;
  }

  .container .card .face.face2 .content a {
    margin: 15px 0 0;
    display: inline-block;
    text-decoration: none;
    font-weight: 900;


    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div class="container">
  <div class="row">
    <div class="column-66">
        <div style="text-align: center;">
<asp:Label ID="lblNombre" runat="server" Text="Label" class="large-font text-center" style="color:MediumSeaGreen;"></asp:Label>
</div>

        <br />
        <br />
        <asp:Label ID="lbldescripcion" runat="server" Text="Label" class="large-font"  style="color:black"></asp:Label>
      
    </div>
              

    <div class="column-33">
        <img src="https://2.bp.blogspot.com/-H_Dz_sj_KkQ/Vp1uhkxOVaI/AAAAAAAAAFU/tn7NSZxbTTQ/s1600/5.jpg" width="335" height="471"/>
    </div>
  </div>
</div>



<div class="column-66">
    <h1 class="xlarge-font"><b></b></h1>
    <h1 class="large-font" style="color:red;"><b>Caracteristicas</b></h1>

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
                        <img src="#" />
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
</div>
         
  <!-- Tacos ----------------------------------- -->
        
<div class="container">
  <div class="row">
    <div class="column-66">
      <h1 class="xlarge-font"><b></b></h1>
      <asp:Label ID="lblNomC" class="large-font" style="color:MediumSeaGreen;" runat="server" Text="Label"></asp:Label>

        
        <div id="m-booked-weather-bl250-61255">
<div class="booked-wzs-250-175 weather-customize" style="background-color:#137AE9;width:160px;" id="width1">
    <div class="booked-wzs-250-175_in">
    <div class="booked-wzs-250-175-data">
    <div class="booked-wzs-250-175-left-img wrz-18"> </div> <div class="booked-wzs-250-175-right">
    <div class="booked-wzs-day-deck"> <div class="booked-wzs-day-val">
    <div class="booked-wzs-day-number"><span class="plus">+</span>15</div>
    <div class="booked-wzs-day-dergee"> <div class="booked-wzs-day-dergee-val">&deg;</div>
    <div class="booked-wzs-day-dergee-name">C</div> </div> </div> <div class="booked-wzs-day">
    <div class="booked-wzs-day-d">H: <span class="plus">+</span>15&deg;</div>
    <div class="booked-wzs-day-n">L: <span class="plus">+</span>9&deg;</div>

      </div> </div> <div class="booked-wzs-250-175-info">
          <div class="booked-wzs-250-175-city">Pasto </div>
          <div class="booked-wzs-250-175-date">Martes, 06 Junio</div>
          <div class="booked-wzs-left">
              <span class="booked-wzs-bottom-l">Previsión para 7 días</span> </div> </div> </div> </div>
        <table cellpadding="0" cellspacing="0" class="booked-wzs-table-250"> <tr> <td>Mié</td>
            <td>Juv</td> <td>Vie</td> <td>Sáb</td> <td>Dom</td> <td>Lun</td> </tr> <tr>
                <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td>
                <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td>
                <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td>
                <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td>
                <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td>
                <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td>
                </tr> <tr> <td class="week-day-val">
                <span class="plus">+</span>19&deg;</td>
                    <td class="week-day-val"><span class="plus">+</span>17&deg;</td>
                    <td class="week-day-val"><span class="plus">+</span>19&deg;</td>
                    <td class="week-day-val"><span class="plus">+</span>17&deg;</td>
                    <td class="week-day-val"><span class="plus">+</span>18&deg;</td>
                    <td class="week-day-val"><span class="plus">+</span>13&deg;</td>

                      </tr> <tr> <td class="week-day-val"><span class="plus">+</span>10&deg;</td>
                          <td class="week-day-val"><span class="plus">+</span>10&deg;</td> <td class="week-day-val"><span class="plus">+</span>10&deg;</td> <td class="week-day-val">
                              <span class="plus">+</span>11&deg;</td> <td class="week-day-val"><span class="plus">+</span>10&deg;</td> <td class="week-day-val"><span class="plus">+</span>9&deg;</td> </tr> </table> </div> </div>

</div>
        
        
        
    </div>
    <div class="column-33">
        <img src="https://th.bing.com/th/id/R.a3327e7bce5c2d790eff935baeefb0a5?rik=DstWeR76y2d0pA&riu=http%3a%2f%2fttbaq.com.co%2fwp-content%2fuploads%2f2019%2f03%2fFundacion-1.jpg&ehk=sNPvR06794hILGLunk%2flJIMhpCSFIlMiPM60qIftfe8%3d&risl=&pid=ImgRaw&r=0" width="335" height="471"/>
    </div>
  </div>
</div>
    </form>
</body>
</html>

