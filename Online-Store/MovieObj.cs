using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Store
{
    public class MovieObj:Product
    {
        private string director;
        private int year;
        private string genre;
        private double runtime;

        private static Object _object = new Object();
        private static MovieObj mymovie;
        private MovieObj() { }
        public static MovieObj GetMovie
        {
            get
            {
                lock (_object)
                {

                    return mymovie ?? new MovieObj();
                }
            }
        }

        public string Director { get => director; set => director = value; }
        public int Year { get => year; set => year = value; }
        public string Genre { get => genre; set => genre = value; }
        public double Runtime { get => runtime; set => runtime = value; }

        public override void delete(int id)
        {
            using (PISAEntity d_entity = new PISAEntity())
            {
                var deletemovie = (from s in d_entity.TblMovie
                                   where s.MovieId == id
                                   select s).FirstOrDefault();
                d_entity.TblMovie.Remove(deletemovie);
                d_entity.SaveChanges();
            }
        }

        public override void insert()
        {
            using (PISAEntity i_entity = new PISAEntity())
            {
                TblMovie tblmovie = new TblMovie();
                tblmovie.MovieName = Name;
                tblmovie.MovieGenre = Genre;
                tblmovie.MovieDirector = Director;
                tblmovie.MovieYear = Year;
                tblmovie.MovieRuntime = Runtime;
                tblmovie.MoviePrice = Price;
                tblmovie.MovieStock = Stock;
                tblmovie.MoviePoint = Point;
                tblmovie.MovieImage = Image;
                tblmovie.MovieAmount = Amount;
                i_entity.TblMovie.Add(tblmovie);
                i_entity.SaveChanges();
            }
        }

        public override bool search(int id)
        {
            using (PISAEntity s_entity = new PISAEntity())
            {
                foreach (var information in s_entity.TblMovie)
                {
                    if (information.MovieId == id)
                    {
                        Name = information.MovieName;
                        Genre = information.MovieGenre;
                        Director = information.MovieDirector;
                        Year = Convert.ToInt32(information.MovieYear);
                        Runtime = Convert.ToDouble(information.MovieRuntime);
                        Price = Convert.ToDecimal(information.MoviePrice);
                        Stock = Convert.ToInt32(information.MovieStock);
                        Image = information.MovieImage;
                        Point = Convert.ToInt32(information.MoviePoint);
                        Amount = Convert.ToInt32(information.MovieAmount);
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
                var information = (from s in u_entity.TblMovie
                                   where s.MovieId == id
                                   select s).FirstOrDefault();
                information.MovieName = Name;
                information.MovieGenre = Genre;
                information.MovieYear = Year;
                information.MovieRuntime = Runtime;
                information.MoviePrice = Price;
                information.MovieStock = Stock;
                information.MovieImage = Image;
                information.MoviePoint = Point;
                information.MovieAmount = Amount;
                u_entity.SaveChanges();
            }
        }
    }
}