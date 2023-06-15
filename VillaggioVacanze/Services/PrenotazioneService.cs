using System.Collections.Generic;
using System;
using VillaggioVacanze.DB;
using VillaggioVacanze.DB.Entities;
using System.Linq;
using VillaggioVacanze.Models;
using Microsoft.EntityFrameworkCore;

namespace VillaggioVacanze.Services
{
    public class PrenotazioneService
    {
        private DBContext DBContext;
        public PrenotazioneService(DBContext DBContext)
        {
            this.DBContext = DBContext;
        }
        public List<PrenotazioneModel> GetPrenotazioni(string idUser)
        {
            var prenotazioni = this.DBContext.Prenotazioni
                                     .Include(p => p.IdUserNavigation)
                                     .Include(p => p.IdCrossAttrazionePeriodoNavigation).ThenInclude(p=>p.IdAttrazioneNavigation).AsQueryable();

            if (idUser != null)
            {
                prenotazioni = prenotazioni.Where(p => p.IdUtente == idUser).AsQueryable();

            }

            List<PrenotazioneModel> prenotazioniList = prenotazioni
                .Select(p => new PrenotazioneModel
                {
                    Id =p.Id.ToString(),
                    IdUtente = p.IdUtente,
                    IdCrossAttrazionePeriodo = p.IdCrossAttrazionePeriodo.ToString(),
                    CreatedAt = p.CreatedAt.ToString(),
                    UpdatedAt = p.UpdatedAt.ToString(),
                    Attiva = p.Attiva,
                    NumPostiPrenotati = p.NumPostiPrenotati,
                    IdUserNavigation = p.IdUserNavigation,
                    IdCrossAttrazionePeriodoNavigation = p.IdCrossAttrazionePeriodoNavigation
                }).OrderByDescending(p=>p.CreatedAt).ThenBy(p=>p.IdUserNavigation.LastName).ToList();


            return prenotazioniList;
        }


    }
}
