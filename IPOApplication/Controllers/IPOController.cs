using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics.Metrics;
using System.Linq;
using IPOApplication.Models;
using IPOApplication.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authorization;
using System.Globalization;

namespace IPOApplication.Controllers
{
    [Authorize]
    public class IPOController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;

        public IPOController(ApplicationDbContext context,UserManager<ApplicationUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }




        public IActionResult Index()
        {
            DateTime currentDate = DateTime.Now.Date;

            var instruments = _context.IPO_Information
                .Where(i => i.IPOStartDate <= currentDate && i.IPOEndDate >= currentDate)
                .Select(i => new SelectListItem { Value = i.InstrumentId.ToString(), Text = i.InstrumentName })
                .ToList();

            ViewBag.InstrumentList = instruments;

            //ViewBag.UserId = _userManager.GetUserId(HttpContext.User);
          
            return View(new IPO_Information());
        }




        [HttpGet]
        public IActionResult GetInstrumentDetails(int id)
        {
            var instrument = _context.IPO_Information.FirstOrDefault(i => i.InstrumentId == id);
            if (instrument == null)
            {
                return NotFound();
            }

            return Json(new
            {
                facevalue = instrument.Facevalue,
                premium = instrument.Premium,
                ipoRate = instrument.IPORate,
                minimumAmount = instrument.MinimumAmount,
                ipoStartDate = instrument.IPOStartDate.ToString("yyyy-MM-dd"),
                ipoEndDate = instrument.IPOEndDate.ToString("yyyy-MM-dd")
                //amountInWord = new CultureInfo("en-US", false).TextInfo.ToTitleCase((Convert.ToInt32(ipo.MinimumAmount)).ToWords().ToLower())
            });
        }




        // User Details
        public IActionResult UserDetails() {

            try
            {
                var userId = _userManager.GetUserId(HttpContext.User);

                if (userId == null)
                {
                    return Redirect("/Identity/Account/Login");
                }

                ApplicationUser user = _userManager.FindByIdAsync(userId).Result;

                return View(user);
            }

            catch (Exception)
            {
                throw;
            }
                    
        }












        //[HttpPost]
        //public IActionResult Index(IPO_Information model)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        int instrumentId = int.Parse(Request.Form["InstrumentName"]);

        //        IPO_Information instrument = _context.IPO_Information.FirstOrDefault(i => i.InstrumentId == instrumentId);

        //        if (instrument != null)
        //        {
        //            // set the properties of the IPO_Application object
        //            IPO_Application application = new IPO_Application
        //            {
        //                UserId = _userManager.GetUserId(HttpContext.User),
        //                InstrumentId = instrument.InstrumentId,
        //                IsApproved = 0,
        //                IsExecuted = 0,
        //                ApplicationAmount = model.MinimumAmount,
        //                CreateDate = DateTime.Now
        //            };

        //            _context.IPO_Application.Add(application);
        //            _context.SaveChanges();


        //        }
        //    }

        //    return RedirectToAction("Success");

        //}



        [HttpPost]
        [Authorize]
        public IActionResult Index(IPO_Information model)
        {
            if (ModelState.IsValid)
            {
                int instrumentId = int.Parse(Request.Form["InstrumentName"]);

                IPO_Information instrument = _context.IPO_Information.FirstOrDefault(i => i.InstrumentId == instrumentId);

                if (instrument != null)
                {
                    
                    string userId = _userManager.GetUserId(HttpContext.User);
                    DateTime startDate = instrument.IPOStartDate;
                    DateTime endDate = instrument.IPOEndDate;

                    IPO_Application existingApplication = _context.IPO_Application
                        .FirstOrDefault(a => a.UserId == userId
                            && a.InstrumentId == instrumentId
                            && a.CreateDate >= startDate
                            && a.CreateDate <= endDate);

                    if (existingApplication != null)
                    {               
                        return RedirectToAction("AlreadyApplied");
                    }
                    else
                    {
                        IPO_Application application = new IPO_Application
                        {
                            UserId = userId,
                            InstrumentId = instrument.InstrumentId,
                            IsApproved = 0,
                            IsExecuted = 0,
                            ApplicationAmount = model.MinimumAmount,
                            CreateDate = DateTime.Now
                        };

                        _context.IPO_Application.Add(application);
                        _context.SaveChanges();
                    }
                }
            }

            return RedirectToAction("Success");
        }



        public IActionResult AlreadyApplied()
        {
            return View();
        }




        public IActionResult Success()
        {
            // get the list of IPO_Application objects with IsApproved = 0
            var applications = _context.IPO_Application
            .Include(a => a.Instrument)
            .Where(a => a.IsApproved == 0)
            .OrderByDescending(a => a.CreateDate)
            .ToList();


            return View(applications);
        }






        [HttpPost]
        public IActionResult Approved(int id)
        {
            // retrieve the IPO_Application object using the provided id
            IPO_Application application = _context.IPO_Application.FirstOrDefault(a => a.Id == id);

            if (application != null)
            {
                // update the IsApproved property to 1 and save changes
                application.IsApproved = 1;
                _context.Entry(application).State = EntityState.Modified;
                _context.SaveChanges();

                // redirect to the approved page

            }


            return RedirectToAction("Approved");
        }


        







        public IActionResult Approved()
        {
            // get the list of IPO_Application objects with IsApproved = 0
            var applications = _context.IPO_Application
            .Include(a => a.Instrument)
            .Where(a => a.IsApproved == 1)
            .OrderByDescending(a => a.CreateDate)
            .ToList();


            return View(applications);
        }


    }
}
