using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Store
{
    public class Person
    {
        private string personName;
        private string personSurname;
        private string personUsername;
        private string personPassword;
        private string personAddress;
        private string personMail;
        private string personType;
        private decimal personCardNumber;
        private int personTotalPoint;

        public string PersonName { get => personName; set => personName = value; }
        public string PersonSurname { get => personSurname; set => personSurname = value; }
        public string PersonUsername { get => personUsername; set => personUsername = value; }
        public string PersonPassword { get => personPassword; set => personPassword = value; }
        public string PersonAddress { get => personAddress; set => personAddress = value; }
        public string PersonMail { get => personMail; set => personMail = value; }
        public string PersonType { get => personType; set => personType = value; }
        public decimal PersonCardNumber { get => personCardNumber; set => personCardNumber = value; }
        public int PersonTotalPoint { get => personTotalPoint; set => personTotalPoint = value; }

        public bool LoginControl()
        {
            return true;
        }
        public void InsertUser()
        {

        }
        public bool AdminControl()
        {
            return true;
        }
    }
}