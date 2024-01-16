using KisiselWeb.Concrete;
using KisiselWeb.DataLayer.Abstract;

namespace KisiselWeb.BusinessLayer
{
    public class ContactManager : IContactService
    {
        IContactDal _contactDal;

        public ContactManager(IContactDal contactDal)
        {
            _contactDal = contactDal;
        }

        public List<Contact> GetList()
        {
            return _contactDal.GetList();
        }

        public void TAdd(Contact t)
        {
            throw new NotImplementedException();
        }

        public void TDelete(Contact t)
        {
            throw new NotImplementedException();
        }

        public Contact TGetByID(int id)
        {
           return _contactDal.GetByID(id);
        }

        public void TUpdate(Contact t)
        {
            throw new NotImplementedException();
        }
    }
}
