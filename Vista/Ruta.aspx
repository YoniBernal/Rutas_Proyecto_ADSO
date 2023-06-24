﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ruta.aspx.cs" Inherits="ADSO_Proyecto_Rutas.Vista.Ruta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/multi-select/0.9.12/css/multi-select.min.css" rel="stylesheet" />
        <link href="CSS/CrearRuta.css" rel="stylesheet" />
    <style>
       .form-container {
            display: flex;
        }

        .form-left {
            display: inline-block;
        }

        .form-right {
            flex: 1;
        }

        .form-group {
            margin-bottom: 10px;
        }

        .label {
            display: block;
            font-weight: bold;
        }

        .hidden-textbox {
            width: 100px;
            height: 20px;
            border: none;
            background: none;
            color: transparent;
            font-size: 0;
        }

                body {
  font-family: 'Architects Daughter', cursive;
  margin: 20px auto;
  text-align: center;
  background: #DCEDC8 ;
}

a {
  text-decoration: none;
}

 {
  -webkit-animation: brush 6s 0s 1 backwards reverse;
  -moz-animation:    brush 6s 0s 1 backwards reverse;
  -o-animation:      brush 6s 0s 1 backwards reverse;
  animation:         brush 6s 0s 1 backwards reverse; 
  
  -webkit-mask:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAScAAAAyCAYAAAAeNh3dAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QzlEMkVFNTZGMEJGMTFFMkJCMkM4MjMxQzAzQkU3NDkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QzlEMkVFNTVGMEJGMTFFMkJCMkM4MjMxQzAzQkU3NDkiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNS4xIE1hY2ludG9zaCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuZGlkOjA0ODAxMTc0MDcyMDY4MTE5OUEwQzRFQ0FGNkUyRTdGIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjA0ODAxMTc0MDcyMDY4MTE5OUEwQzRFQ0FGNkUyRTdGIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+qqWwwwAABkZJREFUeNrsnU2O60QQx8tvRogFUnKDZySWSJMDIMY3IDcg4gIMJ3izZZd3AsIJCDsWSK+zgxWZHWzAWSCBxCKDWMxbQbemjCudbn9/5/+TSklsx7Hj7r+rqj8cULOEbAttc16m+HWv7UgAAFCAIGd9xCZFZ1bzN3csUnthMS4FACCPpbattn87NCNOG20rFsM5LgMA8JwSFiwQNwM7xj+1/cAelo0S7xE2AjBBcZqz9zKbwDkd+Fz24nUMwhUJr3Ehlt86tn10iHUi1LE4b4g1GL04mcrw08TPNREtyZzS/Jd5feWp+EVQ1uej2E9s/XbIFon385a81h2d5vf2KPZgbGHdWtvnPR7LW22/anuh7YmX3Uzs/z6wCM16PgYjpFu2MZK0BivHsiMEeHrilNzR7/iO3rYwvBUehbE/PNsl6yNR8GRXBTsMkl7RDS5xrlBtCoSbbXDb0PEvuXzcOYTKLkdhRvmiDM+3zLqp4PoPI089WzRwvRMP/z5JRwSOH4r4gi9GULl3HVUC0G547QuNic5zZ20Ig6siFql4UcZ5JN9d9+Ch2udjfw4toR7SjfwL/s9OEuJrFqUZ6g+oKTyqgOgg/MoXQZdo2svGFiHsMm4+W1kmEnEyrtQrlBEwIB6oemtjTP117M3ytsacanA1FBXxalXVH7yucaDfcQF4ynB1kfcBValTbhDK+8PnIqGzb1mnyK4EqkJI9yhOIulXtOXPIaVN5Wb/n6C8gJ54TWnep2gClypun0dZTyJPJNRUL5pMiH+m7WNt72j7m9LWs+TkP9D2Hr9e02nrmrmAH2n7i7f5sITQHbjghOQfttLEmD5wuewKhH32ssixn6hDTy3rmGX4NNncnREn0wR7z5X/d23f03mTaxfi8HUBkfIVFrjxAJyGcsoSNZ+ILXKcgirrTB1+SWnecFklRAz4wF/iugIASgqg9OZk+NlIqBlQmhtawQMBANBzLnklxKaX5PiV5e4tcV0AuHje1fYLPY8eMJ7RUx8HcSXe79mTinBtALj40O2e/EPKOsE1E2ZE6fAVtJIBAL5lL6rTYThBhe8oQm4KgKZ45IpfJKdTJPcT82soloWW+bjNOEY5L1rS98u8/kPPXYeO1Gyv/E1ZcTIn9hvKEwCNYprc7xzL8wbskiO68fUMjzPEQ66LS4iMCf1+pvM+kb14TuZgMAYPAOAi6YnfiEi9KLk9pn0FAPgwk1W+oYaG+1yV3N48aOB9anasEQBg3Jic1I8cnn5Jz5MC1KbKrATGZfsU1wOA0WLnpWIql6fyLW+Usjkn08VgQ+heAAA4x56D62Ta3TY9p0jbN/j/AYDn5fCcXAOLt1QjT13GczIHgwHCAAxXIHyokuuTfky24KguT7CoOBmv6Q3KAwCthkQxi4Gi5vI6sq9UZNXphJC3yRKiuK4n1JY4XcJDNwHogkdLgKo86NQlMnLGzpBO51OSYlNmorqI0o6f8lmB90MSJ4NJhq8R2gFQKfxS5B5+4pq0zZ4aeM4We0RFiX3F4jdcUwz7nuhiN3LteL9yCu64yz+uytg6cyKmqz26EwDQrEc1I/dkbi6RqfvwENesmfJ5AL13uA4qfm+l7SuUJwAG5Z2RJTJlw7hBEdT4bsSxJ2YoAFP1ZPYZYU8T2P2CXOLhCqcG4dkMWZykF7WCSIERio4dzhT1LPIe9y0/2+FX8vsbtqKElM5I4GqBS37nwPtf08gfGxU0uC/zJ5lcFJ5PB/oWn7XD6xiSt2GLWeRZl+exPVDa2reniT3DLmhhnyGHe0iYgz54Te65kZq4+RYRGtcyUyfqtnIfLBFSU7+QQYv7hkiBofDg8ZqGmoqwhegickxdipMUKXMnWxEGDAPgEs740oWoL3FKMG7uktKHJ6AzJ7gkdpQm3PdCkMAAxMklVgtPjB4RWv/AuISH6LS1T/ErPKERipMLI1JrCBMYSLiVNS4tpo6Hc0Cc+hUmUwiQlwJteje2N+N7DyBO/6PgMYGSHo3daVJ6M6MaqgHOuR7QseCONVweMyq6yvlu3fAH3gw8J4R1E/UuskRiX3A7AC5anAymxe6ObaoileWFHCt4KArFGECcuiUSFlKz/aJ2OevzKnxeqIFQBIAJi5OLkM6fFe8CoQkAI+c/AQYAJS3bT7R7ii4AAAAASUVORK5CYII=) no-repeat 0 0;
  mask:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAScAAAAyCAYAAAAeNh3dAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QzlEMkVFNTZGMEJGMTFFMkJCMkM4MjMxQzAzQkU3NDkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QzlEMkVFNTVGMEJGMTFFMkJCMkM4MjMxQzAzQkU3NDkiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNS4xIE1hY2ludG9zaCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuZGlkOjA0ODAxMTc0MDcyMDY4MTE5OUEwQzRFQ0FGNkUyRTdGIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjA0ODAxMTc0MDcyMDY4MTE5OUEwQzRFQ0FGNkUyRTdGIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+qqWwwwAABkZJREFUeNrsnU2O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) no-repeat 0 0;
}

