namespace KisiselWeb.DataLayer.Abstract
{
    public interface IGenericDal<T>
    {
        void Insert(T t);
        void Update(T t);
        void Delete(T t);

        List<T> GetList();

        T GetByID(int id);
    }
}
