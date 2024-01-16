using System.ComponentModel.DataAnnotations;

namespace KisiselWeb.Concrete
{
    public class Contact
    {
        [Key]
        public int ContactID { get; set; }
        public string? Title { get; set; }
        public string? Description { get; set; }
        public string? Phone { get; set; }
        public string? Email { get; set; }
        public bool Status { get; set; }

    }
}
