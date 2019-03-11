using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Store
{
    public partial class Administrator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void img_icon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btn_addBook_Click(object sender, EventArgs e)
        {
            PISAEntity my_entity = new PISAEntity();
            fl_upld_image.SaveAs(Server.MapPath("img/BookImages/" + fl_upld_image.FileName));
            int length = fl_upld_image.PostedFile.ContentLength;
            byte[] pic = new byte[length];
            fl_upld_image.PostedFile.InputStream.Read(pic, 0, length);

            TblBook my_book = new TblBook
            {
                BookId = 2,
                Name = txt_bookName.Text.ToString(),
                Author = txt_bookAuthor.Text.ToString(),
                Isbn = Convert.ToInt32(txt_bookIsbn.Text),
                Publisher = txt_bookPublisher.Text.ToString(),
                Page = Convert.ToInt32(txt_bookPage.Text),
                Price = Convert.ToDouble(txt_bookPrice.Text),
                Stock = Convert.ToInt32(txt_bookStock.Text),
                Image = pic
            };
            my_entity.TblBook.Add(my_book);
            my_entity.SaveChanges();
        }

        protected void btn_SearchISBN_Click(object sender, EventArgs e)
        {
            fl_upld_imageforUpdate.SaveAs(Server.MapPath("img/BookImages/" + fl_upld_imageforUpdate.FileName));
            int length = fl_upld_image.PostedFile.ContentLength;
            byte[] pic = new byte[length];
            fl_upld_imageforUpdate.PostedFile.InputStream.Read(pic, 0, length);
            int isbn = Convert.ToInt32(txt_ISBNforUpdate.Text);
            using (PISAEntity my_entity = new PISAEntity())
            {
                var updatebook = (from s in my_entity.TblBook
                                  where s.Isbn == isbn
                                  select s).FirstOrDefault();
                updatebook.Name = txt_bookName.Text.ToString();
                updatebook.Author = txt_bookAuthor.Text.ToString();
                updatebook.Isbn = Convert.ToInt32(txt_bookIsbn.Text);
                updatebook.Publisher = txt_bookPublisher.Text.ToString();
                updatebook.Page = Convert.ToInt32(txt_bookPage.Text);
                updatebook.Price = Convert.ToDouble(txt_bookPrice.Text);
                updatebook.Stock = Convert.ToInt32(txt_bookStock.Text);
                updatebook.Image = pic;
                my_entity.SaveChanges();
            }
        }

        protected void btn_SearchIsbnforDelete_Click(object sender, EventArgs e)
        {
            int isbn = Convert.ToInt32(txt_ISBNforDelete.Text);
            using (PISAEntity my_pisaentity = new PISAEntity())
            {
                var deletebook = (from s in my_pisaentity.TblBook
                                  where s.Isbn == isbn //Silinecek kitapın ürün kodu
                                  select s).FirstOrDefault();

                my_pisaentity.TblBook.Remove(deletebook);
                my_pisaentity.SaveChanges();
            }
        }

        protected void txt_ISBNforDelete_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txt_bookStock_TextChanged(object sender, EventArgs e)
        {

        }
    }
}