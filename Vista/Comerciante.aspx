<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comerciante.aspx.cs" Inherits="SitioWebRutas.Vista.Comerciante" %>

<!DOCTYPE html>

<html lang ="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="Survey.css">
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <meta name="viewport" content="width-device-width, initial-scale=1.0">
  <link href="CSS/Comerciante.css" rel="stylesheet" />


  <title>Comerciante</title>
  </head>
<body>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<main id="container">
  <form id="login_form">
    <div id="form_header">
      <h2>Establecimiento</h2>
      <i id="mode_icon" class="fa-solid fa-moon"></i>
    </div>
      
      <div class="input-box">
        <label for="name">Nombre del Establecimiento </label>
          <div class="input-field">
            <i class="fa-solid fa-user"></i>
          <input type="text" id="name" name="name">
        </div>
      </div>
            
      <div class="input-box">
        <label for="esta">Dirección del Establecimiento </label>
          <div class="input-field">
            <i class="fa-solid fa-user"></i>
          <input type="text" id="dirc" name="name">
        </div>
      </div>
       
       <div class="Motivo mb-3">
              <label for="txtDescripcion" class="form-label">Descripción del Establecimiento </label>
              <textarea class="form-control" runat="server" id="txtDescripcion" rows="3"></textarea>
       </div>

     <%-- <div class="mb-3">
               <label class="control-label">Seleccione el tipo de Establecimiento: </label>
                <asp:DropDownList ID="ddlEstablecimiento" 
                AppendDataBound="true" runat="server" 
                Visible="True" CssClass="form-select" 
                OnSelectedIndexChanged="ddlEspecialidad_SelectedIndexChanged"
                AutoPostBack="true"
                Width="269px">
       </asp:DropDownList>
       </div>

      <div class="mb-3">
               <label class="control-label">Seleccione el municipio en el que esta ubicado el establecimiento: </label>
                <asp:DropDownList ID="ddlMunicipio" 
                AppendDataBound="true" runat="server" 
                Visible="True" CssClass="form-select" 
                OnSelectedIndexChanged="ddlEspecialidad_SelectedIndexChanged"
                AutoPostBack="true"
                Width="269px">
       </asp:Dr>opDownList>  
       </div> --%>

      <button type="submit" id="login_button">
        Login
      </button>


              <script src="Js/Comerciante.js"></script>

  </form>

</main>

  
</body>
</html>


