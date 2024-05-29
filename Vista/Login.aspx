<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoClinicaParavida.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div align="center" style="margin-top: 10%; margin-bottom: 5%;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/PARAVIDA_Logo.png" Width="350px" />
                </div>
                <div class="form-control card card-body" style="background: #f3f3f3;">
                    <fieldset>
                        <div align="center" style="font-size: xx-large; color: #00bfb8bd;">
                            INICIO DE SESIÓN
                        </div>
                            <div class="text-center" style="padding-top: 1px; background: #80808040; margin-bottom: 23px;"></div>
                        <div align="center">
                            Usuario:
                            <div class="input-group" style="max-width: 350px;">
                                <asp:TextBox ID="TxtUsuario" runat="server" CssClass="form-control" Width="200px" placeholder="(prueba: user01)..."></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div align="center">
                            Contraseña:
                            <div class="input-group" style="max-width: 350px;">
                                <asp:TextBox ID="TxtContra" runat="server" TextMode="Password" CssClass="form-control" Width="200px" placeholder="(prueba: clave123)..."></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="text-center" style="padding-top: 1px; background: #80808040; margin-bottom: 23px;"></div>
                        <div align="center" style="margin-bottom: 3%;">
                            <asp:Button ID="BtnEnviar" runat="server" Text="Ingresar" class="btn btn-outline-success" OnClick="Ingresar_Click" style="width: 170px;"/>
                        </div>
                        <div align="center" style="margin-bottom: 10px;">
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registro.aspx" CssClass="">¿Desea registrarse?</asp:HyperLink>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>       
    </form>
</body>
</html>
