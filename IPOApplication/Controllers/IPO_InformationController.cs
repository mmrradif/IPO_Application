using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using IPOApplication.Data;
using IPOApplication.Models;

namespace IPOApplication.Controllers
{
    public class IPO_InformationController : Controller
    {
        private readonly ApplicationDbContext _context;

        public IPO_InformationController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: IPO_Information
        public async Task<IActionResult> Index()
        {
              return _context.IPO_Information != null ? 
                          View(await _context.IPO_Information.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.IPO_Information'  is null.");
        }


        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.IPO_Information == null)
            {
                return NotFound();
            }

            var iPO_Information = await _context.IPO_Information
                .FirstOrDefaultAsync(m => m.InstrumentId == id);
            if (iPO_Information == null)
            {
                return NotFound();
            }

            return View(iPO_Information);
        }


        public IActionResult Create()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("InstrumentId,InstrumentName,Facevalue,Premium,IPORate,MinimumAmount,IPOStartDate,IPOEndDate")] IPO_Information iPO_Information)
        {
            if (ModelState.IsValid)
            {
                _context.Add(iPO_Information);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(iPO_Information);
        }


        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.IPO_Information == null)
            {
                return NotFound();
            }

            var iPO_Information = await _context.IPO_Information.FindAsync(id);
            if (iPO_Information == null)
            {
                return NotFound();
            }
            return View(iPO_Information);
        }

        

       
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("InstrumentId,InstrumentName,Facevalue,Premium,IPORate,MinimumAmount,IPOStartDate,IPOEndDate")] IPO_Information iPO_Information)
        {
            if (id != iPO_Information.InstrumentId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(iPO_Information);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!IPO_InformationExists(iPO_Information.InstrumentId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(iPO_Information);
        }



        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.IPO_Information == null)
            {
                return NotFound();
            }

            var iPO_Information = await _context.IPO_Information
                .FirstOrDefaultAsync(m => m.InstrumentId == id);
            if (iPO_Information == null)
            {
                return NotFound();
            }

            return View(iPO_Information);
        }

    

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.IPO_Information == null)
            {
                return Problem("Entity set 'ApplicationDbContext.IPO_Information'  is null.");
            }
            var iPO_Information = await _context.IPO_Information.FindAsync(id);
            if (iPO_Information != null)
            {
                _context.IPO_Information.Remove(iPO_Information);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }



        private bool IPO_InformationExists(int id)
        {
          return (_context.IPO_Information?.Any(e => e.InstrumentId == id)).GetValueOrDefault();
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





        [HttpPost]
        public IActionResult Executed(int id)
        {
            // retrieve the IPO_Application object using the provided id
            IPO_Application application = _context.IPO_Application.FirstOrDefault(a => a.Id == id);

            if (application != null)
            {
                // update the IsApproved property to 1 and save changes
                application.IsExecuted = 1;
                _context.Entry(application).State = EntityState.Modified;
                _context.SaveChanges();

                // redirect to the approved page

            }


            return RedirectToAction("Executed");
        }




        public IActionResult Executed()
        {
            // get the list of IPO_Application objects with IsApproved = 0
            var applications = _context.IPO_Application
            .Include(a => a.Instrument)
            .Where(a => a.IsExecuted == 1)
            .OrderByDescending(a => a.CreateDate)
            .ToList();


            return View(applications);
        }

    }
}
