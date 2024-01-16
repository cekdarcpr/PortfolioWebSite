using KisiselWeb.Concrete;
using KisiselWeb.DataLayer.Abstract;
using KisiselWeb.DataLayer.Repository;

namespace KisiselWeb.DataLayer.EntityFramework
{
    public class EfContactDal : GenericRepository<Contact>, IContactDal
    {
    }
}
