using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public interface IRepository<T>
    {
        List<T> GetAll();
        T GetById(int id);
        void Ekle(T item);
        void Guncelle(T item);
        void Sil(int itemId);
    }
}
