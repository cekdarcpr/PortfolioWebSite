using KisiselWeb.Concrete;
using Microsoft.EntityFrameworkCore;

namespace KisiselWeb.DataLayer.Concrete
{
    public class Context : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("server=DESKTOP-3RDN6LK\\SQLEXPRESS;database=KisiselWebDb;integrated security=true;");
        }

        public DbSet<About> Abouts { get; set; }
        public DbSet<Contact> Contacts { get; set; }
        public DbSet<Testimonial> Testimonials { get; set; }
    }
}
