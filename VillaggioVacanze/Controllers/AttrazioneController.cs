using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using System;
using VillaggioVacanze.Services;
using VillaggioVacanze.Models;
using System.Collections.Generic;
using VillaggioVacanze.DB.Entities;

namespace VillaggioVacanze.Controllers
{
    //[Route("api/[controller]")]
    //[ApiController]
    public class AttrazioneController : Controller
    {
        private readonly AttrazioneService attrazioneService;

        public AttrazioneController(AttrazioneService attrazioneService)
        {
            this.attrazioneService = attrazioneService;
        }

        [HttpPost("GetViaggi")]
        public async Task<IActionResult> GetViaggi()
        {

            List<Attrazioni> attrazioni= this.attrazioneService.GetAttrazioni();
            List<AttrazioneModel> model = new List<AttrazioneModel>();
            foreach (Attrazioni p in attrazioni)
                model.Add(new AttrazioneModel()
                {
                    Descrizione = p.Descrizione,   //ambiare in stringhe tutto 
                    NPosti = p.NPosti,
                    Attiva = p.Attiva,
                    PrezzoUnitario = p.PrezzoUnitario,
                    Titolo = p.Titolo
                });

            return View(model);
        }

    }
}
