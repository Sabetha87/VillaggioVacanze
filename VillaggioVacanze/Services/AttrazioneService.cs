using System.Collections.Generic;
using System;
using VillaggioVacanze.DB;
using VillaggioVacanze.DB.Entities;
using System.Linq;

namespace VillaggioVacanze.Services
{
    public class AttrazioneService
    {
        private DBContext DBContext;
        public AttrazioneService(DBContext DBContext)
        {
            this.DBContext = DBContext;
        }
        public List<Attrazioni> GetAttrazioni()
        {
            //select * from Attrazioni
            List<Attrazioni> result = this.DBContext.Attrazionis.ToList();
            return result;
        }


    }
}
