using BlogAppV2.Helpers;
using BlogAppV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogAppV2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            if(String.IsNullOrEmpty(TxtUsuario.Text) || String.IsNullOrEmpty(TxtPassword.Text))
            {
                lblMsg.Text = "Debe escribir las credenciales";
            }
            else
            {
                string user = TxtUsuario.Text;
                string pass = CriptographyHelper.ComputeSha256Hash(TxtPassword.Text);

                using(blog_dbEntities bd = new blog_dbEntities())
                {
                    if(bd.Usuario.Count(x => x.Email == user && x.Password == pass) > 0)
                    {
                        FormsAuthentication.RedirectFromLoginPage(user, ChkRecordar.Checked);
                        Response.Redirect("ListarCategorias.aspx");
                        // Exitoso
                    }
                    else
                    {
                        lblMsg.Text = "Credenciales equivocadas, intente otra vez";
                        // No exitoso
                    }
                }
            }

        }
    }
}