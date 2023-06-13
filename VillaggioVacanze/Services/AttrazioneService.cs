using System.Collections.Generic;
using System;
using VillaggioVacanze.DB;
using VillaggioVacanze.DB.Entities;
using System.Linq;
using VillaggioVacanze.Models;
using Microsoft.EntityFrameworkCore;

namespace VillaggioVacanze.Services
{
    public class AttrazioneService
    {
        private DBContext DBContext;
        public AttrazioneService(DBContext DBContext)
        {
            this.DBContext = DBContext;
        }
        public List<AttrazioneModel> GetAttrazioni()
        {
            //select * from Attrazioni
            List<AttrazioneModel> result = this.DBContext.Attrazioni.Select(a=> new AttrazioneModel
            {
                IdAttrazione = a.IdAttrazione.ToString(),  
                Titolo = a.Titolo,
                Descrizione = a.Descrizione,
                AttrazioniPeriodi = this.DBContext.CrossAttrazioniPeriodi.Where(p=>p.IdAttrazione.Equals(a.IdAttrazione)).ToList()
            }).ToList();

            return result;
        }


    }
}
