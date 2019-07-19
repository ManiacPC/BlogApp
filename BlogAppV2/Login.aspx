<%@ Page Title="Iniciar sesión" Language="C#" MasterPageFile="~/Layouts/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BlogAppV2.Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
<div class="container">
    <h3 class="mt-5">
       <font face="Verdana">Iniciar sesión</font>
    </h3>
        <div class="form-group">
            <label for="usuario">Usuario:</label>
            <asp:TextBox ID="TxtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
            <ASP:RequiredFieldValidator ControlToValidate="TxtUsuario"
               Display="Static" ErrorMessage="*" runat="server" 
               ID="Requerido1" />
        </div>

        <div class="form-group">
            <label for="password">Contraseña:</label>
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            <ASP:RequiredFieldValidator ControlToValidate="TxtPassword"
               Display="Static" ErrorMessage="*" runat="server"  
                ID="Requerido2" />
        </div>
        <div class="form-group">
            <label for="recuerdame">Recordarme</label>
            <ASP:CheckBox id="ChkRecordar" runat="server" autopostback="false" />
        </div>
        <asp:Button ID="BtnEnviar" CssClass="btn btn-primary" runat="server" Text="Acceder" OnClick="BtnEnviar_Click" />

        <asp:Label id="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" />
    </div>
</asp:Content>

