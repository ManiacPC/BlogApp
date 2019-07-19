<%@ Page Title="Listado de Categorías" Language="C#" MasterPageFile="~/Layouts/Site.Master" AutoEventWireup="true" CodeBehind="ListarCategorias.aspx.cs" Inherits="BlogAppV2.ListarCategorias" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div class="container">
         <h2>Listado de categorias</h2>
    <asp:Label ID="LblMensajes" CssClass="text-danger" runat="server" Text=""></asp:Label>
    <asp:GridView ID="GridCategorias"
        OnRowCommand="GridCategorias_RowCommand"
        AutoGenerateColumns="false"
        runat="server" 
        CssClass="table table-hover"
        EmptyDataText="No existen categorias">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre"></asp:BoundField>
            <asp:TemplateField HeaderText="Acciones">
                <ItemTemplate>
                    <asp:Button CssClass="btn btn-danger" 
                        Text="Eliminar categoria" 
                        runat="server"  
                        CommandName="eliminar"
                        CommandArgument='<%# Eval("CodCategoria")  %>'
                        />
                                        <asp:Button CssClass="btn btn-danger" 
                        Text="Editar categoria" 
                        runat="server"  
                        CommandName="editar"
                        CommandArgument='<%# Eval("CodCategoria")  %>'
                        />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </div>
</asp:Content>
