<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CitasActivas.aspx.cs" Inherits="ProyectoClinicaParavida.Citas_Activas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Citas Activas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body style="background-color: #0075ff1a;">
    <form id="form1" runat="server">
        <div>
            <div class="container d-flex justify-content-center">
                <div class="col-8">

                    <div align="left" style="margin-top: 5%; margin-bottom: 10px;">
                        <asp:Button ID="BtnRegresar" runat="server" Text="Regresar al menú" class="btn btn-outline-danger" OnClick="BtnRegresar_Click"/>
                    </div>

                    <div class="card card-header" style="background-color: white;">
                        <div class="row">
                            <div class="col-8">
                                <h1 style="margin-left: 10px; color: #00bfb8bd;">Clinica ParaVida</h1>
                                <h3 style="margin-left: 10px; color: #6c757ddb;">Citas Activas</h3>
                            </div>
                            <div class="col-4" align="right">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/PARAVIDA_Logo.png" Width="190px" style="margin-right: 40px"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-control card card-body" style="background: #f3f3f3;">
                        <fieldset>
                            <div class="text-center" style="margin-top: 15px;">
                                <h4 style="padding: 5px; color: dimgray">LISTA ACTIVAS</h4>
                            </div>
                            <div class="text-center" style="padding-top: 1px; background: #80808040; margin-bottom: 5%;"></div>
                            <div align="center" style="margin-bottom: 30px">
                                <asp:GridView ID="GvCitasActivas" runat="server" BorderWidth="2px" CellPadding="4" CellSpacing="1" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" BorderWidth="2px" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
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
