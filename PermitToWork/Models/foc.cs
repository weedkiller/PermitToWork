//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PermitToWork.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class foc
    {
        public foc()
        {
            this.foc_op_avail = new HashSet<foc_op_avail>();
            this.foc_paf = new HashSet<foc_paf>();
            this.foc_target_paf = new HashSet<foc_target_paf>();
            this.mas = new HashSet<ma>();
            this.units = new HashSet<unit>();
        }
    
        public int id { get; set; }
        public int plant_id { get; set; }
        public string nama { get; set; }
    
        public virtual ICollection<foc_op_avail> foc_op_avail { get; set; }
        public virtual ICollection<foc_paf> foc_paf { get; set; }
        public virtual ICollection<foc_target_paf> foc_target_paf { get; set; }
        public virtual plant plant { get; set; }
        public virtual ICollection<ma> mas { get; set; }
        public virtual ICollection<unit> units { get; set; }
    }
}
