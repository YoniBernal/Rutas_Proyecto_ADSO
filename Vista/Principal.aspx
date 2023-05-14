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






    <title></title>
</head>
<body>
    <form id="form1" runat="server">


   <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <image class="navbar-brand"  src="" :>Logo</image>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar" style="text-align:center" >
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" style="text-align:center;" href="javascript:void(0)">Provincias</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">Anillos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">Crear</a>
        </li>
      </ul>
        </div>
<%--        <input class="form-control me-2" type="text" placeholder="Search">--%>
        <asp:Button ID="Sesion" runat="server" Text="Button" Onclick="Sesion_Click"/>
<%--        <button class="btn btn-primary" type="button">Sesion</button>--%>
     
    
  </div>
</nav>
 </form>



       <div style="position: relative;">
 <video autoplay="autoplay" muted="muted" loop="loop">
  <source src="Imagenes/video.mp4.mp4" type="video/mp4"/>
  <source src="movie.ogg" type="video/ogg" />
  Tu navegador no soporta el formato de video
 </video>
 <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); z-index: 12;"/>
  
  
    </div>

        <br />

        <h5 class="text-center" >Conoce la gran variedad de lugares con los que cuenta nuestra hermosa Boyaca</h5>
        

           <div class="grid text-center" style="--bs-columns: 3;">


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
                            <img src="#" alt="Chicago" class="d-block" style="width: 100%" height="400vh" min-height="300px" />
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

    </form>
</body>
</html>
