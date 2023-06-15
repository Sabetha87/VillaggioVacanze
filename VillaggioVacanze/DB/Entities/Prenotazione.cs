
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using VillaggioVacanze.DB.Entities;

namespace VillaggioVacanze.DB.Entities

{
	public class Prenotazione
	{

		[Key]
		public Guid IdPrenotazioni { get; set; }
	    public Guid IdUtente { get; set; }
        public Guid IdAttrazione { get; set; }
        public DateTime DataPrenotazione { get; set; }
        public DateTime DataModifica { get; set; }
        public bool Attiva { get; set; }
        public int NumPostiPrenotati { get; set; }

        [ForeignKey(nameof(IdUtente))]
        public User IdUserNavigation { get; set; }

        [ForeignKey(nameof(IdAttrazione))]
        public User IdAttrazioneNavigation { get; set; }


    }
}

