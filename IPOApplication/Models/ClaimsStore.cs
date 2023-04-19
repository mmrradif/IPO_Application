using System.Security.Claims;

namespace IPOApplication.Models
{
    public static class ClaimsStore
    {
        public static List<Claim> Allclaims = new List<Claim>()
        {
            new Claim("Create Claim","Create Claim"),
            new Claim("Edit Claim","Edit Role"),
            new Claim("Delete Claim","Delete Claim")
        };
    }
}
