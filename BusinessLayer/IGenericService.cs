namespace KisiselWeb.BusinessLayer
{
    public interface IGenericService<T>
    {
        void TAdd(T t);
        void TDelete(T t);
        void TUpdate(T t);

        List<T> GetList();

        T TGetByID(int id);
    }
}
