
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace VillaggioVacanze.DB.Entities

{
    public class CrossAttrazionePeriodoModel
    {
      
        public string Id { get; set; }

        public string IdAttrazione { get; set; }

        public string fromData { get; set; }
        public string toData { get; set; }
        public string numPosti { get; set; }
        public bool attivo { get; set; }
        public int prezzo { get; set; }

        public Attrazione IdAttrazioneNavigation { get; set; }

        public List<Prenotazione> Prenotazioni { get; set;}




    }
}
