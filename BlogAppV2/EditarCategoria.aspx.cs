using BlogAppV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogAppV2
{
    public partial class EditarCategoria : System.Web.UI.Page
    {
        private int codCategoria;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.codCategoria = int.Parse(Request.QueryString["codCategoria"]);

            using (blog_dbEntities bd = new blog_dbEntities())
            {
                Categoria c = bd.Categoria.Find(codCategoria);

                // Sin binding
                TxtCategoria.Text = c.Nombre;

            }
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            using (blog_dbEntities bd = new blog_dbEntities())
            {
                Categoria c = bd.Categoria.Find(this.codCategoria);
                c.Nombre = TxtCategoria.Text;
                //bd.Categoria.Add(c);
                bd.SaveChanges(); // ToDo: Try...Catch

                LblMensajes.CssClass = "text-sucess";
                LblMensajes.Text = $"La categoría {c.Nombre} ha sido actualizado exitosamente";

            }
        }
    }
}