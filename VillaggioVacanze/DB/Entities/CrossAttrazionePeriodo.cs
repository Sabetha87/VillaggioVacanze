
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace VillaggioVacanze.DB.Entities

{
    public class CrossAttrazionePeriodo
    {
        public CrossAttrazionePeriodo()
        {
            Prenotazioni = new List<Prenotazione>() { };
        }


        [Key]
        public Guid Id { get; set; }

        public Guid IdAttrazione { get; set; }

        public DateTime fromData { get; set; }
        public DateTime toData { get; set; }
        public int numPosti { get; set; }
        public bool attivo { get; set; }
        public int prezzo { get; set; }

        [ForeignKey(nameof(IdAttrazione))]
        public Attrazione IdAttrazioneNavigation { get; set; }

        public List<Prenotazione> Prenotazioni { get; set;}




    }
}
