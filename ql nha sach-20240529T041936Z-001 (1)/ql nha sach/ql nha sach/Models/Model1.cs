using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace ql_nha_sach.Models
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model13")
        {
        }

        public virtual DbSet<KHACHHANG> KHACHHANGs { get; set; }
        public virtual DbSet<LOAISACH> LOAISACHes { get; set; }
        public virtual DbSet<SACH> SACHes { get; set; }
        public virtual DbSet<TAIKHOAN> TAIKHOANs { get; set; }
        /* public virtual DbSet<THEMUON> THEMUONs { get; set; }*/
        public virtual DbSet<LichSuNhapSach> LichSuNhapSaches { get; set; } // Thêm dòng này


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {

            modelBuilder.Entity<LOAISACH>()
                .HasMany(e => e.SACHes)
                .WithOptional(e => e.LOAISACH)
                .WillCascadeOnDelete();


            modelBuilder.Entity<TAIKHOAN>()
                .Property(e => e.Matkhau)
                .IsFixedLength()
                .IsUnicode(false);


        }
    }
}
