using System.ComponentModel.DataAnnotations;

namespace IPOApplication.ViewModels
{
    public class EditRoleViewModel
    {
        public EditRoleViewModel()
        {
            Users = new List<string>();
        }

        public string Id { get; set; }

        [Required(ErrorMessage = "Role is Required")]
        public string RoleName { get; set; }

        public List<string> Users { get; set; }
    }
}
