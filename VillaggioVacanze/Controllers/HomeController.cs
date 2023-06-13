using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using VillaggioVacanze.DB;
using VillaggioVacanze.DB.Entities;
using VillaggioVacanze.Models;


namespace VillaggioVacanze.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> logger;
        private SignInManager<User> signInManager;
        private UserManager<User> userManager;
       


        public HomeController(SignInManager<User> signInManager,
           UserManager<User> userManager)
        {
            this.signInManager = signInManager;
            this.userManager = userManager;
          

        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }


        [Authorize]
        public IActionResult UserPage()
        {
            return View();
        }

        [Authorize]
        public IActionResult AdminPage()
        {
            return View();
        }


        
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
