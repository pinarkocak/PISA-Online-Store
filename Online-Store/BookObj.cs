using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Store
{
    public class BookObj: Product
    {
        private string author;
        private decimal isbn;
        private string publisher;
        private int page;
        private static Object _object = new Object();
        private static BookObj myBook;
        private BookObj() { }
        public static BookObj GetBook
        {
            get
            {
                lock (_object)
                {

                    return myBook ?? new BookObj();
                }
            }
        }

        public int Page { get => page; set => page = value; }
        public string Publisher { get => publisher; set => publisher = value; }
        public decimal Isbn { get => isbn; set => isbn = value; }
        public string Author { get => author; set => author = value; }

        public override void insert()
        {
            using (PISAEntity i_entity = new PISAEntity())
            {
                TblBook tblbook = new TblBook();
                tblbook.BookName = Name;
                tblbook.BookAuthor = Author;
                tblbook.BookPublisher = Publisher;
                tblbook.ISBN = Isbn;
                tblbook.BookPage = Page;
                tblbook.BookPrice = Price;
                tblbook.BookStock = Stock;
                tblbook.BookImage = Image;
                tblbook.BookPoint = Point;
                tblbook.BookAmount = Amount;
                i_entity.TblBook.Add(tblbook);
                i_entity.SaveChanges();
            }
        }

        public override void delete(int id)
        {
            using (PISAEntity d_entity = new PISAEntity())
            {
                var deletebook = (from s in d_entity.TblBook
                                   where s.BookId ==id
                                   select s).FirstOrDefault();
                d_entity.TblBook.Remove(deletebook);
                d_entity.SaveChanges();
            }
        }

        public override void update(int id)
        {
            using (PISAEntity u_entity = new PISAEntity())
            {
                var information = (from s in u_entity.TblBook
                                   where s.BookId == id
                                   select s).FirstOrDefault();
                information.BookName = Name;
                information.BookAuthor = Author;
                information.BookPublisher = Publisher;
                information.ISBN = Isbn;
                information.BookPage = Page;
                information.BookPrice = Price;
                information.BookStock = Stock;
                information.BookImage = Image;
                information.BookPoint = Point;
                information.BookAmount = Amount;
                u_entity.SaveChanges();
            }
        }

        public override bool search(int id)
        {
            using (PISAEntity s_entity = new PISAEntity())
            {
                foreach (var information in s_entity.TblBook)
                {
                    if (information.BookId == id)
                    {
                        Name = information.BookName;
                        Publisher = information.BookPublisher;
                        Isbn = Convert.ToDecimal(information.ISBN);
                        Author = information.BookAuthor;
                        Page = Convert.ToInt32(information.BookPage);
                        Price = Convert.ToDecimal(information.BookPrice);
                        Stock = Convert.ToInt32(information.BookStock);
                        Image = information.BookImage;
                        Point = Convert.ToInt32(information.BookPoint);
                        Amount = Convert.ToInt32(information.BookAmount);
                        return true;
                    }
                    
                }

            };
            return false;
        }
    }
}