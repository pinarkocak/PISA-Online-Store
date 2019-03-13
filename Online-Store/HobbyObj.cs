using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Online_Store
{
    public class HobbyObj : Product
    {
        private string type;

        public string Type { get => type; set => type = value; }

        public override void delete(int id)
        {
            using (PISAEntity d_entity = new PISAEntity())
            {
                var deletehobby = (from s in d_entity.TblHobby
                                  where s.HobbyId == id
                                  select s).FirstOrDefault();
                d_entity.TblHobby.Remove(deletehobby);
                d_entity.SaveChanges();
            }
        }

        public override void insert()
        {
            using (PISAEntity i_entity = new PISAEntity())
            {
                TblHobby tblhobby = new TblHobby();
               tblhobby.HobbyName = Name;
                tblhobby.HobbyType = Type;
                tblhobby.HobbyPrice = Price;
                tblhobby.HobbyStock = Stock;
                tblhobby.HobbyPoint = Point;
                tblhobby.HobbyImage = Image;
                tblhobby.HobbyAmount = Amount;
                i_entity.TblHobby.Add(tblhobby);
                i_entity.SaveChanges();
            }
        }

        public override bool search(int id)
        {
            using(PISAEntity s_entity = new PISAEntity())
            {
                foreach (var information in s_entity.TblHobby)
                {
                    if (information.HobbyId == id)
                    {
                        Name = information.HobbyName;
                        Type = information.HobbyType;
                        Price = Convert.ToDecimal(information.HobbyPrice);
                        Stock = Convert.ToInt32(information.HobbyStock);
                        Image = information.HobbyImage;
                        Point = Convert.ToInt32(information.HobbyPoint);
                        Amount = Convert.ToInt32(information.HobbyAmount);
                        return true;
                    }

                }

            };
            return false;
        }

        public override void update(int id)
        {
            using (PISAEntity u_entity = new PISAEntity())
            {
                var information = (from s in u_entity.TblHobby
                                   where s.HobbyId == id
                                   select s).FirstOrDefault();
                information.HobbyName = Name;
                information.HobbyType = Type;
                information.HobbyPrice = Price;
                information.HobbyStock = Stock;
                information.HobbyImage = Image;
                information.HobbyPoint = Point;
                information.HobbyAmount = Amount;
                u_entity.SaveChanges();
            }
        }
    }
}