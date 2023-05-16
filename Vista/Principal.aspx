<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="SitioWebRutas.Vista.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css"/>
 
<link href="CSS/video.css" rel="stylesheet" />
 
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"/>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" /> 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
  height: 100%;
  color: #777;
  line-height: 1.8;
}

/* Create a Parallax Effect */
.bgimg-1, .bgimg-2, .bgimg-3 {
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* First image (Logo. Full height) */
.bgimg-1 {
  background-image: url('/w3images/parallax1.jpg');
  min-height: 100%;
}

/* Second image (Portfolio) */
.bgimg-2 {
  background-image: url("/w3images/parallax2.jpg");
  min-height: 400px;
}

/* Third image (Contact) */
.bgimg-3 {
  background-image: url("/w3images/parallax3.jpg");
  min-height: 400px;
}

.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1600px) {
  .bgimg-1, .bgimg-2, .bgimg-3 {
    background-attachment: scroll;
    min-height: 400px;
  }
}
</style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="w3-top">
  <div class="w3-bar" id="myNavbar">
    <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
      <i class="fa fa-bars"></i>
    </a>
    <a href="#home" class="w3-bar-item w3-button">Sesion</a>
    <a href="#about" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i>Inicio</a>
    <a href="#portfolio" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i>Informacion</a>
    <a href="#contact" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i>Contacto</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      <i class="fa fa-search"></i>
    </a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
    <a href="#about" class="w3-bar-item w3-button" onclick="toggleFunction()">ABOUT</a>
    <a href="#portfolio" class="w3-bar-item w3-button" onclick="toggleFunction()">PORTFOLIO</a>
    <a href="#contact" class="w3-bar-item w3-button" onclick="toggleFunction()">CONTACT</a>
    <a href="#" class="w3-bar-item w3-button">Buscar</a>
  </div>
</div>

        <br />
        <br />
         <br />
        <br />
      
<%--        <div class="w3-display-middle" style="white-space:nowrap;">
    <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity">MY <span class="w3-hide-small">WEBSITE</span> LOGO</span>
    </div>--%>

<!-- First Parallax Image with Logo Text -->
<div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
    <div position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); z-index: 12;">
        
 <video autoplay="autoplay" muted="muted" loop="loop">
  <source src="Imagenes/video.mp4.mp4" type="video/mp4"/>
  <source src="movie.ogg" type="video/ogg" />
  Tu navegador no soporta el formato de video
 </video>


</div>
</div>
 




<!-- Container (About Section) -->
<div class="w3-content w3-container w3-padding-64" id="about">
  <h3 class="w3-center">Rutas Boyaca</h3>
  <p class="w3-center"><em>¿Te gustaria conocer Boyaca?</em></p>
  <p>Boyacá es un departamento de Colombia con una gran variedad 
      de rutas para explorar. Según AllTrails, algunas de las mejores rutas en 
      Boyacá incluyen la Laguna Grande de la Sierra en el Parque Nacional El Cocuy, 
      el Púlpito del Diablo también en el Parque Nacional El Cocuy y el Páramo de Ocetá en Monguí . 
      Estas rutas ofrecen impresionantes vistas y la oportunidad de experimentar la belleza natural 
      de Boyacá. Además, hay muchas otras rutas para explorar en Boyacá, incluyendo senderos para caminatas,
      ciclismo de montaña y conducción panorámica.
    <div class="w3-row"/>
    <div class="w3-col m6 w3-center w3-padding-large">
      <p><b><i class="fa fa-user w3-margin-right"></i>Boyaca</b></p><br>
      <img src="https://th.bing.com/th/id/R.9685bec51421c64b115c75e6c5c1d917?rik=1ri5WYK5Z87gQg&pid=ImgRaw&r=0" class="w3-round w3-image w3-opacity w3-hover-opacity-off" alt="Photo of Me" width="500" height="333">
    </div>

    <!-- Hide this text on small devices -->
    <div class="w3-col m6 w3-hide-small w3-padding-large">
      <p>Boyacá es uno de los treinta y dos departamentos que, junto con Bogotá, Distrito Capital,
          forman la República de Colombia. Su capital es Tunja y está ubicado en el centro-este del país, 
          en la región andina 1. Boyacá es conocido por su rica historia y cultura, así como por sus impresionantes 
          paisajes naturales. El departamento cuenta con una gran variedad de atracciones turísticas, incluyendo
          parques naturales, pueblos históricos y monumentos. La economía de Boyacá se basa en diversos sectores,
          incluyendo la agricultura, la minería y el turismo

          en la región andina 1. Boyacá es conocido por su rica historia y cultura, así como por sus impresionantes 
          paisajes naturales. El departamento cuenta con una gran variedad de atracciones turísticas, incluyendo
          parques naturales, pueblos históricos y monumentos. La economía de Boyacá se basa en diversos sectores,
          incluyendo la agricultura, la minería y el turismo
          en la región andina 1. Boyacá es conocido por su rica historia y cultura, así como por sus impresionantes 
          paisajes naturales. El departamento cuenta con una gran variedad de atracciones turísticas, incluyendo
         
        </div>
  </div>
  <p class="w3-large w3-center w3-padding-16">Estadisticas</p>
  <p class="w3-wide"><i class="fa fa-camera"></i>Anillos Turisticos</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:90%">90%</div>
  </div>
  <p class="w3-wide"><i class="fa fa-laptop"></i>Provincias</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:85%">85%</div>
  </div>
  <p class="w3-wide"><i class="fa fa-photo"></i>Municipios</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:75%">75%</div>
  </div>
