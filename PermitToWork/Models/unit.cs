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
    
    public partial class unit
    {
        public unit()
        {
            this.systems = new HashSet<system>();
            this.unit_paf = new HashSet<unit_paf>();
        }
    
        public int id { get; set; }
        public int id_foc { get; set; }
        public string nama { get; set; }
        public double ma { get; set; }
        public double masd { get; set; }
    
        public virtual foc foc { get; set; }
        public virtual ICollection<system> systems { get; set; }
        public virtual ICollection<unit_paf> unit_paf { get; set; }
    }
}
