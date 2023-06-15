using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using VillaggioVacanze.DB.Entities;

namespace VillaggioVacanze.DB
{
    public class DBContext : IdentityDbContext<User>
    {

        public DBContext(DbContextOptions<DBContext> options)
           : base(options)
        {
        }

        public DbSet<Attrazione> Attrazioni { get; set; }

        public DbSet<Prenotazione> Prenotazioni { get; set; }

        public DbSet<CrossAttrazionePeriodo> CrossAttrazioniPeriodi { get; set; }



        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
        }

    }
}
