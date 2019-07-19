<%@ Page Title="Crear categoría" Language="C#" MasterPageFile="~/Layouts/Site.Master" AutoEventWireup="true" CodeBehind="CrearCategoria.aspx.cs" Inherits="BlogAppV2.CrearCategoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Encabezado" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div class="container">
        <h2>Ingresar categoría</h2>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <!-- UpdateProgress -->
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <span>Cargando...</span>
                    </ProgressTemplate>
                </asp:UpdateProgress>

                <!-- Contenido que quieren que haga Ajax -->
                <asp:Label ID="LblMensajes" CssClass="text-danger" runat="server" Text=""></asp:Label>
        <div class="form-group">
            <label for="Categoria">Nombre categoría</label>
                <asp:TextBox ID="Categoria" CssClass="form-control" runat="server"></asp:TextBox>
                <!-- <input type="text" class="form-control" name="categoria" id="categoria" /> -->
        </div>
        <asp:Button ID="BtnGuardar" CssClass="btn btn-primary" runat="server" Text="Añadir" OnClick="BtnGuardar_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
