using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Store
{
    public class MagazineObj:Product
    {
        private string type;

        public string Type { get => type; set => type = value; }

        public override void delete(int id)
        {
            using (PISAEntity d_entity = new PISAEntity())
            {
                var deletemagazine = (from s in d_entity.TblMagazine
                                   where s.MagazineId == id
                                   select s).FirstOrDefault();
                d_entity.TblMagazine.Remove(deletemagazine);
                d_entity.SaveChanges();
            }
        }

        public override void insert()
        {
            using (PISAEntity i_entity = new PISAEntity())
            {
                TblMagazine tblmagazine = new TblMagazine();
                tblmagazine.MagazineName = Name;
                tblmagazine.MagazineType = Type;
                tblmagazine.MagazinePrice = Price;
                tblmagazine.MagazineStock = Stock;
                tblmagazine.MagazinePoint = Point;
                tblmagazine.MagazineImage = Image;
                tblmagazine.MagazineAmount = Amount;
                i_entity.TblMagazine.Add(tblmagazine);
                i_entity.SaveChanges();
            }
        }

        public override bool search(int id)
        {
            using (PISAEntity s_entity = new PISAEntity())
            {
                foreach (var information in s_entity.TblMagazine)
                {
                    if (information.MagazineId == id)
                    {
                        Name = information.MagazineName;
                        Type = information.MagazineType;
                        Price = Convert.ToDecimal(information.MagazinePrice);
                        Stock = Convert.ToInt32(information.MagazineStock);
                        Image = information.MagazineImage;
                        Point = Convert.ToInt32(information.MagazinePoint);
                        Amount = Convert.ToInt32(information.MagazineAmount);
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
                var information = (from s in u_entity.TblMagazine
                                   where s.MagazineId == id
                                   select s).FirstOrDefault();
                information.MagazineName = Name;
                information.MagazineType = Type;
                information.MagazinePrice = Price;
                information.MagazineStock = Stock;
                information.MagazineImage = Image;
                information.MagazinePoint = Point;
                information.MagazineAmount = Amount;
                u_entity.SaveChanges();
            }
        }
    }
}