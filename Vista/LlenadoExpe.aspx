<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LlenadoExpe.aspx.cs" Inherits="ProyectoClinicaParavida.LlenadoExpe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container d-flex justify-content-center">
    <div class="col-8">
    <div align="left">
         <div>
             <asp:Button ID="BtnRegresar" runat="server" Text="Regresar" class="btn btn-outline-danger" OnClick="BtnRegresar_Click"/>
         </div>
     </div>
        <div class="card card-header">
             <div align="right">
                 <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/PARAVIDA_Logo.png" Width="190px" />
             </div>
            <h1 class="text-center">Clinica ParaVida</h1>
            <h3 class="text-center">Bienvenido/a al menu de Llenado de expedientes.</h3>
        </div>
        <div class="form-control card card-body">
            <fieldset>
                <div class="text-center">
                    <div class="input-group"> 
                        <asp:Label ID="Label5" runat="server" Text="Fecha:" CssClass="form-control"></asp:Label>
                        <asp:TextBox ID="TxtFecha" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="input-group"> 
                        <asp:Label ID="Label1" runat="server" Text="Paciente:" CssClass="form-control"></asp:Label>
                        <asp:TextBox ID="TxtPaciente" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group"> 
                        <asp:Label ID="Label4" runat="server" Text="Doctor Asignado:" CssClass="form-control"></asp:Label>
                        <asp:TextBox ID="TxtDoctor" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group"> 
                        <asp:Label ID="Label2" runat="server" Text="Diagnostico:" CssClass="form-control"></asp:Label>
                        <asp:TextBox ID="TxtDiagnostico" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="input-group"> 
                        <asp:Label ID="Label3" runat="server" Text="Receta Medica:" CssClass="form-control"></asp:Label>
                        <asp:TextBox ID="TxtRecetaMedica" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <br /><br />
                    <div class="input-group"> 
                         <asp:Button ID="BtnAgregarExpe" runat="server" Text="Agregar Expediente." class="btn btn-outline-success" />
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