</div>

<div class="w3-row w3-center w3-dark-grey w3-padding-16">
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">14+</span><br>
    Partners
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">55+</span><br>
    Projects Done
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">89+</span><br>
    Happy Clients
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">150+</span><br>
    Meetings
  </div>
</div>

        <br />
        <br />


       
        
        <div class="row justify-content-center">
    <div class="col-sm-8">



            <div class="w-50 row justify-content-center" >

            <div id="demo" class="carousel slide" data-bs-ride="carousel">

                    <!-- Indicators/dots -->
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                    </div>

                    <!-- The slideshow/carousel -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="Imagenes/descarga%20(1)%20(1).jpg" alt="Los Angeles" class="d-block" style="width: 100%" height="400vh" min-height="300px" />
                        </div>
                        <div class="carousel-item">
                            <img src="Imagenes/descarga%20(3)%20(1).jpg" alt="New York" class="d-block" style="width: 100%" height="400vh" min-height="300px" />
                        </div>
                        <div class="carousel-item">
                            <img src="Imagenes/descarga%20(3)%20(1).jpg" alt="New York" class="d-block" style="width: 100%" height="400vh" min-height="300px" />
                        </div>
                    </div>

                    <!-- Left and right controls/icons -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </button>
                </div>





        </div>

    <div class="w3-col m6 w3-hide-small w3-padding-large">
      <p>Boyacá es uno de los treinta y dos departamentos que, junto con Bogotá, Distrito Capital,
          forman la República de Colombia. Su capital es Tunja y está ubicado en el centro-este del país, 
          en la región andina 1. Boyacá es conocido por su rica historia y cultura, así como por sus impresionantes 
          paisajes naturales. El departamento cuenta con una gran variedad de atracciones turísticas, incluyendo
          parques naturales, pueblos históricos y monumentos. La economía de Boyacá se basa en diversos sectores,
          incluyendo la agricultura, la minería y el turismo

          en la región andina 1. Boyacá es conocido por su rica historia y cultura, así como por sus impresionantes 
          paisajes naturales. El departamento cuenta con una gran variedad de atracciones turísticas, incluyendo
          parques naturales, pueblos históricos y monumentos. La economía de Boyacá se basa en diversos sectores,
          incluyendo la agricultura, la minería y el turismo
          en la región andina 1. Boyacá es conocido por su rica historia y cultura, así como por sus impresionantes 
          paisajes naturales. El departamento cuenta con una gran variedad de atracciones turísticas, incluyendo
         
        </p></div>
    </div>


</div>












    
                  

<!-- Second Parallax Image with Portfolio Text -->
<div class="bgimg-2 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
    <span class="w3-xxlarge w3-text-white w3-wide">PORTFOLIO</span>
  </div>
</div>

