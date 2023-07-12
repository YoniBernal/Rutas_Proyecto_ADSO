﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Provincias.aspx.cs" Inherits="SitioWebRutas.Vista.Provincias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="CSS/Provincia.css" rel="stylesheet" />

    <title>Provincias</title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="hero-section">
                <label class="Inform">
                    Las provincias de Boyacá son divisiones administrativas de segundo grado que conforman
                    el departamento colombiano de Boyacá. 
                    En total son 15 provincias en las que se agrupan los 123 municipios del departamento.
                    <br>
                    Según el historiador Javier Ocampo López, la provincia es y ha sido un elemento 
                    fundamental de la psicología profunda del boyacense y por lo tanto, en su modo de 
                    organizarse y relacionarse con el medio ambiente.
                </label>
                <div class="card-grid">
                    <asp:Repeater ID="rep1" runat="server">
                        <ItemTemplate>

                            <a class="card" href="#" data-id="<%# Eval("idProvincia") %>">
                                <div class="card__background" style="background-image: url('<%# Eval("Imagen") %>');"></div>
                                <div class="card__content">
                                    <h4 class="card__category"><%# Eval("NombreProvincia") %></h4>
                                    <h3 class="card__heading"></h3>
                                </div>
                            </a>

                        </ItemTemplate>
                    </asp:Repeater>
                </div>

            </section>
        </div>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="Js/Provincias.js"></script>

    </form>
</body>
</html>
