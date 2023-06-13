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
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : Controller
    {
        private readonly ILogger<UserController> logger;
        private SignInManager<User> signInManager;
        private UserManager<User> userManager;
       


        public UserController(SignInManager<User> signInManager,
           UserManager<User> userManager)
        {
            this.signInManager = signInManager;
            this.userManager = userManager;
          

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
                            Email = userModel.Email
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
                    var result = await signInManager.PasswordSignInAsync(loginModel.UserName, loginModel.Password, false, lockoutOnFailure: true);
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
            return Redirect("Login");
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
