using System.ComponentModel.DataAnnotations;

namespace IPOApplication.ViewModels
{
    public class CreateRoleViewModel
    {
        [Required]
        public string RoleName { get; set; }
    }
}
