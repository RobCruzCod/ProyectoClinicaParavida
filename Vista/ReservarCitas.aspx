<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservarCitas.aspx.cs" Inherits="ProyectoClinicaParavida.ReservarCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body style="background-color: #0075ff1a;">
    <form id="form1" runat="server">
        <div>
            <div class="container d-flex justify-content-center">
                <div class="col-8">

                    <div align="left" style="margin-top: 5%; margin-bottom: 10px;">
                        <asp:Button ID="BtnRegresar" runat="server" Text="Regresar al menú" class="btn btn-outline-danger" OnClick="BtnRegresar_Click" />
                    </div>

                    <div class="card card-header" style="background-color: white;">
                        <div class="row">
                            <div class="col-8">
                                <h1 style="margin-left: 10px; color: #00bfb8bd;">Clinica ParaVida</h1>
                                <h3 style="margin-left: 10px; color: #6c757ddb;">Programar Cita</h3>
                            </div>
                            <div class="col-4" align="right">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/PARAVIDA_Logo.png" Width="190px" style="margin-right: 40px"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-control card card-body" style="background: #f3f3f3; margin-bottom: 5%;">
                        <fieldset>
                            
                            <div class="text-center" style="margin-top: 15px;">
                                <h4 style="padding: 5px; color: dimgray">FORMULARIO</h4>
                            </div>

                            <div class="text-center" style="padding-top: 1px; background: #80808040; margin-bottom: 23px;"></div>

                            <div align="center" style="margin-bottom: 10px;">
                                <h6>Nombre del paciente:</h6>
                                <div class="input-group" style="max-width: 350px;">
                                    <asp:TextBox ID="TextNombre" runat="server" CssClass="form-control" Width="200px" placeholder="Nombre Completo..." ReadOnly="False"></asp:TextBox>
                                </div>
                            </div>
                            <div align="center" style="margin-bottom: 10px;">
                                <h6>DUI del paciente:</h6>
                                <div class="input-group" style="max-width: 350px;">
                                    <asp:TextBox ID="TextDui" runat="server" CssClass="form-control" Width="200px" placeholder="DUI del paciente..." ReadOnly="False"></asp:TextBox>
                                </div>
                            </div>

                            <div align="center" style="margin-bottom: 10px;">                                
                                <h6>Doctor:</h6>
                                <div class="input-group" style="max-width: 350px;">
                                    <asp:DropDownList ID="DdlDoctor" runat="server" CssClass="form-control"  Width="200px">

                                    </asp:DropDownList>
                                </div>
                            </div>
                            
                            <div align="center" style="margin-bottom: 10px;">
                                <h6>Elegir Hora:</h6>
                                <div class="input-group" style="max-width: 350px;">
                                    <asp:TextBox ID="TxtHora" runat="server" CssClass="form-control"  Width="200px" TextMode="Time"></asp:TextBox>
                                </div>
                            </div>

                            <div align="center">                                
                                <h6>Fecha y Hora:</h6>
                                <div style="width: 255px; padding-bottom: 15px;">
                                    <asp:Calendar align="center" ID="CalFechaCitaProgramar" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" CssClass="form-control" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
                                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                        <TodayDayStyle BackColor="#CCCCCC" />
                                    </asp:Calendar>
                                </div>
                            </div>

                            <div class="text-center" style="padding-top: 1px; background: #80808040; margin-bottom: 23px;"></div>

                            <div align="center" style="margin-bottom: 10px;">
                                <asp:Button ID="BtnReservarCita" runat="server" Text="Enviar Registro" class="btn btn-outline-success" style="width: 245px;"/>
                            </div>

                        </fieldset>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
