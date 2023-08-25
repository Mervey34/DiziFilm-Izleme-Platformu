using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Repositories
{
    public class OyuncularRepository:IRepository<Oyuncular>
    {
        FilmProjesiEntities db = new FilmProjesiEntities();

        public List<Oyuncular> GetAll()
        {
            return db.Oyuncular.ToList();
        }
        public Oyuncular GetById(int id)
        {
            return db.Oyuncular.Find(id);
        }
        public void Ekle(Oyuncular item) 
        {
            db.Oyuncular.Add(item);
            db.SaveChanges();
        }
        public void Guncelle(Oyuncular item)
        {
            Oyuncular guncellenecek = db.Oyuncular.Find(item.OyuncuId);
            db.Entry(guncellenecek).CurrentValues.SetValues(item);
            db.SaveChanges();
        }     
        public void Sil(int itemId)
        {
            Oyuncular silinecek = db.Oyuncular.Find(itemId);
            db.SaveChanges();
        }
        
    }
}
