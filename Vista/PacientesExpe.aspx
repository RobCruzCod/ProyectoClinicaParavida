<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PacientesExpe.aspx.cs" Inherits="ProyectoClinicaParavida.PacientesExpe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Expedientes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body style="background-color: #0075ff1a;">
    <form id="form1" runat="server">
        <div>
            <div class="container d-flex justify-content-center">
                <div class="col-8">
                    
                    <div align="left" style="margin-top: 5%; margin-bottom: 10px;">
                        <asp:Button ID="BtnRegresar" runat="server" Text="Regresar al historial"  class="btn btn-outline-danger" OnClick="BtnRegresar_Click"/>
                    </div>

                    <div class="card card-header" style="background-color: white;">                    
                        <div class="row">
                            <div class="col-8">
                                <h1 style="margin-left: 10px; color: #00bfb8bd;">Clinica ParaVida</h1>
                                <h3 style="margin-left: 10px; color: #6c757ddb;">Expedientes</h3>
                            </div>
                            <div class="col-4" align="right">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/PARAVIDA_Logo.png" Width="190px" style="margin-right: 40px"/>
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-control card card-body" style="background: #f3f3f3;">
                        <fieldset>

                            <div class="text-center" style="margin-top: 8px;">
                                <h5 style="padding: 2px; color: #212529">Elija la fecha de la cita a consultar:</h5>
                            </div>

                            <div align="center">
                                <div style="width: 255px; padding-bottom: 15px;">
                                    <asp:Calendar align="center" ID="CalFechaCitaExpe" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" CssClass="form-control" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
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
                        
                            <div style="margin-bottom: 10px;">
                                <h6>Informacion del Paciente:</h6>
                                <div class="input-group">
                                    <asp:TextBox ID="LbInfoPaciente" runat="server" CssClass="form-control" placeholder="..." EnableTheming="True" ReadOnly="True" Rows="2" TextMode="MultiLine" style="resize: none;"></asp:TextBox>
                                </div>
                            </div>
                            <div style="margin-bottom: 10px;">
                                <h6>Diagnostico:</h6>
                                <div class="input-group">
                                    <asp:TextBox ID="LbDiagnostico" runat="server" CssClass="form-control" placeholder="..." EnableTheming="True" ReadOnly="True" Rows="2" TextMode="MultiLine" style="resize: none;"></asp:TextBox>
                                </div>
                            </div>
                            <div style="margin-bottom: 10px;">
                                <h6>Receta Medica:</h6>
                                <div class="input-group">
                                    <asp:TextBox ID="LbReceta" runat="server" CssClass="form-control" placeholder="..." EnableTheming="True" ReadOnly="True" Rows="2" TextMode="MultiLine" style="resize: none;"></asp:TextBox>
                                </div>
                            </div>

                        </fieldset>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
