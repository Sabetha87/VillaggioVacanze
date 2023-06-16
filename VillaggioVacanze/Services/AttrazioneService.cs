using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using VillaggioVacanze.DB;
using VillaggioVacanze.DB.Entities;
using VillaggioVacanze.Models;

namespace VillaggioVacanze.Services
{
	public class AttrazioneService
	{
		private DBContext DBContext;
		public AttrazioneService(DBContext DBContext)
		{
			this.DBContext = DBContext;
		}
		public List<AttrazioneModel> GetAttrazioni()
		{
			//select * from Attrazioni
			List<AttrazioneModel> result = this.DBContext.Attrazioni.Select(a => new AttrazioneModel
			{
				IdAttrazione = a.IdAttrazione.ToString(),
				Titolo = a.Titolo,
				Descrizione = a.Descrizione,
				AttrazioniPeriodi = this.DBContext.CrossAttrazioniPeriodi.Where(p => p.IdAttrazione.Equals(a.IdAttrazione)).ToList()
			}).ToList();

			return result;
		}

		public List<CrossAttrazionePeriodoModel> GetCrossAttrazionePeriodo()
		{

			List<CrossAttrazionePeriodoModel> viaggi = this.DBContext.CrossAttrazioniPeriodi.Include(c => c.IdAttrazioneNavigation)
				.Select(c => new CrossAttrazionePeriodoModel
				{
					Id = c.Id.ToString(),
					IdAttrazione = c.IdAttrazione.ToString(),
					fromData = c.fromData.ToString(),
					toData = c.toData.ToString(),
					numPosti = c.numPosti.ToString(),
					attivo = c.attivo,
					prezzo = c.prezzo,
					IdAttrazioneNavigation = c.IdAttrazioneNavigation

				}).OrderBy(c=>c.IdAttrazioneNavigation.Titolo).ThenByDescending(c=>c.fromData).ToList();


			return viaggi;
		}


	}
}
