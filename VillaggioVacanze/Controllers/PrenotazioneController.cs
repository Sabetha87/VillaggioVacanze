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
using Microsoft.AspNetCore.Authorization;

namespace VillaggioVacanze.Controllers
{
    
    public class PrenotazioneController : Controller
    {
		private readonly AttrazioneService AttrazioneService;

		public PrenotazioneController (AttrazioneService AttrazioneService)
        {
          
			this.AttrazioneService = AttrazioneService;
		}

        [Authorize]
        public IActionResult Prenotazioni()
        {
            
                ClaimsPrincipal currentUser = this.User;

                string userId = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value; //per avere l'id

                var adminClaim = currentUser.Claims.Where(c => c.Type == "CANDOANYTHING").FirstOrDefault();

                if (adminClaim != null)
                    userId = null;



                List<PrenotazioneModel> result = this.AttrazioneService.GetPrenotazioni(userId);

                return View(result);
           
        }

        [Authorize]
		public IActionResult PrenotaViaggi()
		{

			List<CrossAttrazionePeriodoModel> result = this.AttrazioneService.GetCrossAttrazionePeriodo();

			return View(result);

		
		}
	}
}
