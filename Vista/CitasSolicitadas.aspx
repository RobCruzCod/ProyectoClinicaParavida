<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CitasSolicitadas.aspx.cs" Inherits="ProyectoClinicaParavida.CitasSolicitadas" %>

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
                         <asp:Button ID="BtnRegresar" runat="server" Text="Regresar" OnClick="BtnRegresar_Click1" class="btn btn-outline-danger"/>
                     </div>
                 </div>
                    <div class="card card-header">
                         <div align="right">
                             <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/PARAVIDA_Logo.png" Width="190px" />
                         </div>
                        <h1 class="text-center">Clinica ParaVida</h1>
                        <h3 class="text-center">Bienvenido al menu de citas solicitadas pendientes.</h3>
                    </div>
                    <div class="form-control card card-body">
                        <fieldset>
                            <div class="text-center">
                 
                                <asp:GridView ID="GvSolicitadasPendientes" runat="server">
                                </asp:GridView>
                 
                            </div>
                        </fieldset>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
