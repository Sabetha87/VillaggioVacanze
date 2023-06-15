
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


	}
}

