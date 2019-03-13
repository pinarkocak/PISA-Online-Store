using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Store
{
    abstract public class Product
    {
        private string name;
        private decimal price;
        private byte[] image;
        private int stock;
        private int point;
        private int amount;

        public string Name { get => name; set => name = value; }
        public decimal Price { get => price; set => price = value; }
        public byte[] Image { get => image; set => image = value; }
        public int Stock { get => stock; set => stock = value; }
        public int Point { get => point; set => point = value; }
        public int Amount { get => amount; set => amount = value; }

        public abstract void insert();
        public abstract void delete(int id);
        public abstract void update(int id);
        public abstract bool search(int id);


    }
}