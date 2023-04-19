using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace IPOApplication.Models
{
    public class IPO_Information
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int InstrumentId { get; set; }


        [Required(ErrorMessage = "Instrument Name is Required")]
        [Display(Name = "Instrument Name")]
        [StringLength(50)]
        public string InstrumentName { get; set; } = default!;



        [DisplayFormat(DataFormatString = "{0:F2}")]
        public double Facevalue { get; set; }



        [DisplayFormat(DataFormatString = "{0:F2}")]
        public double Premium { get; set; }



        [Display(Name = "IPO Rate")]
        [DisplayFormat(DataFormatString = "{0:F2}")]
        public double IPORate { get; set; }



        [Display(Name ="Minimum Amount")]
        public double MinimumAmount { get; set; }



        [Display(Name = "IPO Start Date")]
        [Column(TypeName = "date")]
        public DateTime IPOStartDate { get; set; }



        [Display(Name = "IPO End Date")]
        [Column(TypeName = "date")]
        public DateTime IPOEndDate { get; set; }
    }
}
