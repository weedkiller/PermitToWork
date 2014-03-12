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
    
    public partial class radiography
    {
        public int id { get; set; }
        public Nullable<int> id_ptw { get; set; }
        public string rg_no { get; set; }
        public string purpose { get; set; }
        public string radiographer_2 { get; set; }
        public string radiographer_1 { get; set; }
        public string radiographer_2_license_number { get; set; }
        public string radiographer_1_license_number { get; set; }
        public string radiation_protection_officer { get; set; }
        public string radiation_protection_officer_license_number { get; set; }
        public string potential_area_affected { get; set; }
        public string total_crew { get; set; }
        public string supervisor { get; set; }
        public string radiographic_source { get; set; }
        public Nullable<System.DateTime> estimate_time_start { get; set; }
        public Nullable<System.DateTime> estimate_time_end { get; set; }
        public string pre_screening_spv { get; set; }
        public string pre_screening_rad { get; set; }
        public string pre_screening_fo { get; set; }
        public string operator_signature { get; set; }
        public string operator_delegate { get; set; }
        public string radiographer_2_signature { get; set; }
        public string radiographer_2_delegate { get; set; }
        public string supervisor_signature { get; set; }
        public string supervisor_delegate { get; set; }
        public string safety_officer { get; set; }
        public string safety_officer_signature { get; set; }
        public string safety_officer_delegate { get; set; }
        public string facility_owner { get; set; }
        public string facility_owner_signature { get; set; }
        public string facility_owner_delegate { get; set; }
        public string pre_remark { get; set; }
        public string can_screening_spv { get; set; }
        public string can_screening_rad { get; set; }
        public string can_screening_fo { get; set; }
        public string can_operator_signature { get; set; }
        public string can_operator_delegate { get; set; }
        public string can_radiographer_2_signature { get; set; }
        public string can_radiographer_2_delegate { get; set; }
        public string can_supervisor_signature { get; set; }
        public string can_supervisor_delegate { get; set; }
        public string can_safety_officer_signature { get; set; }
        public string can_safety_officer_delegate { get; set; }
        public string can_fo_signature { get; set; }
        public string can_fo_delegate { get; set; }
        public int status { get; set; }
        public string @operator { get; set; }
        public string work_location { get; set; }
        public string can_remark { get; set; }
    
        public virtual permit_to_work permit_to_work { get; set; }
    }
}
