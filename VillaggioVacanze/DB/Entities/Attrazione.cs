
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace VillaggioVacanze.DB.Entities

{
    public class Attrazione
    {
        public Attrazione()
        {
           CrossAttrazioniPeriodi = new List<CrossAttrazionePeriodo>();
        }

        [Key]
        public Guid IdAttrazione { get; set; }

        public string Titolo { get; set; }
        public string Descrizione { get; set; }

        public List<CrossAttrazionePeriodo> CrossAttrazioniPeriodi { get; set; }

    }
}
