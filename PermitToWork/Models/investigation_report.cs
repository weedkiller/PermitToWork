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
    
    public partial class investigation_report
    {
        public investigation_report()
        {
            this.iir_recommendations = new HashSet<iir_recommendations>();
        }
    
        public int id { get; set; }
        public string facility { get; set; }
        public string title { get; set; }
        public string reference_number { get; set; }
        public Nullable<System.DateTime> date_incident { get; set; }
        public string incident_location { get; set; }
        public string incident_type { get; set; }
        public string actual_loss { get; set; }
        public string potential_loss { get; set; }
        public string probability { get; set; }
        public string factual_information { get; set; }
        public string immediate_action { get; set; }
        public string immediate_causes { get; set; }
        public string basic_causes { get; set; }
        public string additional_observation { get; set; }
        public string cost_estimate { get; set; }
        public string investigator { get; set; }
        public Nullable<System.DateTime> investigator_date { get; set; }
        public string loss_control { get; set; }
        public Nullable<System.DateTime> loss_control_date { get; set; }
        public string field_manager { get; set; }
        public Nullable<System.DateTime> field_manager_date { get; set; }
        public string investigator_approve { get; set; }
        public string loss_control_approve { get; set; }
        public string field_manager_approve { get; set; }
        public string loss_control_delegate { get; set; }
        public string field_manager_delegate { get; set; }
        public string safety_officer { get; set; }
        public Nullable<System.DateTime> safety_officer_date { get; set; }
        public string safety_officer_approve { get; set; }
        public string safety_officer_delegate { get; set; }
    
        public virtual ICollection<iir_recommendations> iir_recommendations { get; set; }
    }
}
