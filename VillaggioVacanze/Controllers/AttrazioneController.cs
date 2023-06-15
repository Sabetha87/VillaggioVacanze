using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using System;
using VillaggioVacanze.Services;
using VillaggioVacanze.Models;
using System.Collections.Generic;
using VillaggioVacanze.DB.Entities;

namespace VillaggioVacanze.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AttrazioneController : Controller
    {
        private readonly AttrazioneService attrazioneService;

        public AttrazioneController(AttrazioneService attrazioneService)
        {
            this.attrazioneService = attrazioneService;
        }

        //[HttpGet("Get")]
        //public async Task<Prenotazione> Get()
        //{
           
        //}

    }
}
