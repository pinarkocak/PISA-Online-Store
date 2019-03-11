using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Store
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }        

        protected void img_profile_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void img_btn_book_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Book.aspx");
        }

        protected void img_btn_music_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Music.aspx");
        }

        protected void img_btn_magazine_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Magazine.aspx");
        }

        protected void img_btn_movie_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Movie.aspx");
        }

        protected void img_btn_hobby_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Hobby.aspx");
        }
    }
}