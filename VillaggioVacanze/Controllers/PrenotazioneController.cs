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
		private readonly AttrazioneService AttrazioneService;

		public PrenotazioneController (PrenotazioneService PrenotazioneService, AttrazioneService AttrazioneService)
        {
            this.PrenotazioneService = PrenotazioneService;
			this.AttrazioneService = AttrazioneService;
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


		public IActionResult PrenotaViaggi()
		{

			List<CrossAttrazionePeriodoModel> result = this.AttrazioneService.GetCrossAttrazionePeriodo();

			return View(result);

		
		}
	}
}
