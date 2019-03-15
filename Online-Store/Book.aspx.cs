using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Online_Store
{
    public partial class Book : System.Web.UI.Page
    {
        BookObj _book = BookObj.GetBook;

        protected void Page_Load(object sender, EventArgs e)
        {
            int i = 0;
           //Full all label with parameter
            foreach (Control control in Maindiv.Controls)
            {
                if(control is Label)
                {
                    _book.search(i);
                    (control as Label).Text = _book.Name + "\n" + _book.Author + "\n" + _book.Publisher + "\n" + _book.Page + "\n" + _book.Price;
                    i++;
                }
                else if(control is Image)
                {
                    _book.search(i);
                    if (_book.Image != null)
                    {
                        string Base64string = Convert.ToBase64String(_book.Image, 0, _book.Image.Length);
                        (control as Image).ImageUrl = "data:image/;base64," + Base64string;
                        
                    }
                }
            }
            //_book.search(1);
            //Label1.Text = _book.Name + "\n" + _book.Author + "\n" + _book.Publisher + "\n" + _book.Page + "\n" + _book.Price;
            ////Image1 = _book.GetImage(1);
            //_book.search(2);
            //Label2.Text = _book.Name + "\n" + _book.Author + "\n" + _book.Publisher + "\n" + _book.Page + "\n" + _book.Price;
            //_book.search(3);
            //Label3.Text = _book.Name + "\n" + _book.Author + "\n" + _book.Publisher + "\n" + _book.Page + "\n" + _book.Price;
            //_book.search(4);
            //Label4.Text = _book.Name + "\n" + _book.Author + "\n" + _book.Publisher + "\n" + _book.Page + "\n" + _book.Price;
            //_book.search(5);
            //Label5.Text = _book.Name + "\n" + _book.Author + "\n" + _book.Publisher + "\n" + _book.Page + "\n" + _book.Price;
            //_book.search(6);
            //Label6.Text = _book.Name + "\n" + _book.Author + "\n" + _book.Publisher + "\n" + _book.Page + "\n" + _book.Price;


        }

        protected void img_icon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}