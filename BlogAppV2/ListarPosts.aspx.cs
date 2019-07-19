using BlogAppV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogAppV2
{
    public partial class ListarPosts : System.Web.UI.Page
    {
        public List<Post> posts = new List<Post>();

        protected void Page_Load(object sender, EventArgs e)
        {
            using(blog_dbEntities bd = new blog_dbEntities())
            {
                this.posts = bd.Post.ToList();

                Post p = (Post) posts[0];
                var test = p.Contiene;
                GridPosts.DataSource = posts;
                GridPosts.DataBind();
            };

        }
    }
}