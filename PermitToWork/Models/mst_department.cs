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
    
    public partial class mst_department
    {
        public mst_department()
        {
            this.permit_to_work = new HashSet<permit_to_work>();
        }
    
        public int id { get; set; }
        public string department { get; set; }
    
        public virtual ICollection<permit_to_work> permit_to_work { get; set; }
    }
}
