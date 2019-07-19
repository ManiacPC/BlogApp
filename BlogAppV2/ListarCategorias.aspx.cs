using BlogAppV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogAppV2
{
    public partial class ListarCategorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                /*
                 * Obtener datos de la tabla categoria
                */

                // c[R]ud

                // USING = Usa el objeto hasta que terminen las llaves
                // y luego lo elimino de memoria
                using (blog_dbEntities bd = new blog_dbEntities())
                {
                    List<Categoria> categorias = new List<Categoria>();
                    categorias = bd.Categoria.ToList();

                    GridCategorias.DataSource = categorias;
                    GridCategorias.DataBind();
                }; // Al momento de cerrar llaves y pasar de esta línea, 
                   // se elimina el objeto bd de memoria
            };
        }

        protected void GridCategorias_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                // cru[D]
                int codCategoria = int.Parse(e.CommandArgument.ToString());

                using (blog_dbEntities bd = new blog_dbEntities())
                {
                    Categoria c = bd.Categoria.Find(codCategoria);

                    bd.Categoria.Remove(c);
                    try
                    {
                        bd.SaveChanges();
                    }
                    catch (Exception)
                    {
                        LblMensajes.Text = "Ocurrió un error al eliminar la categoría";
                    }

                    LblMensajes.CssClass = "text-success";
                    LblMensajes.Text = $"La categoría {c.Nombre} ha sido eliminada exitosamente";
                }

            }
            else if (e.CommandName.Equals("actualizar"))
            {
                int codCategoria = int.Parse(e.CommandArgument.ToString());
                Response.Redirect($"~/EditarCategoria.aspx?codCategoria={codCategoria}");
            }
        }
    }

}