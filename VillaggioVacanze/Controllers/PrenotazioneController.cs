using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using System;
using VillaggioVacanze.Services;
using VillaggioVacanze.Models;
using System.Collections.Generic;
using VillaggioVacanze.DB.Entities;
using System.Security.Claims;
using System.Linq;
using Microsoft.Extensions.Logging;

namespace VillaggioVacanze.Controllers
{
    
    public class PrenotazioneController : Controller
    {
        private readonly PrenotazioneService PrenotazioneService;

        public PrenotazioneController (PrenotazioneService PrenotazioneService)
        {
            this.PrenotazioneService = PrenotazioneService;
        }


        public IActionResult Prenotazioni()
        {
            
                ClaimsPrincipal currentUser = this.User;

                string userId = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value; //per avere l'id

                var adminClaim = currentUser.Claims.Where(c => c.Type == "CANDOANYTHING").FirstOrDefault();

                if (adminClaim != null)
                    userId = null;



                List<PrenotazioneModel> result = this.PrenotazioneService.GetPrenotazioni(userId);

                return View(result);
           
        }

    }
}
