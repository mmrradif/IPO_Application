using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace IPOApplication.Models
{
    public class IPO_Application
    {
        [Display(Name ="IP Application Id")]
        public int Id { get; set; }


        [Display(Name = "User Id")]
        public string UserId { get; set; } = default!;


        [Display(Name ="Instrument Id")]
        public int InstrumentId { get; set; }


        [Display(Name = "Is Approved")]
        public int IsApproved { get; set; }


        [Display(Name = "Is Executed")]
        public int IsExecuted { get; set; }



        [Display(Name = "Application Amount")]
        [DisplayFormat(DataFormatString = "{0:F2}")]
        public double ApplicationAmount { get; set; }



        [Display(Name = "Create Date")]
        public DateTime CreateDate { get; set; } = DateTime.Now;



        public virtual IPO_Information Instrument { get; set; } = default!;
    }
}
