
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace VillaggioVacanze.DB.Entities

{
    public class CrossAttrazionePeriodo
    {
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




    }
}
