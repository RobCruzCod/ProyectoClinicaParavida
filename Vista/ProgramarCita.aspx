<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProgramarCita.aspx.cs" Inherits="ProyectoClinicaParavida.ProgramarCita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: var(--bs-body-color);
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-clip: padding-box;
            border-radius: var(--bs-border-radius);
            transition: none;
            background-color: var(--bs-body-bg);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div align="left">
                     <div>
                         <asp:Button ID="BtnRegresar" runat="server" Text="Regresar" OnClick="BtnRegresar_Click" class="btn btn-outline-danger"/>
                     </div>
                 </div>
                <div class="card card-header">
                     <div align="right">
                         <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/PARAVIDA_Logo.png" Width="190px" />
                     </div>
                     <h1 class="text-center">Clinica ParaVida</h1>
                     <h3 class="text-center">Programar Cita.</h3>
                </div>
                <div class="form-control card card-body">
                    <fieldset>
                        <div class="input-group">
                            <asp:Label ID="Label1" runat="server" Text="No.DUI:" CssClass="form-control" Width="100px"></asp:Label>
                            <asp:TextBox ID="TxtDUI" runat="server" CssClass="form-control" Width="400px" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <asp:Label ID="Label2" runat="server" Text="Nombre del Paciente:" CssClass="form-control" Width="100px"></asp:Label>
                            <asp:TextBox ID="TxtNombrePaciente" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="Label3" runat="server" Text="Elegir Fecha:" CssClass="form-control" Width="200px"></asp:Label>
                            <asp:Calendar ID="CalFecha" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" CssClass="form-control" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </div>
                        <br/><br/>
                        <div class="input-group">
                            <asp:Label ID="Label4" runat="server" Text="Elegir Hora:" CssClass="form-control" Width="100px"></asp:Label>
                            <asp:TextBox ID="TxtHora" runat="server" CssClass="form-control" Width="400px" TextMode="Time"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <asp:Label ID="Label5" runat="server" Text="Doctor" CssClass="form-control" Width="100px"></asp:Label>
                            <asp:DropDownList ID="DdlDoctor" runat="server" CssClass="form-control" Width="400px">
                            </asp:DropDownList>
                        </div>
                        <br/>
                        <div>
                            <asp:Button ID="BtnProgramarCita" runat="server" Text="Programar Cita" class="btn btn-outline-success"/>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
