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
    
    public partial class monthly_project_she_report
    {
        public int id { get; set; }
        public string contractor_name { get; set; }
        public Nullable<int> contractor_id { get; set; }
        public string no_contract { get; set; }
        public Nullable<System.DateTime> month_year { get; set; }
        public string project_name { get; set; }
        public string project_location { get; set; }
        public string project_manager { get; set; }
        public string contract_supervisor { get; set; }
        public string project_she_representative { get; set; }
        public string se_she_representative { get; set; }
        public Nullable<int> incident_minor_total { get; set; }
        public Nullable<double> incident_minor_cost { get; set; }
        public Nullable<int> incident_minor_ytd { get; set; }
        public Nullable<double> incident_minor_ytd_cost { get; set; }
        public Nullable<int> toolbox_meeting_total { get; set; }
        public Nullable<int> toolbox_meeting_ytd { get; set; }
        public Nullable<int> incident_moderate_total { get; set; }
        public Nullable<double> incident_moderate_cost { get; set; }
        public Nullable<int> incident_moderate_ytd { get; set; }
        public Nullable<double> incident_moderate_ytd_cost { get; set; }
        public Nullable<int> weekly_she_meeting_total { get; set; }
        public Nullable<int> weekly_she_meeting_ytd { get; set; }
        public Nullable<int> incident_serious_total { get; set; }
        public Nullable<double> incident_serious_cost { get; set; }
        public Nullable<int> incident_serious_ytd { get; set; }
        public Nullable<double> incident_serious_ytd_cost { get; set; }
        public Nullable<int> monthly_contr_mig_total { get; set; }
        public Nullable<int> monthly_contr_mig_ytd { get; set; }
        public Nullable<int> incident_major_total { get; set; }
        public Nullable<double> incident_major_cost { get; set; }
        public Nullable<int> incident_major_ytd { get; set; }
        public Nullable<double> incident_major_ytd_cost { get; set; }
        public Nullable<int> environmental_loss_total { get; set; }
        public Nullable<double> environmental_loss_cost { get; set; }
        public Nullable<int> environmental_loss_ytd { get; set; }
        public Nullable<double> environmental_loss_ytd_cost { get; set; }
        public Nullable<int> she_observation_card_total { get; set; }
        public Nullable<int> she_observation_card_ytd { get; set; }
        public Nullable<int> property_damage_total { get; set; }
        public Nullable<double> property_damage_cost { get; set; }
        public Nullable<int> property_damage_ytd { get; set; }
        public Nullable<double> property_damage_ytd_cost { get; set; }
        public Nullable<int> new_jsa_hira_total { get; set; }
        public Nullable<int> new_jsa_hira_ytd { get; set; }
        public Nullable<int> process_loss_total { get; set; }
        public Nullable<double> process_loss_cost { get; set; }
        public Nullable<int> process_loss_ytd { get; set; }
        public Nullable<double> process_loss_ytd_cost { get; set; }
        public Nullable<int> ptw_issued_total { get; set; }
        public Nullable<int> ptw_issued_ytd { get; set; }
        public Nullable<int> external_relation_total { get; set; }
        public Nullable<double> external_relation_cost { get; set; }
        public Nullable<int> external_relation_ytd { get; set; }
        public Nullable<double> external_relation_ytd_cost { get; set; }
        public Nullable<int> theft_crime_total { get; set; }
        public Nullable<double> theft_crime_cost { get; set; }
        public Nullable<int> theft_crime_ytd { get; set; }
        public Nullable<double> theft_crime_ytd_cost { get; set; }
        public Nullable<int> facility_inspection_total { get; set; }
        public Nullable<int> facility_inspection_ytd { get; set; }
        public Nullable<int> vehicular_total { get; set; }
        public Nullable<double> vehicular_cost { get; set; }
        public Nullable<int> vehicular_ytd { get; set; }
        public Nullable<double> vehicular_ytd_cost { get; set; }
        public Nullable<int> vehicular_inspection_total { get; set; }
        public Nullable<int> vehicular_inspection_ytd { get; set; }
        public Nullable<int> near_miss_total { get; set; }
        public Nullable<double> near_miss_cost { get; set; }
        public Nullable<int> near_miss_ytd { get; set; }
        public Nullable<double> near_miss_ytd_cost { get; set; }
        public Nullable<int> ppe_inspection_total { get; set; }
        public Nullable<int> ppe_inspection_ytd { get; set; }
        public Nullable<int> lifting_eq_inspection_total { get; set; }
        public Nullable<int> lifting_eq_inspection_ytd { get; set; }
        public Nullable<int> man_hours_mh { get; set; }
        public Nullable<int> man_hours_ytd { get; set; }
        public Nullable<int> fire_inspection_total { get; set; }
        public Nullable<int> fire_inspection_ytd { get; set; }
        public Nullable<int> days_mh { get; set; }
        public Nullable<int> days_ytd { get; set; }
        public Nullable<int> vehicle_emission_total { get; set; }
        public Nullable<int> vehicle_emission_ytd { get; set; }
        public Nullable<double> incident_frequency_rate_mh { get; set; }
        public Nullable<double> incident_frequency_rate_ytd { get; set; }
        public Nullable<int> welding_eq_inspection_total { get; set; }
        public Nullable<int> welding_eq_inspection_ytd { get; set; }
        public Nullable<double> incident_severity_rate_mh { get; set; }
        public Nullable<double> incident_severity_rate_ytd { get; set; }
        public Nullable<int> hde_inspection_total { get; set; }
        public Nullable<int> hde_inspection_ytd { get; set; }
        public Nullable<System.DateTime> last_date_time_lti { get; set; }
        public Nullable<int> light_vehicle_travel_mh { get; set; }
        public Nullable<int> light_vehicle_travel_ytd { get; set; }
        public Nullable<int> fire_emergency_total { get; set; }
        public Nullable<int> fire_emergency_ytd { get; set; }
        public Nullable<int> h2s_emergency_total { get; set; }
        public Nullable<int> h2s_emergency_ytd { get; set; }
        public Nullable<int> local_workers { get; set; }
        public Nullable<int> local_lead { get; set; }
        public Nullable<int> local_spv { get; set; }
        public Nullable<int> local_total { get; set; }
        public Nullable<int> environmental_spill_total { get; set; }
        public Nullable<int> environmental_spill_ytd { get; set; }
        public Nullable<int> non_local_workers { get; set; }
        public Nullable<int> non_local_lead { get; set; }
        public Nullable<int> non_local_spv { get; set; }
        public Nullable<int> non_local_total { get; set; }
        public Nullable<int> medical_evacuation_total { get; set; }
        public Nullable<int> medical_evacuation_ytd { get; set; }
        public Nullable<int> expatriates_workers { get; set; }
        public Nullable<int> expatriates_lead { get; set; }
        public Nullable<int> expatriates_spv { get; set; }
        public Nullable<int> expatriates_total { get; set; }
        public Nullable<int> fit_for_day_total { get; set; }
        public Nullable<int> fit_for_day_ytd { get; set; }
        public Nullable<int> domestic_waste_total { get; set; }
        public Nullable<int> domestic_waste_ytd { get; set; }
        public Nullable<int> clinic_visit_total { get; set; }
        public Nullable<int> clinic_visit_ytd { get; set; }
        public Nullable<int> hazardous_waste_total { get; set; }
        public Nullable<int> hazardous_waste_ytd { get; set; }
        public Nullable<int> no_work_illness_total { get; set; }
        public Nullable<int> no_work_illness_ytd { get; set; }
        public Nullable<int> new_msds_total { get; set; }
        public Nullable<int> new_msds_ytd { get; set; }
        public Nullable<int> ill_monitoring_total { get; set; }
        public Nullable<int> ill_monitoring_ytd { get; set; }
        public Nullable<int> lti_ytd { get; set; }
        public Nullable<System.DateTime> period_start { get; set; }
        public Nullable<System.DateTime> period_end { get; set; }
    }
}
