using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Store
{
    public class MusicObj:Product
    {
        private string type;
        private string singer;

        public string Type { get => type; set => type = value; }
        public string Singer { get => singer; set => singer = value; }

        public override void delete(int id)
        {
            using (PISAEntity d_entity = new PISAEntity())
            {
                var deletemusic = (from s in d_entity.TblMusic
                                   where s.MusicId == id
                                   select s).FirstOrDefault();
                d_entity.TblMusic.Remove(deletemusic);
                d_entity.SaveChanges();
            }
        }

        public override void insert()
        {
            using (PISAEntity i_entity = new PISAEntity())
            {
                TblMusic tblmusic  = new TblMusic();
                tblmusic.MusicName = Name;
                tblmusic.MusicType = Type;
                tblmusic.MusicSinger = Singer;
                tblmusic.MusicPrice = Price;
                tblmusic.MusicStock = Stock;
                tblmusic.MusicPoint = Point;
                tblmusic.MusicImage = Image;
                tblmusic.MusicAmount = Amount;
                i_entity.TblMusic.Add(tblmusic);
                i_entity.SaveChanges();
            }
        }

        public override bool search(int id)
        {
            using (PISAEntity s_entity = new PISAEntity())
            {
                foreach (var information in s_entity.TblMusic)
                {
                    if (information.MusicId == id)
                    {
                        Name = information.MusicName;
                        Type = information.MusicType;
                        Singer = information.MusicSinger;
                        Price = Convert.ToDecimal(information.MusicPrice);
                        Stock = Convert.ToInt32(information.MusicStock);
                        Image = information.MusicImage;
                        Point = Convert.ToInt32(information.MusicPoint);
                        Amount = Convert.ToInt32(information.MusicAmount);
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
                var information = (from s in u_entity.TblMusic
                                   where s.MusicId == id
                                   select s).FirstOrDefault();
                information.MusicName = Name;
                information.MusicType = Type;
                information.MusicSinger = Singer;
                information.MusicPrice = Price;
                information.MusicStock = Stock;
                information.MusicPoint = Point;
                information.MusicImage = Image;
                information.MusicAmount = Amount;
                u_entity.SaveChanges();
            }
        }
    }
}