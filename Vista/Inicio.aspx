<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="SitioWebRutas.Vista.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="CSS/Inicio.css" rel="stylesheet" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>



    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div></div>
        
            <div class="grid text-center" style="--bs-columns: 3;">

                <h2>Rutas Boyaca</h2>

            </div>


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
                            <img src="Imagenes/descarga%20(1)%20(1).jpg" alt="Los Angeles" class="d-block" style="width: 100%" height="400" min-height="300px" />
                        </div>
                        <div class="carousel-item">
                            <img src="#" alt="Chicago" class="d-block" style="width: 100%" height="400" min-height="300px" />
                        </div>
                        <div class="carousel-item">
                            <img src="Imagenes/descarga%20(3)%20(1).jpg" alt="New York" class="d-block" style="width: 100%" height="400" min-height="300px" />
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
            <br />
            <br />

            <div class="navbar">
                <div class="nav-item col-lg-3 col-sm-12"></div>
                <div class="navbar nav-item col-lg-6 col-sm-12">
                    <div class="nav-item">
                        <asp:Button ID="Button1" class="redondo justify-content-lg-around" alt="Cinque Terre" runat="server" Text="Provincias" OnClick="Button1_Click" />
                    </div>

                    <div class="nav-item">
                        <asp:Button ID="Button3" class="redondo justify-content-lg-around" alt="Cinque Terre" runat="server" Text="Button" OnClick="Button1_Click" />
                    </div>

                    <div class="nav-item">
                        <asp:Button ID="CrearR" class="redondo justify-content-lg-around" alt="Cinque Terre" runat="server" Text="Crear ruta" OnClick="CrearR_Click" />
                    </div>

                </div>
                <div class="nav-item col-lg-3 col-sm-12"></div>
            </div>
    </form>
</body>
</html>
