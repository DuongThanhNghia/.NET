using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ql_nha_sach.Models
{
    [Table("LichSuNhapSach")]
    public partial class LichSuNhapSach
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(20)]
        public string MaSach { get; set; }

        public DateTime NgayNhap { get; set; }

        public int SoLuongNhap { get; set; }

        [ForeignKey("MaSach")]
        public virtual SACH SACH { get; set; }
    }
}
