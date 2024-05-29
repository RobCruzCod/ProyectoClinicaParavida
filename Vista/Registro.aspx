<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoClinicaParavida.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style2 {
            position: relative;
            display: flex;
            flex-wrap: wrap;
            align-items: stretch;
            width: 100%;
            left: 0px;
            top: 49px;
        }        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div align="center" style="margin-top: 2%; margin-bottom: 2%;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/PARAVIDA_Logo.png" Width="150px" />
                </div>
               <div class="form-control card card-body" style="background: #f3f3f3; margin-bottom: 5%;">
                    <fieldset>
                        <div align="center" style="font-size: x-large; margin-bottom: 15px; color: #00bfb8bd;">
                            REGISTRO DE NUEVA CUENTA
                        </div>
                        <div class="text-center" style="padding-top: 1px; background: #80808040; margin-bottom: 23px;"></div>
                        <div align="center" style="margin-bottom: 10px;">
                            Nombres:
                            <div class="input-group" style="max-width: 350px;">
                                <asp:TextBox ID="TextNombre" runat="server" CssClass="form-control" Width="200px" placeholder="Ingrese los nombres..."></asp:TextBox>
                            </div>
                        </div>
                        <div align="center" style="margin-bottom: 10px;">
                            Apellidos:
                            <div class="input-group" style="max-width: 350px;">
                                <asp:TextBox ID="TextApellido" runat="server" CssClass="form-control" Width="200px" placeholder="Ingrese los apellidos..."></asp:TextBox>
                            </div>
                        </div>
                        <div align="center" style="margin-bottom: 10px;">
                            Edad:
                            <div class="input-group" style="max-width: 350px;">
                                <asp:TextBox ID="TextEdad" runat="server" CssClass="form-control" Width="200px" placeholder="##" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                        <div align="center" style="margin-bottom: 10px;">
                            Sexo:
                            <div class="input-group" style="max-width: 350px;">
                                <asp:DropDownList ID="DropSexo" runat="server" CssClass="form-control" Width="200px">
                                    <asp:ListItem Selected="True" Value="x">Seleccionar...</asp:ListItem>
                                    <asp:ListItem>Masculino</asp:ListItem>
                                    <asp:ListItem>Femenino</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div align="center" style="margin-bottom: 10px;">
                            Dirección:
                            <div class="input-group" style="max-width: 350px;">
                                <asp:TextBox ID="TextDireccion" runat="server" CssClass="form-control" Width="200px" placeholder="Ingrese la dirección..."></asp:TextBox>
                            </div>
                        </div>
                        <div align="center" style="margin-bottom: 10px;">
                            Correo:
                            <div class="input-group" style="max-width: 350px;">
                                <asp:TextBox ID="TextCorreo" runat="server" CssClass="form-control" Width="200px" placeholder="Ingrese el correo electrónico..."></asp:TextBox>
                            </div>
                        </div>
                        <div align="center" style="margin-bottom: 10px;">
                            Nombre de usuario:
                            <div class="input-group" style="max-width: 350px;">
                                <asp:TextBox ID="TextUsuario" runat="server" CssClass="form-control" Width="200px" placeholder="Asigne el nombre de usuario..."></asp:TextBox>
                            </div>
                        </div>
                        <div align="center" style="margin-bottom: 10px;">
                            Contraseña:
                            <div class="input-group" style="max-width: 350px;">
                                <asp:TextBox ID="TextClave" runat="server" CssClass="form-control" Width="200px" TextMode="Password" placeholder="Ingrese la contraseña..."></asp:TextBox>
                            </div>
                        </div>
                        <div align="center" style="margin-bottom: 25px;">
                            Confirmar Contraseña:
                            <div class="input-group" style="max-width: 350px;">
                                <asp:TextBox ID="TextConfClave" runat="server" CssClass="form-control" Width="200px" TextMode="Password" placeholder="Confirme la contraseña..."></asp:TextBox>
                            </div>
                        </div> 
                        <div class="text-center" style="padding-top: 1px; background: #80808040; margin-bottom: 23px;"></div>
                        <div align="center" style="margin-bottom: 10px;">
                            <asp:Button ID="BtnEnviar" runat="server" Text="Enviar Registro" class="btn btn-outline-primary" style="width: 245px;"/>
                            <asp:Button ID="Button2" runat="server" Text="Cancelar" OnClick="Button2_Click" class="btn btn-outline-danger" style="width: 100px;"/>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
