using System.Collections.Generic;
using VillaggioVacanze.DB.Entities;
using System.Collections.Generic;
using System;
using VillaggioVacanze.DB.Entities;

namespace VillaggioVacanze.Models
{
    public class PrenotazioneModel
    {
        public string IdPrenotazioni { get; set; }

        public string IdUtente { get; set; }
        public string IdAttrazione { get; set; }

        public string DataPrenotazione { get; set; }

        public string DataModifica { get; set; }

        public string NumPostiPrenotati { get; set; }


    }
}