h1 {
  font-family: 'Gochi Hand', cursive;
  position: relative;
}

h1:before {
  content:url(data:image/png;base64,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);
  position: absolute;
  display: block;
  left: 0px;
  
  -webkit-animation: brush 6s 0s  backwards reverse;
  -moz-animation:    brush 6s 0s  backwards reverse;
  -o-animation:      brush 6s 0s  backwards reverse;
  animation:         brush 6s 0s  backwards reverse;  
  
  -webkit-mask:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAScAAAAyCAYAAAAeNh3dAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QzlEMkVFNTZGMEJGMTFFMkJCMkM4MjMxQzAzQkU3NDkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QzlEMkVFNTVGMEJGMTFFMkJCMkM4MjMxQzAzQkU3NDkiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNS4xIE1hY2ludG9zaCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuZGlkOjA0ODAxMTc0MDcyMDY4MTE5OUEwQzRFQ0FGNkUyRTdGIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjA0ODAxMTc0MDcyMDY4MTE5OUEwQzRFQ0FGNkUyRTdGIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+qqWwwwAABkZJREFUeNrsnU2O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) no-repeat 0 0;
  mask:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAScAAAAyCAYAAAAeNh3dAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QzlEMkVFNTZGMEJGMTFFMkJCMkM4MjMxQzAzQkU3NDkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QzlEMkVFNTVGMEJGMTFFMkJCMkM4MjMxQzAzQkU3NDkiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNS4xIE1hY2ludG9zaCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuZGlkOjA0ODAxMTc0MDcyMDY4MTE5OUEwQzRFQ0FGNkUyRTdGIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjA0ODAxMTc0MDcyMDY4MTE5OUEwQzRFQ0FGNkUyRTdGIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+qqWwwwAABkZJREFUeNrsnU2O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) no-repeat 0 0;
}

@-webkit-keyframes brush {
  0% {
    -webkit-mask-position: 0 0;
    mask-position: 0 0;
  }
  100% {
    -webkit-mask-position: 295px 0px;
    mask-position: 300px 0px;
  }
}
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">


         <div class="col-md-8">
               <div>
<h1>QUIERES CREAR UNA RUTA?</h1><br /><br />
        </div>
         </div>
      

        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="form-label">Selecciona los elementos:</label>
                        <asp:DropDownList runat="server" ID="mySelect" CssClass="form-control" Multiple="Multiple"></asp:DropDownList>
                    </div>
                </div>

                <div>
                    <asp:Image ID="ImageControl" runat="server" />
                </div>

                <div class="col-md-6">
                    <div id="canvas-container">
                        <canvas id="canvas"></canvas>
                    </div>
                </div>

            </div>


        </div>


           <div class="form-container">
           <div class="form-container">
            <div class="form-left">
                <div class="form-group">
                    <label class="label" for="TextBox1">Titulo Comentario</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="hidden-textbox"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="label" for="TextBox2">Comentar</label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="hidden-textbox"></asp:TextBox>
                </div>
            </div>
            </div>


        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/multi-select/0.9.12/js/jquery.multi-select.min.js"></script>
               <script src="js/CrearRuta.js"></script>
    </form>
</body>
</html>


