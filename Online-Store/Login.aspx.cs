using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Store
{
    public partial class Login : System.Web.UI.Page
    {
        Random rnd = new Random();
        Person _person = new Person();

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            
        }

        protected void btn_signup_Click1(object sender, EventArgs e)
        {
            if(sgn_txt_password.Text == sgn_txt_confirm_password.Text)
            {
                int card_number = rnd.Next(1, 9);
                _person.PersonName = sgn_txt_name.Text.ToString();
                _person.PersonSurname = sgn_txt_surname.Text.ToString();
                _person.PersonUsername = sgn_txt_username.Text.ToString();
                _person.PersonPassword = sgn_txt_password.Text.ToString();
                _person.PersonAddress = sgn_txt_address.Text.ToString();
                _person.PersonMail = sgn_txt_email.Text.ToString();
                //_person.PersonType = "user"; /*user or admin*/
                //_person.PersonCardNumber = card_number;
                //_person.PersonTotalPoint = 0;
                _person.InsertUser();
            }        


        }

       
    }
}