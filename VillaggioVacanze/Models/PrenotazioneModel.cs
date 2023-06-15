using System.Collections.Generic;
using VillaggioVacanze.DB.Entities;
using System.Collections.Generic;
using System;
using VillaggioVacanze.DB.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace VillaggioVacanze.Models
{
    public class PrenotazioneModel
    {
        public string Id { get; set; }
        public string IdUtente { get; set; }
        public string IdCrossAttrazionePeriodo { get; set; }
        public string CreatedAt { get; set; }
        public string UpdatedAt { get; set; }
        public bool? Attiva { get; set; }
        public int NumPostiPrenotati { get; set; }

       
        public User IdUserNavigation { get; set; }

        public CrossAttrazionePeriodo IdCrossAttrazionePeriodoNavigation { get; set; }

        

    }
}
