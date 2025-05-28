
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FamilyEcho.API.Models
{
    [Table("Person")]
    public class Person
    {
        [Key]
        [Column("person_id")]
        public int PersonId { get; set; }

        [Column("first_name")]
        [MaxLength(50)]
        public string FirstName { get; set; }

        [Column("last_name")]
        [MaxLength(50)]
        public string LastName { get; set; }

        [Column("gender")]
        [MaxLength(1)]
        public string Gender { get; set; } // 'M', 'F', or 'O'

        [Column("birth_date", TypeName = "date")]
        public DateTime? BirthDate { get; set; }

        [Column("mother_id")]
        public int? MotherId { get; set; }

        [Column("father_id")]
        public int? FatherId { get; set; }

        [Column("spouse_id")]
        public int? SpouseId { get; set; }

    }
}
