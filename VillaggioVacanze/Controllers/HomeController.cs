using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Diagnostics;
using VillaggioVacanze.DB.Entities;
using VillaggioVacanze.Models;
using VillaggioVacanze.Services;

namespace VillaggioVacanze.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> logger;
        private SignInManager<User> signInManager;
        private UserManager<User> userManager;
        private AttrazioneService attrazioneService;



        public HomeController(SignInManager<User> signInManager,
           UserManager<User> userManager,
           AttrazioneService attrazioneService)
        {
            this.signInManager = signInManager;
            this.userManager = userManager;
            this.attrazioneService = attrazioneService;
        }




        public IActionResult Index()
        {
            List<AttrazioneModel> attrazioni = this.attrazioneService.GetAttrazioni();


            return View(attrazioni);
        }

        public IActionResult Login()
        {
            return View();
        }

        public IActionResult Privacy()
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
