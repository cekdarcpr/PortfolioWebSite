using KisiselWeb.BusinessLayer;
using KisiselWeb.DataLayer.EntityFramework;
using KisiselWeb.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace KisiselWeb.Controllers
{
    public class HomeController : Controller
    {
        AboutManager aboutManager = new AboutManager(new EfAboutDal());

        TestimonialManager testimonialManager = new TestimonialManager(new  EfTestimonialDal());
        
        ContactManager contactManager = new ContactManager(new EfContactDal());


        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            var values = aboutManager.GetList();
            
            return View(values);
        }

        public IActionResult Privacy()
        {
            var values = aboutManager.GetList();

            return View(values);
        }

        public IActionResult Work()
        {
            var values = testimonialManager.GetList();
            
            return View(values);
        }

        public IActionResult Contact()
        {
            var values = contactManager.GetList();
            return View(values);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}