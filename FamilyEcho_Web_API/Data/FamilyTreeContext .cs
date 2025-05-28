using FamilyEcho.API.Models;
using Microsoft.EntityFrameworkCore;

namespace FamilyEcho.API.Data
{
    public class FamilyTreeContext : DbContext
    {
        public FamilyTreeContext(DbContextOptions<FamilyTreeContext> options) : base(options) { }

        public DbSet<Person> Person { get; set; }
    }
}
