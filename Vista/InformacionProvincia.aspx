<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformacionProvincia.aspx.cs" Inherits="SitioWebRutas.Vista.InformacionProvincia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="CSS/InformProvincia.css" rel="stylesheet" />
    <title>Información Provincia</title>
</head>
<body>

    <div class="ba">
        <div class="center">
            <div class="card--container">
                <div class="card card--one">
                    <div class="card--title">
                        <h2>
                            <asp:Label ID="lblNombre" runat="server" Text="Nombre Provincia"></asp:Label></h2>
                    </div>
                </div>
                <div class="card-container">
                    <div class="card card--two">
                        <div class="card--title">
                            <h3>
                                <asp:Label runat="server" Text="Municipios"></asp:Label></></h3>
                            <asp:Repeater ID="ListaMunicipios" runat="server">
                                <HeaderTemplate>
                                    <ul class="ulMunicipios">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li>
                                        <%# Eval("Nombre")%>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                        <span class="card--author"></span>
                    </div>

                    <span class="card card--three">
                        <span class="card--title">
                            <h4>
                                <asp:Label ID="lbldescripcion" runat="server" Text="Descripción"></asp:Label>
                            </h4>
                        </span>

                        <span class="card--author"></span>
                    </span>
                </div>
            </div>
            <div class="center--row menu-container">
            </div>
        </div>
    </div>
</body>
</html>
