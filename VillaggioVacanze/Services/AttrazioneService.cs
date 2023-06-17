using System.Collections.Generic;
using System;
using VillaggioVacanze.DB;
using VillaggioVacanze.DB.Entities;
using System.Linq;
using VillaggioVacanze.Models;
using Microsoft.EntityFrameworkCore;

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
                    IdAttrazioneNavigation = c.IdAttrazioneNavigation,
                    Prenotazioni = this.DBContext.Prenotazioni.Where(p => p.IdCrossAttrazionePeriodo == c.Id).ToList()

                }).OrderBy(c => c.IdAttrazioneNavigation.Titolo).ThenByDescending(c => c.fromData).ToList();


            return viaggi;
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
                    NumPostiPrenotati = p.NumPostiPrenotati.ToString(),
                    IdUserNavigation = p.IdUserNavigation,
                    IdCrossAttrazionePeriodoNavigation = p.IdCrossAttrazionePeriodoNavigation
                }).OrderByDescending(p=>p.CreatedAt).ThenBy(p=>p.IdUserNavigation.LastName).ToList();


            return prenotazioniList;
        }



        public string PrenotaUser(CrossAttrazionePeriodoModel crossModel, string idUser)
        {
            int numPostiScelti = int.Parse(crossModel.numPosti);

            CrossAttrazionePeriodo entity = this.DBContext.CrossAttrazioniPeriodi.Where(c=>c.Id == Guid.Parse(crossModel.Id)).FirstOrDefault();

            if(entity == null || entity.numPosti < numPostiScelti || numPostiScelti == 0)
            {
                return "KO";
            }
           

            Prenotazione prenotazione = new Prenotazione()
            {
                IdUtente = idUser,
                IdCrossAttrazionePeriodo = entity.Id,
                CreatedAt = DateTime.Now.Date,
                NumPostiPrenotati = numPostiScelti
            };

            this.DBContext.Prenotazioni.Add(prenotazione);

            entity.numPosti = entity.numPosti - numPostiScelti;

            entity.attivo = entity.numPosti > 0 ? true : false;

            this.DBContext.CrossAttrazioniPeriodi.Update(entity);

            this.DBContext.SaveChanges();

            return "OK";


            
        }

        public string ModificaPosti(PrenotazioneModel prenotazioneModel)
        {
            int numPostiScelti = int.Parse(prenotazioneModel.NumPostiPrenotati);

            Prenotazione entityPrenotazione = this.DBContext.Prenotazioni.Where(c => c.Id == Guid.Parse(prenotazioneModel.Id)).FirstOrDefault();
            CrossAttrazionePeriodo entityCross = this.DBContext.CrossAttrazioniPeriodi.Where(c => c.Id == entityPrenotazione.IdCrossAttrazionePeriodo).FirstOrDefault();

            if (entityPrenotazione == null || entityCross.numPosti < numPostiScelti || numPostiScelti == 0)
            {
                return "KO";
            }

            entityPrenotazione.NumPostiPrenotati = numPostiScelti;
            entityCross.numPosti = entityCross.numPosti - numPostiScelti;  

            this.DBContext.Prenotazioni.Update(entityPrenotazione);
            this.DBContext.CrossAttrazioniPeriodi.Update(entityCross);

            this.DBContext.SaveChanges();

            return "OK";



        }

        public string CancellaPrenotazione(PrenotazioneModel prenotazioneModel)
        {
  

            Prenotazione entityPrenotazione = this.DBContext.Prenotazioni.Where(c => c.Id == Guid.Parse(prenotazioneModel.Id)).FirstOrDefault();
            CrossAttrazionePeriodo entityCross = this.DBContext.CrossAttrazioniPeriodi.Where(c => c.Id == entityPrenotazione.IdCrossAttrazionePeriodo).FirstOrDefault();



            if (entityPrenotazione == null || entityCross == null)
            {
                return "KO";
            }

            entityCross.numPosti = entityCross.numPosti + entityPrenotazione.NumPostiPrenotati;
            entityCross.attivo = entityCross.numPosti > 0 ? true : false;

            this.DBContext.Prenotazioni.Remove(entityPrenotazione);
            this.DBContext.CrossAttrazioniPeriodi.Update(entityCross);

            this.DBContext.SaveChanges();

            return "OK";



        }


        public string CancellaCrossAttrazionePeriodo(CrossAttrazionePeriodoModel crossModel)
        {


            CrossAttrazionePeriodo entityCross = this.DBContext.CrossAttrazioniPeriodi
                .Where(c => c.Id == Guid.Parse(crossModel.Id)).FirstOrDefault();

            entityCross.Prenotazioni = this.DBContext.Prenotazioni.Where(p => p.IdCrossAttrazionePeriodo == entityCross.Id).ToList();


            int prenotazioniEffettuate = entityCross.Prenotazioni.Sum(p => p.NumPostiPrenotati);

            if (entityCross == null || prenotazioniEffettuate > 0 || entityCross.Prenotazioni.Count()> 0)
            {
                return "KO";
            }

            
            this.DBContext.CrossAttrazioniPeriodi.Remove(entityCross);

            this.DBContext.SaveChanges();

            return "OK";



        }
   
    
    
    }
}