<!-- Container (Portfolio Section) -->
<div class="w3-content w3-container w3-padding-64" id="portfolio">
  <h3 class="w3-center">MY WORK</h3>
  <p class="w3-center"><em>Here are some of my latest lorem work ipsum tipsum.<br> Click on the images to make them bigger</em></p><br>

  <!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
  <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
      <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAGgAfwMBIgACEQEDEQH/xAAaAAACAwEBAAAAAAAAAAAAAAACAwABBAUG/9oACAEBAAAAAC7Tpmg47a95yg43aJLWReLG5uo7mHcDDoRXlWOtjbWyMHGmFLIzM6hDjxcYCfs6bmGVQuby+K9bT6Gje5pyL5/m+w9PK1aG6dTWXS+Nl9BzcXI6nexO0tMojIrUznMbozzYVnVLWtElwnaZCklAIJULntuyl1BEBqyO5DkkkEaKSSv/xAAYAQEAAwEAAAAAAAAAAAAAAAAAAQIDBP/aAAoCAhADEAAAAAAAAAAAAAJrXqnnADLSuG9wAAAAAP/EAC0QAAICAQMDAwMCBwAAAAAAAAECABEDBCExEBJBE1FhICJxBTAUQmJygZGh/9oACAEBAAE/AMAJNzENh0upkzb0BZgwsd2aPpb3B3jYMgPG8UssTL8mDIdqYGBx5+nSYyxBMGwroxZzS8THjCD56uoYbzLijdyNzt4PMRqq634IneQ0R7Aly76aRKW+j+0Re0dCyjzC1wmGZMIY3xPSNVUAYkbxdhFswQTGoVQOije+hYCvk1M7lWWuXH2/3LF1ALj2dbWLn+7Ih5XcfKmeutgXPUBl3KEUQdR04F+wjvSd48fd/iZM6YXbHkoI9lTM+UUcWRqPKP8AjgzLrf8Ad934eHV5WYOF3Vd/xBqcrMtMogy6kC7WYdU3DrUxuGGxgMHQdK6HUfwz+lkvs5xOPKzWZsIxdgYMn8oBoqY3rtSsbHgWIulzuNsdGodLlQ0zop/MTCigA5lJu6lPiIvixF7HHFGYmKGohuAwfQzEbgE1yPMztjbG4KjInkeRDj7nBDOfYH2mj0k1+QaTGmLGKfLMaYNJjVs7jeO+HPlfsmlA7xhfcHiZMD4nteDKJAMxHaCCDoSByY4scH4qaxQ4+7/tXNPgu2mnQJjE/Vcd5tO/wRNfg9XCrrdKswabUNkXtQr8kTHp3XW4gHDVuY6grvAvptXgxVoxRBB1yY1YVQj6dCa7doE7PuA2ExalAew2D7GajGmpxlL35BmNs2FwmXGe33AsTLlLsVRCZptP6ZZ23dod46gg3MIIUd3mBZX0EXGTZvmPjBUJwt7x8KngBR8bRtN/W0CundTmqndkAuzZgLVRc3DxyYiAcEiKgLWWswfsEdGqGo0AY8CLjbyYq1B+xUInZDjE9MQLAsA/dqVK+n//xAAdEQABBAIDAAAAAAAAAAAAAAADAAECERJAEyAh/9oACAECAQE/ANsowzE2U6dD4muOXtdyiiRqdCBEWp//xAAdEQACAQUBAQAAAAAAAAAAAAABAhMAAyJAQQQg/9oACAEDAQE/ANsC6XxGIpvVaZI3USfaXCoI5UayF+6n/9k=" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="The mist over the mountains">
    </div>

    <div class="w3-col m3">
      <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAGgAfwMBIgACEQEDEQH/xAAaAAACAwEBAAAAAAAAAAAAAAACAwABBAUG/9oACAEBAAAAAC7Tpmg47a95yg43aJLWReLG5uo7mHcDDoRXlWOtjbWyMHGmFLIzM6hDjxcYCfs6bmGVQuby+K9bT6Gje5pyL5/m+w9PK1aG6dTWXS+Nl9BzcXI6nexO0tMojIrUznMbozzYVnVLWtElwnaZCklAIJULntuyl1BEBqyO5DkkkEaKSSv/xAAYAQEAAwEAAAAAAAAAAAAAAAAAAQIDBP/aAAoCAhADEAAAAAAAAAAAAAJrXqnnADLSuG9wAAAAAP/EAC0QAAICAQMDAwMCBwAAAAAAAAECABEDBCExEBJBE1FhICJxBTAUQmJygZGh/9oACAEBAAE/AMAJNzENh0upkzb0BZgwsd2aPpb3B3jYMgPG8UssTL8mDIdqYGBx5+nSYyxBMGwroxZzS8THjCD56uoYbzLijdyNzt4PMRqq634IneQ0R7Aly76aRKW+j+0Re0dCyjzC1wmGZMIY3xPSNVUAYkbxdhFswQTGoVQOije+hYCvk1M7lWWuXH2/3LF1ALj2dbWLn+7Ih5XcfKmeutgXPUBl3KEUQdR04F+wjvSd48fd/iZM6YXbHkoI9lTM+UUcWRqPKP8AjgzLrf8Ad934eHV5WYOF3Vd/xBqcrMtMogy6kC7WYdU3DrUxuGGxgMHQdK6HUfwz+lkvs5xOPKzWZsIxdgYMn8oBoqY3rtSsbHgWIulzuNsdGodLlQ0zop/MTCigA5lJu6lPiIvixF7HHFGYmKGohuAwfQzEbgE1yPMztjbG4KjInkeRDj7nBDOfYH2mj0k1+QaTGmLGKfLMaYNJjVs7jeO+HPlfsmlA7xhfcHiZMD4nteDKJAMxHaCCDoSByY4scH4qaxQ4+7/tXNPgu2mnQJjE/Vcd5tO/wRNfg9XCrrdKswabUNkXtQr8kTHp3XW4gHDVuY6grvAvptXgxVoxRBB1yY1YVQj6dCa7doE7PuA2ExalAew2D7GajGmpxlL35BmNs2FwmXGe33AsTLlLsVRCZptP6ZZ23dod46gg3MIIUd3mBZX0EXGTZvmPjBUJwt7x8KngBR8bRtN/W0CundTmqndkAuzZgLVRc3DxyYiAcEiKgLWWswfsEdGqGo0AY8CLjbyYq1B+xUInZDjE9MQLAsA/dqVK+n//xAAdEQABBAIDAAAAAAAAAAAAAAADAAECERJAEyAh/9oACAECAQE/ANsowzE2U6dD4muOXtdyiiRqdCBEWp//xAAdEQACAQUBAQAAAAAAAAAAAAABAhMAAyJAQQQg/9oACAEDAQE/ANsC6XxGIpvVaZI3USfaXCoI5UayF+6n/9k=" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Coffee beans">
    </div>

    <div class="w3-col m3">
      <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAGgAfwMBIgACEQEDEQH/xAAaAAACAwEBAAAAAAAAAAAAAAACAwABBAUG/9oACAEBAAAAAC7Tpmg47a95yg43aJLWReLG5uo7mHcDDoRXlWOtjbWyMHGmFLIzM6hDjxcYCfs6bmGVQuby+K9bT6Gje5pyL5/m+w9PK1aG6dTWXS+Nl9BzcXI6nexO0tMojIrUznMbozzYVnVLWtElwnaZCklAIJULntuyl1BEBqyO5DkkkEaKSSv/xAAYAQEAAwEAAAAAAAAAAAAAAAAAAQIDBP/aAAoCAhADEAAAAAAAAAAAAAJrXqnnADLSuG9wAAAAAP/EAC0QAAICAQMDAwMCBwAAAAAAAAECABEDBCExEBJBE1FhICJxBTAUQmJygZGh/9oACAEBAAE/AMAJNzENh0upkzb0BZgwsd2aPpb3B3jYMgPG8UssTL8mDIdqYGBx5+nSYyxBMGwroxZzS8THjCD56uoYbzLijdyNzt4PMRqq634IneQ0R7Aly76aRKW+j+0Re0dCyjzC1wmGZMIY3xPSNVUAYkbxdhFswQTGoVQOije+hYCvk1M7lWWuXH2/3LF1ALj2dbWLn+7Ih5XcfKmeutgXPUBl3KEUQdR04F+wjvSd48fd/iZM6YXbHkoI9lTM+UUcWRqPKP8AjgzLrf8Ad934eHV5WYOF3Vd/xBqcrMtMogy6kC7WYdU3DrUxuGGxgMHQdK6HUfwz+lkvs5xOPKzWZsIxdgYMn8oBoqY3rtSsbHgWIulzuNsdGodLlQ0zop/MTCigA5lJu6lPiIvixF7HHFGYmKGohuAwfQzEbgE1yPMztjbG4KjInkeRDj7nBDOfYH2mj0k1+QaTGmLGKfLMaYNJjVs7jeO+HPlfsmlA7xhfcHiZMD4nteDKJAMxHaCCDoSByY4scH4qaxQ4+7/tXNPgu2mnQJjE/Vcd5tO/wRNfg9XCrrdKswabUNkXtQr8kTHp3XW4gHDVuY6grvAvptXgxVoxRBB1yY1YVQj6dCa7doE7PuA2ExalAew2D7GajGmpxlL35BmNs2FwmXGe33AsTLlLsVRCZptP6ZZ23dod46gg3MIIUd3mBZX0EXGTZvmPjBUJwt7x8KngBR8bRtN/W0CundTmqndkAuzZgLVRc3DxyYiAcEiKgLWWswfsEdGqGo0AY8CLjbyYq1B+xUInZDjE9MQLAsA/dqVK+n//xAAdEQABBAIDAAAAAAAAAAAAAAADAAECERJAEyAh/9oACAECAQE/ANsowzE2U6dD4muOXtdyiiRqdCBEWp//xAAdEQACAQUBAQAAAAAAAAAAAAABAhMAAyJAQQQg/9oACAEDAQE/ANsC6XxGIpvVaZI3USfaXCoI5UayF+6n/9k=" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Bear closeup">
    </div>

    <div class="w3-col m3">
      <img src="/w3images/p4.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Quiet ocean">
    </div>
  </div>

  <div class="w3-row-padding w3-center w3-section">
    <div class="w3-col m3">
      <img src="/w3images/p5.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="The mist">
    </div>

    <div class="w3-col m3">
      <img src="/w3images/p6.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="My beloved typewriter">
    </div>

    <div class="w3-col m3">
      <img src="/w3images/p7.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Empty ghost train">
    </div>

    <div class="w3-col m3">
      <img src="/w3images/p8.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Sailing">
    </div>
    <button class="w3-button w3-padding-large w3-light-grey" style="margin-top:64px">LOAD MORE</button>
  </div>
