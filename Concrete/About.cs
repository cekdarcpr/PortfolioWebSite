using System.ComponentModel.DataAnnotations;

namespace KisiselWeb.Concrete
{
    public class About
    {
        [Key]
        public int AboutID { get; set; }
        public string? Name { get; set; }
        public string? Profile { get; set; }
        public string? Email { get; set; }
        public string? Phone { get; set; }
        public string? Title { get; set; }
        public string? Description { get; set; }
        public string? Image { get; set; }
        public bool Status { get; set; }

    }
}
