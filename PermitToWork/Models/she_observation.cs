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
    
    public partial class she_observation
    {
        public int id { get; set; }
        public Nullable<byte> she_obs { get; set; }
        public Nullable<byte> she_ins { get; set; }
        public string accident_unsafe { get; set; }
        public string accident_safe { get; set; }
        public string fire_unsafe { get; set; }
        public string fire_safe { get; set; }
        public string prevention_unsafe { get; set; }
        public string prevention_safe { get; set; }
        public string supervisor_unsafe { get; set; }
        public string supervisor_safe { get; set; }
        public string fit_work_unsafe { get; set; }
        public string fit_work_safe { get; set; }
        public string psychological_unsafe { get; set; }
        public string psychological_safe { get; set; }
        public string posture_unsafe { get; set; }
        public string posture_safe { get; set; }
        public string substance_unsafe { get; set; }
        public string substance_safe { get; set; }
        public string hygiene_unsafe { get; set; }
        public string hygiene_safe { get; set; }
        public string house_unsafe { get; set; }
        public string house_safe { get; set; }
        public string standard_unsafe { get; set; }
        public string standard_safe { get; set; }
        public string spill_unsafe { get; set; }
        public string spill_safe { get; set; }
        public string waste_energy_unsafe { get; set; }
        public string waste_energy_safe { get; set; }
        public string containment_unsafe { get; set; }
        public string containment_safe { get; set; }
        public string absorbent_unsafe { get; set; }
        public string absorbent_safe { get; set; }
        public string hira_unsafe { get; set; }
        public string hira_safe { get; set; }
        public string ptw_unsafe { get; set; }
        public string ptw_safe { get; set; }
        public string sop_unsafe { get; set; }
        public string sop_safe { get; set; }
        public string msds_unsafe { get; set; }
        public string msds_safe { get; set; }
        public string emergency_unsafe { get; set; }
        public string emergency_safe { get; set; }
        public string certificates_unsafe { get; set; }
        public string certificates_safe { get; set; }
        public string ppe_unsafe { get; set; }
        public string ppe_safe { get; set; }
        public string hand_unsafe { get; set; }
        public string hand_safe { get; set; }
        public string mechanical_unsafe { get; set; }
        public string mechanical_safe { get; set; }
        public string electrical_unsafe { get; set; }
        public string electrical_safe { get; set; }
        public string vehicular_unsafe { get; set; }
        public string vehicular_safe { get; set; }
        public string substandard_unsafe { get; set; }
        public string substandard_safe { get; set; }
        public string h2s_unsafe { get; set; }
        public string h2s_safe { get; set; }
        public string workplace_health_unsafe { get; set; }
        public string workplace_health_safe { get; set; }
        public Nullable<System.DateTime> date_time { get; set; }
        public string observer { get; set; }
        public string department { get; set; }
        public string location { get; set; }
        public string activity { get; set; }
        public Nullable<byte> safe_observed { get; set; }
        public Nullable<byte> action_encourages { get; set; }
        public string action_encourage { get; set; }
        public Nullable<byte> unsafe_observed { get; set; }
        public Nullable<byte> immediate_corrective_act { get; set; }
        public Nullable<byte> action_prevents { get; set; }
        public string action_prevent { get; set; }
        public string accident_risk { get; set; }
        public string fire_risk { get; set; }
        public string prevention_risk { get; set; }
        public string supervisor_risk { get; set; }
        public string fit_work_risk { get; set; }
        public string psychological_risk { get; set; }
        public string posture_risk { get; set; }
        public string substance_risk { get; set; }
        public string hygiene_risk { get; set; }
        public string house_risk { get; set; }
        public string standard_risk { get; set; }
        public string spill_risk { get; set; }
        public string waste_energy_risk { get; set; }
        public string containment_risk { get; set; }
        public string absorbent_risk { get; set; }
        public string hira_risk { get; set; }
        public string ptw_risk { get; set; }
        public string sop_risk { get; set; }
        public string msds_risk { get; set; }
        public string emergency_risk { get; set; }
        public string certificates_risk { get; set; }
        public string ppe_risk { get; set; }
        public string hand_risk { get; set; }
        public string mechanical_risk { get; set; }
        public string electrical_risk { get; set; }
        public string vehicular_risk { get; set; }
        public string substandard_risk { get; set; }
        public string h2s_risk { get; set; }
        public string workplace_health_risk { get; set; }
        public string safe_observeds { get; set; }
        public string unsafe_observeds { get; set; }
        public string immediate_corrective_acts { get; set; }
        public Nullable<byte> type_equipment { get; set; }
        public Nullable<byte> equipment_employee { get; set; }
        public Nullable<int> equipment_id { get; set; }
        public string employee_id { get; set; }
        public Nullable<byte> is_quality { get; set; }
        public Nullable<byte> is_review { get; set; }
    }
}
