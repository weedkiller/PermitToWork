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
    
    public partial class hira_document
    {
        public int id { get; set; }
        public string location { get; set; }
        public string filename { get; set; }
        public Nullable<int> id_ptw { get; set; }
    
        public virtual permit_to_work permit_to_work { get; set; }
    }
}
