using System.Collections.Generic;
using System;
using VillaggioVacanze.DB.Entities;

namespace VillaggioVacanze.Models
{
    public class AttrazioneModel
    {
        public string IdAttrazione { get; set; }

        public string Titolo { get; set; }
        public string Descrizione { get; set; }

        public List<CrossAttrazionePeriodo> AttrazioniPeriodi { get; set; }
    }
}
