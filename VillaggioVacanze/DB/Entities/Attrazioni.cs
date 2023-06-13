
using System;
using System.ComponentModel.DataAnnotations;

namespace VillaggioVacanze.DB.Entities

{
    public class Attrazioni
    {
      [Key]
      public Guid IdAttrazione { get; set; }
      public string Descrizione { get; set; }
      public int NPosti { get; set; }
      public DateTime DataEvento { get; set; }
      public bool Attiva { get; set; }
      public decimal PrezzoUnitario { get; set; }
      public string Titolo { get; set; }
    }
}
