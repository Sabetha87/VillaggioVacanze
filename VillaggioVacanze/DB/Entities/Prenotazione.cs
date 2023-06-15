
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
		public Guid Id{ get; set; }
	    public string IdUtente { get; set; }
        public Guid IdCrossAttrazionePeriodo { get; set; }
        public DateTime? CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }
        public bool? Attiva { get; set; }
        public int NumPostiPrenotati { get; set; }

        [ForeignKey(nameof(IdUtente))]
        public User IdUserNavigation { get; set; }

        [ForeignKey(nameof(IdCrossAttrazionePeriodo))]
        public CrossAttrazionePeriodo IdCrossAttrazionePeriodoNavigation { get; set; }


    }
}

