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
    
    public partial class audit_log_clause
    {
        public int id { get; set; }
        public Nullable<int> id_audit_log { get; set; }
        public Nullable<int> id_pir_clause { get; set; }
    
        public virtual audit_log audit_log { get; set; }
        public virtual pir_clause pir_clause { get; set; }
    }
}
