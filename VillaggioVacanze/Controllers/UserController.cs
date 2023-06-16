using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using VillaggioVacanze.DB;
using VillaggioVacanze.DB.Entities;
using VillaggioVacanze.Models;
using VillaggioVacanze.Services;

namespace VillaggioVacanze.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : Controller
    {
        private readonly ILogger<UserController> logger;
        private SignInManager<User> signInManager;
        private UserManager<User> userManager;
        private readonly PrenotazioneService PrenotazioneService;


        public UserController(SignInManager<User> signInManager,
           UserManager<User> userManager, PrenotazioneService PrenotazioneService)
        {
            this.signInManager = signInManager;
			this.userManager = userManager;
			this.PrenotazioneService = PrenotazioneService;
          

        }

      
        // Create User
        [HttpPost("CreateUser")]
        public async Task<IActionResult> CreateUser(UserModel userModel)
        {
            try
            {
                if (ModelState.IsValid)
                {


                    User user = await this.userManager.FindByEmailAsync(userModel.Email);
                    if (user == null)
                    {
                        user = new User
                        {
                            UserName = userModel.UserName,
                            Email = userModel.Email,
                            FirstName = userModel.FirstName,
                            LastName = userModel.LastName
                        };

                        IdentityResult result = await this.userManager.CreateAsync(user, userModel.Password);
                        if (result.Succeeded)
                            return Json("OK");

                        string errors = string.Empty;
                        foreach (IdentityError error in result.Errors)
                            errors += error.Code + ": " + error.Description + "\n";
                        return Json(errors);
                    }
                    else
                        return Json("Email già esistente, riprova.");
                }
            }
            catch (Exception ex)
            {
               
                logger.LogError(ex, ex.Message);
            }

            return Json("Richiesta non valida.");
        }



        // Login User
        [HttpPost("LoginUser")]
        public async Task<IActionResult> Login([FromBody] LoginModel loginModel)
        {
            try
            {
                User user = await userManager.FindByNameAsync(loginModel.UserName);
                if (user != null)
                {
                    var result = await signInManager.PasswordSignInAsync(loginModel.UserName, loginModel.Password, true, lockoutOnFailure: true);
                    if (result.Succeeded)
                    {
                        return Json("OK");
                    }
                    else
                    {

                        return Json("Password errata");
                    }
                  
                }
                else
                {
                    return Json("UserName errato");
                }
            }
            catch (Exception ex)
            {
                logger.LogError(ex, ex.Message);
            }

            return Json("Richiesta non valida.");
        }

        // Logout
        [Authorize]
        [HttpPost("LogoutUser")]
        public async Task<IActionResult> Logout()
        {
            try
            {
                if (signInManager.IsSignedIn(User))
                {
                    await signInManager.SignOutAsync();
                }
            }
            catch (Exception ex)
            {
            }
            return Json("OK");
        }


        // Prenota User
        [Authorize]
        [HttpPost("PrenotaUser")]
        public async Task<IActionResult> PrenotaUser([FromBody] CrossAttrazionePeriodoModel crossModel)
        {
            try
            {
                ClaimsPrincipal currentUser = this.User;

                string userId = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value; //per avere l'id della persona loggata


                var result =  PrenotazioneService.PrenotaUser(crossModel, userId);

                if (result == "OK")
                {
                    return Json("OK");
                }
                else
                {

                    return Json("KO");
                }

                
            }
            catch (Exception ex)
            {
                logger.LogError(ex, ex.Message);
            }

            return Json("Richiesta non valida.");
        }

        // Modifica Posti Prenotati
        [Authorize]
        [HttpPost("ModificaPosti")]
        public async Task<IActionResult> ModificaPosti([FromBody] PrenotazioneModel prenotazioneModel)
        {
            try
            {
                


                var result = PrenotazioneService.ModificaPosti(prenotazioneModel);

                if (result == "OK")
                {
                    return Json("OK");
                }
                else
                {

                    return Json("KO");
                }


            }
            catch (Exception ex)
            {
                logger.LogError(ex, ex.Message);
            }

            return Json("Richiesta non valida.");
        }


        [Authorize]
        [HttpPost("CancellaPrenotazione")]
        public async Task<IActionResult> CancellaPrenotazione([FromBody] PrenotazioneModel prenotazioneModel)
        {
            try
            {



                var result = PrenotazioneService.CancellaPrenotazione(prenotazioneModel);

                if (result == "OK")
                {
                    return Json("OK");
                }
                else
                {

                    return Json("KO");
                }


            }
            catch (Exception ex)
            {
                logger.LogError(ex, ex.Message);
            }

            return Json("Richiesta non valida.");
        }



        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }



        


    }
}
