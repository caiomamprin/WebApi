using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSig.Models;

namespace WebApiSig.Models
{
    public class SigContext : DbContext
    {
        public SigContext(DbContextOptions<SigContext> options)
            : base(options)
        {
        }

        public DbSet<Owner> Owners { get; set; }

        public DbSet<Cat> Cats { get; set; }

        public DbSet<WebApiSig.Models.Dog> Dog { get; set; }

    }
}