</div>

<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-button w3-large w3-black w3-display-topright" title="Close Modal Image"><i class="fa fa-remove"></i></span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption" class="w3-opacity w3-large"></p>
  </div>
</div>

<!-- Third Parallax Image with Portfolio Text -->
<div class="bgimg-3 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
     <span class="w3-xxlarge w3-text-white w3-wide">CONTACT</span>
  </div>
</div>

<!-- Container (Contact Section) -->
<div class="w3-content w3-container w3-padding-64" id="contact">
  <h3 class="w3-center">WHERE I WORK</h3>
  <p class="w3-center"><em>I'd love your feedback!</em></p>

  <div class="w3-row w3-padding-32 w3-section">
    <div class="w3-col m4 w3-container">
      <img src="/w3images/map.jpg" class="w3-image w3-round" style="width:100%">
    </div>
    <div class="w3-col m8 w3-panel">
      <div class="w3-large w3-margin-bottom">
        <i class="fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Chicago, US<br>
        <i class="fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Phone: +00 151515<br>
        <i class="fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Email: mail@mail.com<br>
      </div>
      <p>Swing by for a cup of <i class="fa fa-coffee"></i>, or leave me a note:</p>
      <form action="/action_page.php" target="_blank">
        <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
          <div class="w3-half">
            <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
          </div>
          <div class="w3-half">
            <input class="w3-input w3-border" type="text" placeholder="Email" required name="Email">
          </div>
        </div>
        <input class="w3-input w3-border" type="text" placeholder="Message" required name="Message">
        <button class="w3-button w3-black w3-right w3-section" type="submit">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </form>
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
</footer>
 
<script>
    // Modal Image Gallery
    function onClick(element) {
        document.getElementById("img01").src = element.src;
        document.getElementById("modal01").style.display = "block";
        var captionText = document.getElementById("caption");
        captionText.innerHTML = element.alt;
    }

    // Change style of navbar on scroll
    window.onscroll = function () { myFunction() };
    function myFunction() {
        var navbar = document.getElementById("myNavbar");
        if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
            navbar.className = "w3-bar" + " w3-card" + " w3-animate-top" + " w3-white";
        } else {
            navbar.className = navbar.className.replace(" w3-card w3-animate-top w3-white", "");
        }
    }

    // Used to toggle the menu on small screens when clicking on the menu button
    function toggleFunction() {
        var x = document.getElementById("navDemo");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }
</script>
          </form>
</body>
</html>


  