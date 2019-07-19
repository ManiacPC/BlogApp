<%@ Page Title="Editar categoría" Language="C#" MasterPageFile="~/Layouts/Site.Master" AutoEventWireup="true" CodeBehind="EditarCategoria.aspx.cs" Inherits="BlogAppV2.EditarCategoria" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div class="container">
        <asp:Label ID="LblMensajes" CssClass="text-danger" runat="server" Text=""></asp:Label>
        <div class="form-group">
            <label for="Categoria">Nombre categoría</label>
                <asp:TextBox ID="TxtCategoria" CssClass="form-control" runat="server"></asp:TextBox>
                <!-- <input type="text" class="form-control" name="categoria" id="categoria" /> -->
        </div>
        <asp:Button ID="BtnGuardar" CssClass="btn btn-primary" runat="server" Text="Editar" OnClick="BtnGuardar_Click" />

    </div>
</asp:Content>