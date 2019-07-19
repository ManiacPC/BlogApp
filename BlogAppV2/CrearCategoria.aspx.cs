using BlogAppV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogAppV2
{
    public partial class CrearCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            // [C]rud

            /* 
             * 1) Obtener el texto desde el input (Categoria)
             * 2) Validar que tenga al menos tres caracteres
             * 3) Añadir al almacenamiento persistente (BD)
             */

            // Obtener el texto
            string nombreCategoria = Categoria.Text;

            // Error de validación
            if (Categoria.Text.Trim().Length < 3)
            {
                LblMensajes.CssClass = "text-danger";
                LblMensajes.Text = "El nombre debe tener un largo de al menos tres caracteres";
            }
            // Pasó la validación
            else
            {
                // RECORDAR: BlogDBEntities
                blog_dbEntities bd = new blog_dbEntities(); // <- Conexión a BD
                // Nuevo objeto
                Categoria c = new Categoria();
                c.Nombre = nombreCategoria;
                bd.Categoria.Add(c);
                bd.SaveChanges();

                // Bonus
                LblMensajes.CssClass = "text-success";
                LblMensajes.Text = $"La categoría {nombreCategoria} ha sido agregada";

            }


        }
    }
}