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
        BookObj my_book = BookObj.GetBook;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void img_icon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        //If book id is been at database, show button of update operation
        protected void btn_SearchISBN_Click(object sender, EventArgs e)
        {
            if (my_book.search(Convert.ToInt32(txt_ISBNforUpdate.Text)))
            {
                btn_updateBook.Visible = true;
            }
            
        }

        /// <summary>
        /// Delete operation for book and used id of deleted book
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btn_SearchIsbnforDelete_Click(object sender, EventArgs e)
        {
            my_book.delete(Convert.ToInt32(txt_ISBNforDelete.Text));
        }


        /// <summary>
        /// Update process uses the id information of the book
        /// This operation visible if id of book is been on database
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btn_updateBook_Click(object sender, EventArgs e)
        {
            fl_upld_imageforUpdate.SaveAs(Server.MapPath("img/bookImage/" + fl_upld_imageforUpdate.FileName));
            int length = fl_upld_imageforUpdate.PostedFile.ContentLength;
            byte[] img = new byte[length];
            fl_upld_imageforUpdate.PostedFile.InputStream.Read(img, 0, length);
            my_book.Name = txt_bookNameupdate.Text.ToString();
            my_book.Author = txt_bookAuthorupdate.Text.ToString();
            my_book.Publisher = txt_bookPublisherupdate.Text.ToString();
            my_book.Isbn = Convert.ToDecimal(txt_bookIsbnupdate.Text);
            my_book.Page = Convert.ToInt32(txt_bookPageupdate.Text);
            my_book.Price = Convert.ToDecimal(txt_bookPriceupdate.Text);
            my_book.Stock = Convert.ToInt32(txt_bookStockupdate.Text);
            my_book.Point = 5;
            my_book.Amount = 7;
            my_book.Image = img;
            my_book.update(Convert.ToInt32(txt_ISBNforUpdate.Text));
        }


        /// <summary>
        /// Insert operation via book object and using insert() method
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btn_insertBook_Click(object sender, EventArgs e)
        {
            fl_upld_image.SaveAs(Server.MapPath("img/bookImage/" + fl_upld_image.FileName));
            int length = fl_upld_image.PostedFile.ContentLength;
            byte[] img = new byte[length];
            fl_upld_image.PostedFile.InputStream.Read(img, 0, length);
            my_book.Name = txt_bookName.Text.ToString();
            my_book.Author = txt_bookAuthor.Text.ToString();
            my_book.Publisher = txt_bookPublisher.Text.ToString();
            my_book.Isbn = Convert.ToDecimal(txt_bookIsbn.Text);
            my_book.Page = Convert.ToInt32(txt_bookPage.Text);
            my_book.Price = Convert.ToDecimal(txt_bookPrice.Text);
            my_book.Stock = Convert.ToInt32(txt_bookStock.Text);
            my_book.Point = 5;
            my_book.Amount = 7;
            my_book.Image = img;
            my_book.insert();
        }
    }
}