<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/Site.Master" AutoEventWireup="true" CodeBehind="ListarPosts.aspx.cs" Inherits="BlogAppV2.ListarPosts" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div class="container">
        <asp:GridView ID="GridPosts" 
        AutoGenerateColumns="false"
        runat="server" 
        CssClass="table table-stripped"
        EmptyDataText="No existen posts">
        <Columns>
            <asp:BoundField HeaderText="Titulo" DataField="Titulo"></asp:BoundField>
            <asp:BoundField HeaderText="Contenido" DataField="Contenido"></asp:BoundField>
            <asp:BoundField HeaderText="Autor" DataField="Usuario.Nombre"></asp:BoundField>
            <asp:BoundField HeaderText="Fecha Post" DataField="FechaIngreso" HtmlEncode="false" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
            <asp:BoundField HeaderText="Categorias"></asp:BoundField>
        </Columns>



        </asp:GridView>
    </div>
</asp:Content>

