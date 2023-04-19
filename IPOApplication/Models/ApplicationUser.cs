using Microsoft.AspNetCore.Identity;

namespace IPOApplication.Models
{
    public class ApplicationUser:IdentityUser
    {
        public string FullName { get; set; } = default!;
    }
}
