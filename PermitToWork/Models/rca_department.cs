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
    
    public partial class rca_department
    {
        public rca_department()
        {
            this.rca_section = new HashSet<rca_section>();
        }
    
        public int id { get; set; }
        public int id_facility { get; set; }
        public string name { get; set; }
    
        public virtual rca_facility rca_facility { get; set; }
        public virtual ICollection<rca_section> rca_section { get; set; }
    }
}
