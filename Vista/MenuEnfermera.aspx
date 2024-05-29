<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuEnfermera.aspx.cs" Inherits="ProyectoClinicaParavida.MenuEnfermera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menú Medicos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body style="background-color: #ffebed;">
    <form id="form1" runat="server">
        <div>
            <div class="container d-flex justify-content-center">
                <div class="col-8">

                    <div align="left" style="margin-top: 5%; margin-bottom: 10px;">
                        <asp:Button ID="BtnRegresar" runat="server" Text="Cerrar sesión" class="btn btn-outline-danger" OnClick="BtnRegresar_Click" />
                    </div>

                    <div class="card card-header" style="background-color: white;">
                        <div class="row">
                            <div class="col-8">
                                <h1 style="margin-left: 10px; color: #f98a94;">Clinica ParaVida</h1>
                                <h3 style="margin-left: 10px; color: #6c757ddb;">Bienvenido Personal Medico</h3>
                            </div>
                            <div class="col-4" align="right">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/PARAVIDA_Logo.png" Width="190px" style="margin-right: 40px"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-control card card-body" style="background: #f3f3f3;">
                        <fieldset>

                            <div class="text-center" style="margin-top: 15px;">
                                <h4 style="padding: 5px; color: dimgray">MENÚ</h4>
                            </div>

                            <div class="text-center" style="padding-top: 1px; background: #80808040; margin-bottom: 23px;"></div>

                            <div align="center">
                                <asp:Button ID="BtnCitasPendientes" runat="server" Text="LISTADO DE CITAS SOLICITADAS" class="btn btn-primary btn-lg" OnClick="BtnCitasPendientes_Click" style="width: 60%; background: #ff6674;"/>
                            </div>
                            <br />
                            <div align="center">
                                <asp:Button ID="BtnCitas" runat="server" Text="LISTADO DE CITAS PROGRAMADAS" class="btn btn-primary btn-lg" OnClick="BtnCitas_Click" style="width: 60%; background: #ff6674;"/>
                            </div>
                            <br />

                            <div class="text-center" style="padding-top: 1px; background: #80808040; margin-bottom: 23px;"></div>

                            <div align="center">
                                <asp:Button ID="BtnProgramarCita" runat="server" Text="PROGRAMAR CITA A PACIENTE" class="btn btn-primary btn-lg" OnClick="BtnProgramarCita_Click" style="width: 60%; background: #993a00;"/>
                            </div>
                            <br />
                            <div align="center">
                                <asp:Button ID="BtnLLenadoExpe" runat="server" Text="LLENADO DE EXPEDIENTES" class="btn btn-primary btn-lg" OnClick="BtnLLenadoExpe_Click" style="width: 60%; background: #993a00; margin-bottom: 5%"/>
                            </div>

                        </fieldset>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
