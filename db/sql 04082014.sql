USE [star_energy_ptw]
GO
/****** Object:  Table [dbo].[confined_space]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[confined_space](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[csep_no] [varchar](50) NULL,
	[attendant] [varchar](255) NULL,
	[purpose] [text] NULL,
	[work_leader] [varchar](255) NULL,
	[validity_period_start] [datetime] NULL,
	[validity_period_end] [datetime] NULL,
	[screening_spv] [varchar](50) NULL,
	[screening_fo] [varchar](50) NULL,
	[screening_1] [varchar](50) NULL,
	[screening_2] [varchar](50) NULL,
	[screening_3] [varchar](50) NULL,
	[screening_4] [varchar](50) NULL,
	[screening_5] [varchar](50) NULL,
	[screening_6] [varchar](50) NULL,
	[screening_7] [varchar](50) NULL,
	[id_ptw] [int] NULL,
	[notes] [text] NULL,
	[methane_result] [varchar](50) NULL,
	[o2_result] [varchar](50) NULL,
	[h2s_result] [varchar](50) NULL,
	[co_result] [varchar](50) NULL,
	[other_gas] [varchar](255) NULL,
	[other_result] [varchar](255) NULL,
	[acc_work_leader_approve] [varchar](255) NULL,
	[acc_supervisor_approve] [varchar](255) NULL,
	[acc_supervisor] [varchar](255) NULL,
	[acc_supervisor_delegate] [varchar](255) NULL,
	[acc_fire_watch] [varchar](255) NULL,
	[acc_fire_watch_delegate] [varchar](255) NULL,
	[acc_fire_watch_approve] [varchar](255) NULL,
	[acc_fo] [varchar](255) NULL,
	[acc_fo_delegate] [varchar](255) NULL,
	[acc_fo_approve] [varchar](255) NULL,
	[acc_gas_tester] [varchar](255) NULL,
	[acc_gas_tester_approve] [varchar](255) NULL,
	[acc_work_representative_approve] [varchar](255) NULL,
	[can_work_leader_approve] [varchar](255) NULL,
	[can_supervisor_approve] [varchar](255) NULL,
	[can_supervisor] [varchar](255) NULL,
	[can_supervisor_delegate] [varchar](255) NULL,
	[can_fire_watch] [varchar](255) NULL,
	[can_fire_watch_delegate] [varchar](255) NULL,
	[can_fire_watch_approve] [varchar](255) NULL,
	[can_fo] [varchar](255) NULL,
	[can_fo_delegate] [varchar](255) NULL,
	[can_fo_approve] [varchar](255) NULL,
	[ext_datetime_1] [datetime] NULL,
	[ext_lel_1] [varchar](50) NULL,
	[ext_o2_1] [varchar](50) NULL,
	[ext_h2s_1] [varchar](50) NULL,
	[ext_co_1] [varchar](50) NULL,
	[ext_other_1] [varchar](255) NULL,
	[ext_gas_tester_1] [varchar](50) NULL,
	[ext_gas_tester_approve_1] [varchar](255) NULL,
	[ext_work_leader_1] [varchar](50) NULL,
	[ext_work_leader_approve_1] [varchar](255) NULL,
	[ext_fo_1] [varchar](50) NULL,
	[ext_fo_delegate_1] [varchar](50) NULL,
	[ext_fo_approve_1] [varchar](255) NULL,
	[ext_new_validity_1] [datetime] NULL,
	[ext_remark_1] [text] NULL,
	[ext_datetime_2] [datetime] NULL,
	[ext_lel_2] [varchar](50) NULL,
	[ext_o2_2] [varchar](50) NULL,
	[ext_h2s_2] [varchar](50) NULL,
	[ext_co_2] [varchar](50) NULL,
	[ext_other_2] [varchar](255) NULL,
	[ext_gas_tester_2] [varchar](50) NULL,
	[ext_gas_tester_approve_2] [varchar](255) NULL,
	[ext_work_leader_2] [varchar](50) NULL,
	[ext_work_leader_approve_2] [varchar](255) NULL,
	[ext_fo_2] [varchar](50) NULL,
	[ext_fo_delegate_2] [varchar](50) NULL,
	[ext_fo_approve_2] [varchar](255) NULL,
	[ext_new_validity_2] [datetime] NULL,
	[ext_remark_2] [text] NULL,
	[ext_datetime_3] [datetime] NULL,
	[ext_lel_3] [varchar](50) NULL,
	[ext_o2_3] [varchar](50) NULL,
	[ext_h2s_3] [varchar](50) NULL,
	[ext_co_3] [varchar](50) NULL,
	[ext_other_3] [varchar](255) NULL,
	[ext_gas_tester_3] [varchar](50) NULL,
	[ext_gas_tester_approve_3] [varchar](255) NULL,
	[ext_work_leader_3] [varchar](50) NULL,
	[ext_work_leader_approve_3] [varchar](255) NULL,
	[ext_fo_3] [varchar](50) NULL,
	[ext_fo_delegate_3] [varchar](50) NULL,
	[ext_fo_approve_3] [varchar](255) NULL,
	[ext_new_validity_3] [datetime] NULL,
	[ext_remark_3] [text] NULL,
	[ext_datetime_4] [datetime] NULL,
	[ext_lel_4] [varchar](50) NULL,
	[ext_o2_4] [varchar](50) NULL,
	[ext_h2s_4] [varchar](50) NULL,
	[ext_co_4] [varchar](50) NULL,
	[ext_other_4] [varchar](255) NULL,
	[ext_gas_tester_4] [varchar](50) NULL,
	[ext_gas_tester_approve_4] [varchar](255) NULL,
	[ext_work_leader_4] [varchar](50) NULL,
	[ext_work_leader_approve_4] [varchar](255) NULL,
	[ext_fo_4] [varchar](50) NULL,
	[ext_fo_delegate_4] [varchar](50) NULL,
	[ext_fo_approve_4] [varchar](255) NULL,
	[ext_new_validity_4] [datetime] NULL,
	[ext_remark_4] [text] NULL,
	[ext_datetime_5] [datetime] NULL,
	[ext_lel_5] [varchar](50) NULL,
	[ext_o2_5] [varchar](50) NULL,
	[ext_h2s_5] [varchar](50) NULL,
	[ext_co_5] [varchar](50) NULL,
	[ext_other_5] [varchar](255) NULL,
	[ext_gas_tester_5] [varchar](50) NULL,
	[ext_gas_tester_approve_5] [varchar](255) NULL,
	[ext_work_leader_5] [varchar](50) NULL,
	[ext_work_leader_approve_5] [varchar](255) NULL,
	[ext_fo_5] [varchar](50) NULL,
	[ext_fo_delegate_5] [varchar](50) NULL,
	[ext_fo_approve_5] [varchar](255) NULL,
	[ext_new_validity_5] [datetime] NULL,
	[ext_remark_5] [text] NULL,
	[ext_datetime_6] [datetime] NULL,
	[ext_lel_6] [varchar](50) NULL,
	[ext_o2_6] [varchar](50) NULL,
	[ext_h2s_6] [varchar](50) NULL,
	[ext_co_6] [varchar](50) NULL,
	[ext_other_6] [varchar](255) NULL,
	[ext_gas_tester_6] [varchar](50) NULL,
	[ext_gas_tester_approve_6] [varchar](255) NULL,
	[ext_work_leader_6] [varchar](50) NULL,
	[ext_work_leader_approve_6] [varchar](255) NULL,
	[ext_fo_6] [varchar](50) NULL,
	[ext_fo_delegate_6] [varchar](50) NULL,
	[ext_fo_approve_6] [varchar](255) NULL,
	[ext_new_validity_6] [datetime] NULL,
	[ext_remark_6] [text] NULL,
	[ext_datetime_7] [datetime] NULL,
	[ext_lel_7] [varchar](50) NULL,
	[ext_o2_7] [varchar](50) NULL,
	[ext_h2s_7] [varchar](50) NULL,
	[ext_co_7] [varchar](50) NULL,
	[ext_other_7] [varchar](255) NULL,
	[ext_gas_tester_7] [varchar](50) NULL,
	[ext_gas_tester_approve_7] [varchar](255) NULL,
	[ext_work_leader_7] [varchar](50) NULL,
	[ext_work_leader_approve_7] [varchar](255) NULL,
	[ext_fo_7] [varchar](50) NULL,
	[ext_fo_delegate_7] [varchar](50) NULL,
	[ext_fo_approve_7] [varchar](255) NULL,
	[ext_new_validity_7] [datetime] NULL,
	[ext_remark_7] [text] NULL,
	[status] [int] NULL,
	[random_pin] [varchar](4) NULL,
 CONSTRAINT [PK_confined_space] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[excavation]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[excavation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_ptw] [int] NULL,
	[ex_no] [varchar](50) NULL,
	[work_location] [varchar](255) NULL,
	[supervisor] [varchar](50) NULL,
	[requestor] [varchar](50) NULL,
	[total_crew] [int] NULL,
	[purpose] [text] NULL,
	[estimate_start_date] [datetime] NULL,
	[estimate_end_date] [datetime] NULL,
	[pre_screening_spv] [varchar](50) NULL,
	[pre_screening_ei] [varchar](50) NULL,
	[pre_screening_fac] [varchar](50) NULL,
	[pre_screening_fo] [varchar](50) NULL,
	[excavation_performed] [varchar](2) NULL,
	[excavation_method] [varchar](255) NULL,
	[equipment] [varchar](255) NULL,
	[soil_volume] [varchar](50) NULL,
	[disposal_location] [varchar](255) NULL,
	[disposal_type] [varchar](2) NULL,
	[supervisor_signature] [varchar](255) NULL,
	[supervisor_delegate] [varchar](50) NULL,
	[supervisor_signature_date] [datetime] NULL,
	[safety_officer] [varchar](50) NULL,
	[safety_officer_signature] [varchar](255) NULL,
	[safety_officer_delegate] [varchar](50) NULL,
	[safety_officer_signature_date] [datetime] NULL,
	[facilities] [varchar](50) NULL,
	[facilities_signature] [varchar](255) NULL,
	[facilities_delegate] [varchar](50) NULL,
	[facilities_signature_date] [datetime] NULL,
	[ei] [varchar](50) NULL,
	[ei_signature] [varchar](255) NULL,
	[ei_delegate] [varchar](50) NULL,
	[ei_signature_date] [datetime] NULL,
	[requestor_signature] [varchar](255) NULL,
	[requestor_delegate] [varchar](50) NULL,
	[requestor_signature_date] [datetime] NULL,
	[facility_owner] [varchar](50) NULL,
	[facility_owner_signature] [varchar](255) NULL,
	[facility_owner_delegate] [varchar](50) NULL,
	[facility_owner_signature_date] [datetime] NULL,
	[screening_remark] [text] NULL,
	[approval_note] [text] NULL,
	[can_safety_officer_signature] [varchar](255) NULL,
	[can_safety_officer_delegate] [varchar](50) NULL,
	[can_safety_officer_signature_date1] [datetime] NULL,
	[can_facilities_signature] [varchar](255) NULL,
	[can_facilities_delegate] [varchar](50) NULL,
	[can_facilities_signature_date] [datetime] NULL,
	[can_ei_signature] [varchar](255) NULL,
	[can_ei_delegate] [varchar](50) NULL,
	[can_ei_signature_date] [datetime] NULL,
	[can_requestor_signature] [varchar](255) NULL,
	[can_requestor_delegate] [varchar](50) NULL,
	[can_requestor_signature_date] [datetime] NULL,
	[can_facility_owner_signature] [varchar](255) NULL,
	[can_facility_owner_delegate] [varchar](50) NULL,
	[can_facility_owner_signature_date] [datetime] NULL,
	[cancellation_note] [text] NULL,
	[status] [int] NULL,
	[can_supervisor_signature] [varchar](255) NULL,
	[can_supervisor_delegate] [varchar](50) NULL,
	[can_supervisor_signature_date] [datetime] NULL,
 CONSTRAINT [PK_excavation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fire_impairment]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fire_impairment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[purpose] [text] NULL,
	[area_affected] [varchar](255) NULL,
	[requestor] [varchar](50) NULL,
	[fire_watch] [varchar](50) NULL,
	[screening_spv] [varchar](50) NULL,
	[screening_so] [varchar](50) NULL,
	[screening_fo] [varchar](50) NULL,
	[screening_remark] [text] NULL,
	[acc_work_leader] [varchar](50) NULL,
	[acc_work_leader_signature] [varchar](255) NULL,
	[acc_work_leader_delegate] [varchar](50) NULL,
	[acc_fire_watch_signature] [varchar](255) NULL,
	[acc_fire_wacth_delegate] [varchar](50) NULL,
	[acc_so] [varchar](50) NULL,
	[acc_so_signature] [varchar](255) NULL,
	[acc_so_delegate] [varchar](50) NULL,
	[acc_fo] [varchar](50) NULL,
	[acc_fo_delegate] [varchar](50) NULL,
	[acc_fo_signature] [varchar](255) NULL,
	[spv] [varchar](50) NULL,
	[acc_dept_head] [varchar](50) NULL,
	[acc_dept_head_delegate] [varchar](50) NULL,
	[acc_dept_head_signature] [varchar](255) NULL,
	[cancel_spv] [varchar](50) NULL,
	[cancel_so] [varchar](50) NULL,
	[cancel_fo] [varchar](50) NULL,
	[cancel_remark] [text] NULL,
	[cancel_work_leader_delegate] [varchar](50) NULL,
	[cancel_work_leader_signature] [varchar](255) NULL,
	[cancel_fire_watch_delegate] [varchar](50) NULL,
	[cancel_fire_watch_signature] [varchar](255) NULL,
	[cancel_so_delegate] [varchar](50) NULL,
	[cancel_so_signature] [varchar](255) NULL,
	[cancel_fo_delegate] [varchar](50) NULL,
	[cancel_fo_signature] [varchar](255) NULL,
	[cancel_dept_head_delegate] [varchar](50) NULL,
	[cancel_dept_head_signature] [varchar](255) NULL,
	[id_ptw] [int] NULL,
	[status] [int] NULL,
	[fi_no] [varchar](50) NULL,
 CONSTRAINT [PK_fire_impairment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hira_document]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hira_document](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[location] [varchar](255) NULL,
	[filename] [varchar](255) NULL,
	[id_ptw] [int] NULL,
 CONSTRAINT [PK_hira_document] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hot_work]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hot_work](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hw_no] [varchar](50) NULL,
	[fire_watch] [varchar](255) NULL,
	[purpose] [text] NULL,
	[work_leader] [varchar](255) NULL,
	[validity_period_start] [datetime] NULL,
	[validity_period_end] [datetime] NULL,
	[screening_spv] [varchar](50) NULL,
	[screening_fo] [varchar](50) NULL,
	[screening_1] [varchar](50) NULL,
	[screening_2] [varchar](50) NULL,
	[screening_3] [varchar](50) NULL,
	[screening_4] [varchar](50) NULL,
	[screening_5] [varchar](50) NULL,
	[screening_6] [varchar](50) NULL,
	[screening_7] [varchar](50) NULL,
	[id_ptw] [int] NULL,
	[notes] [text] NULL,
	[methane_result] [varchar](50) NULL,
	[o2_result] [varchar](50) NULL,
	[h2s_result] [varchar](50) NULL,
	[co_result] [varchar](50) NULL,
	[other_gas] [varchar](255) NULL,
	[other_result] [varchar](255) NULL,
	[acc_work_leader_approve] [varchar](255) NULL,
	[acc_supervisor_approve] [varchar](255) NULL,
	[acc_supervisor] [varchar](255) NULL,
	[acc_supervisor_delegate] [varchar](255) NULL,
	[acc_fire_watch] [varchar](255) NULL,
	[acc_fire_watch_delegate] [varchar](255) NULL,
	[acc_fire_watch_approve] [varchar](255) NULL,
	[acc_fo] [varchar](255) NULL,
	[acc_fo_delegate] [varchar](255) NULL,
	[acc_fo_approve] [varchar](255) NULL,
	[acc_gas_tester] [varchar](255) NULL,
	[acc_gas_tester_approve] [varchar](255) NULL,
	[acc_work_representative_approve] [varchar](255) NULL,
	[can_work_leader_approve] [varchar](255) NULL,
	[can_supervisor_approve] [varchar](255) NULL,
	[can_supervisor] [varchar](255) NULL,
	[can_supervisor_delegate] [varchar](255) NULL,
	[can_fire_watch] [varchar](255) NULL,
	[can_fire_watch_delegate] [varchar](255) NULL,
	[can_fire_watch_approve] [varchar](255) NULL,
	[can_fo] [varchar](255) NULL,
	[can_fo_delegate] [varchar](255) NULL,
	[can_fo_approve] [varchar](255) NULL,
	[ext_datetime_1] [datetime] NULL,
	[ext_lel_1] [varchar](50) NULL,
	[ext_o2_1] [varchar](50) NULL,
	[ext_h2s_1] [varchar](50) NULL,
	[ext_co_1] [varchar](50) NULL,
	[ext_other_1] [varchar](255) NULL,
	[ext_gas_tester_1] [varchar](50) NULL,
	[ext_gas_tester_approve_1] [varchar](255) NULL,
	[ext_work_leader_1] [varchar](50) NULL,
	[ext_work_leader_approve_1] [varchar](255) NULL,
	[ext_fo_1] [varchar](50) NULL,
	[ext_fo_delegate_1] [varchar](50) NULL,
	[ext_fo_approve_1] [varchar](255) NULL,
	[ext_new_validity_1] [datetime] NULL,
	[ext_remark_1] [text] NULL,
	[ext_datetime_2] [datetime] NULL,
	[ext_lel_2] [varchar](50) NULL,
	[ext_o2_2] [varchar](50) NULL,
	[ext_h2s_2] [varchar](50) NULL,
	[ext_co_2] [varchar](50) NULL,
	[ext_other_2] [varchar](255) NULL,
	[ext_gas_tester_2] [varchar](50) NULL,
	[ext_gas_tester_approve_2] [varchar](255) NULL,
	[ext_work_leader_2] [varchar](50) NULL,
	[ext_work_leader_approve_2] [varchar](255) NULL,
	[ext_fo_2] [varchar](50) NULL,
	[ext_fo_delegate_2] [varchar](50) NULL,
	[ext_fo_approve_2] [varchar](255) NULL,
	[ext_new_validity_2] [datetime] NULL,
	[ext_remark_2] [text] NULL,
	[ext_datetime_3] [datetime] NULL,
	[ext_lel_3] [varchar](50) NULL,
	[ext_o2_3] [varchar](50) NULL,
	[ext_h2s_3] [varchar](50) NULL,
	[ext_co_3] [varchar](50) NULL,
	[ext_other_3] [varchar](255) NULL,
	[ext_gas_tester_3] [varchar](50) NULL,
	[ext_gas_tester_approve_3] [varchar](255) NULL,
	[ext_work_leader_3] [varchar](50) NULL,
	[ext_work_leader_approve_3] [varchar](255) NULL,
	[ext_fo_3] [varchar](50) NULL,
	[ext_fo_delegate_3] [varchar](50) NULL,
	[ext_fo_approve_3] [varchar](255) NULL,
	[ext_new_validity_3] [datetime] NULL,
	[ext_remark_3] [text] NULL,
	[ext_datetime_4] [datetime] NULL,
	[ext_lel_4] [varchar](50) NULL,
	[ext_o2_4] [varchar](50) NULL,
	[ext_h2s_4] [varchar](50) NULL,
	[ext_co_4] [varchar](50) NULL,
	[ext_other_4] [varchar](255) NULL,
	[ext_gas_tester_4] [varchar](50) NULL,
	[ext_gas_tester_approve_4] [varchar](255) NULL,
	[ext_work_leader_4] [varchar](50) NULL,
	[ext_work_leader_approve_4] [varchar](255) NULL,
	[ext_fo_4] [varchar](50) NULL,
	[ext_fo_delegate_4] [varchar](50) NULL,
	[ext_fo_approve_4] [varchar](255) NULL,
	[ext_new_validity_4] [datetime] NULL,
	[ext_remark_4] [text] NULL,
	[ext_datetime_5] [datetime] NULL,
	[ext_lel_5] [varchar](50) NULL,
	[ext_o2_5] [varchar](50) NULL,
	[ext_h2s_5] [varchar](50) NULL,
	[ext_co_5] [varchar](50) NULL,
	[ext_other_5] [varchar](255) NULL,
	[ext_gas_tester_5] [varchar](50) NULL,
	[ext_gas_tester_approve_5] [varchar](255) NULL,
	[ext_work_leader_5] [varchar](50) NULL,
	[ext_work_leader_approve_5] [varchar](255) NULL,
	[ext_fo_5] [varchar](50) NULL,
	[ext_fo_delegate_5] [varchar](50) NULL,
	[ext_fo_approve_5] [varchar](255) NULL,
	[ext_new_validity_5] [datetime] NULL,
	[ext_remark_5] [text] NULL,
	[ext_datetime_6] [datetime] NULL,
	[ext_lel_6] [varchar](50) NULL,
	[ext_o2_6] [varchar](50) NULL,
	[ext_h2s_6] [varchar](50) NULL,
	[ext_co_6] [varchar](50) NULL,
	[ext_other_6] [varchar](255) NULL,
	[ext_gas_tester_6] [varchar](50) NULL,
	[ext_gas_tester_approve_6] [varchar](255) NULL,
	[ext_work_leader_6] [varchar](50) NULL,
	[ext_work_leader_approve_6] [varchar](255) NULL,
	[ext_fo_6] [varchar](50) NULL,
	[ext_fo_delegate_6] [varchar](50) NULL,
	[ext_fo_approve_6] [varchar](255) NULL,
	[ext_new_validity_6] [datetime] NULL,
	[ext_remark_6] [text] NULL,
	[ext_datetime_7] [datetime] NULL,
	[ext_lel_7] [varchar](50) NULL,
	[ext_o2_7] [varchar](50) NULL,
	[ext_h2s_7] [varchar](50) NULL,
	[ext_co_7] [varchar](50) NULL,
	[ext_other_7] [varchar](255) NULL,
	[ext_gas_tester_7] [varchar](50) NULL,
	[ext_gas_tester_approve_7] [varchar](255) NULL,
	[ext_work_leader_7] [varchar](50) NULL,
	[ext_work_leader_approve_7] [varchar](255) NULL,
	[ext_fo_7] [varchar](50) NULL,
	[ext_fo_delegate_7] [varchar](50) NULL,
	[ext_fo_approve_7] [varchar](255) NULL,
	[ext_new_validity_7] [datetime] NULL,
	[ext_remark_7] [text] NULL,
	[status] [int] NULL,
	[random_pin] [varchar](4) NULL,
 CONSTRAINT [PK_hot_work] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loto_glarf]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loto_glarf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[requestor] [varchar](50) NULL,
	[supervisor] [varchar](50) NULL,
	[requestor_signature] [varchar](255) NULL,
	[supervisor_signature] [varchar](255) NULL,
	[id_loto_permit] [int] NULL,
	[loto_no] [varchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_loto_glarf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loto_glarf_user]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loto_glarf_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_glarf] [int] NULL,
	[user] [varchar](50) NULL,
	[user_application_signature] [varchar](255) NULL,
	[user_application_signature_date] [datetime] NULL,
	[user_cancellation_signature] [varchar](255) NULL,
	[user_cancellation_signature_date] [datetime] NULL,
	[can_edit] [tinyint] NULL,
 CONSTRAINT [PK_loto_glarf_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loto_permit]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loto_permit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loto_no] [varchar](50) NULL,
	[requestor] [varchar](50) NULL,
	[supervisor] [varchar](50) NULL,
	[work_location] [varchar](255) NULL,
	[lock_box_no] [varchar](255) NULL,
	[initial_pad_lock] [int] NULL,
	[qty_pad_lock_usage] [int] NULL,
	[balance] [int] NULL,
	[approval_date] [datetime] NULL,
	[approval_facility_owner] [varchar](50) NULL,
	[approval_supervisor_signature] [varchar](255) NULL,
	[approval_supervisor_signature_delegate] [varchar](50) NULL,
	[approval_supervisor_signature_date] [datetime] NULL,
	[approval_fo_signature] [varchar](255) NULL,
	[approval_fo_signature_date] [datetime] NULL,
	[approval_fo_signature_delegate] [varchar](50) NULL,
	[oncoming_holder_1] [varchar](50) NULL,
	[oncoming_holder_2] [varchar](50) NULL,
	[oncoming_holder_3] [varchar](50) NULL,
	[oncoming_holder_4] [varchar](50) NULL,
	[oncoming_holder_5] [varchar](50) NULL,
	[oncoming_holder_6] [varchar](50) NULL,
	[oncoming_holder_7] [varchar](50) NULL,
	[approval_holder_1_signature] [varchar](255) NULL,
	[approval_holder_2_signature] [varchar](255) NULL,
	[approval_holder_3_signature] [varchar](255) NULL,
	[approval_holder_4_signature] [varchar](255) NULL,
	[approval_holder_5_signature] [varchar](255) NULL,
	[approval_holder_6_signature] [varchar](255) NULL,
	[approval_holder_7_signature] [varchar](255) NULL,
	[approval_holder_1_datetime] [datetime] NULL,
	[approval_holder_2_datetime] [datetime] NULL,
	[approval_holder_3_datetime] [datetime] NULL,
	[approval_holder_4_datetime] [datetime] NULL,
	[approval_holder_5_datetime] [datetime] NULL,
	[approval_holder_6_datetime] [datetime] NULL,
	[approval_holder_7_datetime] [datetime] NULL,
	[approval_notes] [text] NULL,
	[status] [int] NULL,
	[new_coming_holder] [varchar](50) NULL,
	[requestor_ok] [tinyint] NULL,
	[holder_2_ok] [tinyint] NULL,
	[holder_3_ok] [tinyint] NULL,
	[holder_4_ok] [tinyint] NULL,
	[holder_5_ok] [tinyint] NULL,
	[holder_6_ok] [tinyint] NULL,
	[holder_7_ok] [tinyint] NULL,
	[cancellation_supervisor_signature] [varchar](255) NULL,
	[cancellation_supervisor_signature_date] [datetime] NULL,
	[cancellation_holder_2_signature] [varchar](255) NULL,
	[cancellation_holder_2_signature_date] [datetime] NULL,
	[cancellation_holder_3_signature] [varchar](255) NULL,
	[cancellation_holder_3_signature_date] [datetime] NULL,
	[cancellation_holder_4_signature] [varchar](255) NULL,
	[cancellation_holder_4_signature_date] [datetime] NULL,
	[cancellation_holder_5_signature] [varchar](255) NULL,
	[cancellation_holder_5_signature_date] [datetime] NULL,
	[cancellation_holder_6_signature] [varchar](255) NULL,
	[cancellation_holder_6_signature_date] [datetime] NULL,
	[cancellation_holder_7_signature] [varchar](255) NULL,
	[cancellation_holder_7_signature_date] [datetime] NULL,
	[cancellation_fo_signature] [varchar](255) NULL,
	[cancellation_fo_signature_date] [datetime] NULL,
	[cancellation_fo_signature_delegate] [varchar](50) NULL,
	[cancellation_notes] [text] NULL,
	[cancellation_facility_owner] [varchar](50) NULL,
 CONSTRAINT [PK_loto_permit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loto_point]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loto_point](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_loto] [int] NULL,
	[tag_id] [varchar](255) NULL,
	[description] [text] NULL,
	[drawing_number] [varchar](255) NULL,
	[loto_point_proposed] [varchar](50) NULL,
	[loto_point_agreed] [varchar](50) NULL,
	[applied_by] [varchar](50) NULL,
	[applied_by_time] [datetime] NULL,
	[removed_by] [varchar](50) NULL,
	[removed_by_time] [datetime] NULL,
	[remarks] [varchar](255) NULL,
	[inspected_1] [varchar](255) NULL,
	[inspected_2] [varchar](255) NULL,
	[inspected_3] [varchar](255) NULL,
	[inspected_4] [varchar](255) NULL,
	[inspected_5] [varchar](255) NULL,
	[inspected_6] [varchar](255) NULL,
	[inspected_7] [varchar](255) NULL,
 CONSTRAINT [PK_loto_point] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_assessor]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_assessor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_employee] [int] NULL,
	[assessor_code] [varchar](10) NULL,
 CONSTRAINT [PK_mst_assessor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_department]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department] [varchar](100) NULL,
 CONSTRAINT [PK_mst_department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_dept_head_fo]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mst_dept_head_fo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_dept_head_fo] [int] NULL,
 CONSTRAINT [PK_mst_dept_head_fo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mst_ei]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mst_ei](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_employee] [int] NULL,
 CONSTRAINT [PK_mst_ei] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mst_erector]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_erector](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_employee] [int] NULL,
	[certificate_no] [varchar](100) NULL,
	[valid_date] [datetime] NULL,
 CONSTRAINT [PK_mst_erector] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_facilities]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mst_facilities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_employee] [int] NULL,
 CONSTRAINT [PK_mst_facilities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mst_facility_owner]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_facility_owner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_employee] [int] NULL,
	[fo_code] [varchar](10) NULL,
 CONSTRAINT [PK_mst_facility_owner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_inspector]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_inspector](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_employee] [int] NULL,
	[certificate_no] [varchar](100) NULL,
	[valid_date] [datetime] NULL,
 CONSTRAINT [PK_mst_inspector\] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_lock_box]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_lock_box](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[no] [varchar](50) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_mst_lock_box] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_loto_point]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_loto_point](
	[code] [varchar](10) NOT NULL,
	[description] [varchar](255) NULL,
 CONSTRAINT [PK_mst_loto_point] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_ptw_holder_no]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_ptw_holder_no](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_employee] [int] NULL,
	[ptw_holder_no] [varchar](50) NULL,
	[activated_date_until] [date] NULL,
 CONSTRAINT [PK_mst_ptw_holder_no] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_radiation_po]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_radiation_po](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employee] [varchar](255) NULL,
	[valid_date] [date] NULL,
	[license_number] [varchar](255) NULL,
 CONSTRAINT [PK_mst_radiation_po] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_radiographer]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_radiographer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employee] [varchar](255) NULL,
	[level] [int] NULL,
	[license_number] [varchar](50) NULL,
	[valid_date] [date] NULL,
 CONSTRAINT [PK_mst_radiographer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_safety_officer]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mst_safety_officer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_so] [int] NULL,
 CONSTRAINT [PK_mst_safety_officer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mst_section]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_section](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[section] [varchar](50) NULL,
 CONSTRAINT [PK_mst_section] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[permit_log]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[permit_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_permit] [int] NULL,
	[datetime] [datetime] NULL,
	[user_id] [int] NULL,
	[status] [varchar](255) NULL,
	[comment] [text] NULL,
	[permit_type] [int] NULL,
 CONSTRAINT [PK_permit_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[permit_to_work]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[permit_to_work](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ptw_no] [varchar](50) NULL,
	[proposed_period_start] [datetime] NULL,
	[proposed_period_end] [datetime] NULL,
	[dept_requestor] [int] NULL,
	[section] [int] NULL,
	[total_crew] [varchar](50) NULL,
	[requestor_ptw_holder_no] [int] NULL,
	[area] [varchar](255) NULL,
	[work_location] [varchar](255) NULL,
	[area_code] [varchar](50) NULL,
	[work_order_no] [varchar](50) NULL,
	[work_description] [text] NULL,
	[notes] [text] NULL,
	[pre_job_1_spv] [tinyint] NULL,
	[pre_job_2_spv] [tinyint] NULL,
	[pre_job_3_spv] [tinyint] NULL,
	[pre_job_4_spv] [tinyint] NULL,
	[pre_job_5_spv] [tinyint] NULL,
	[pre_job_6_spv] [tinyint] NULL,
	[pre_job_7_spv] [tinyint] NULL,
	[pre_job_1_fo] [tinyint] NULL,
	[pre_job_2_fo] [tinyint] NULL,
	[pre_job_3_fo] [tinyint] NULL,
	[pre_job_4_fo] [tinyint] NULL,
	[pre_job_5_fo] [tinyint] NULL,
	[pre_job_6_fo] [tinyint] NULL,
	[pre_job_7_fo] [tinyint] NULL,
	[cancel_1_spv] [tinyint] NULL,
	[cancel_2_spv] [tinyint] NULL,
	[cancel_3_spv] [tinyint] NULL,
	[cancel_4_spv] [tinyint] NULL,
	[cancel_5_spv] [tinyint] NULL,
	[cancel_6_spv] [tinyint] NULL,
	[cancel_7_spv] [tinyint] NULL,
	[cancel_1_fo] [tinyint] NULL,
	[cancel_2_fo] [tinyint] NULL,
	[cancel_3_fo] [tinyint] NULL,
	[cancel_4_fo] [tinyint] NULL,
	[cancel_5_fo] [tinyint] NULL,
	[cancel_6_fo] [tinyint] NULL,
	[cancel_7_fo] [tinyint] NULL,
	[pre_job_notes] [text] NULL,
	[cancel_notes] [text] NULL,
	[validity_period_start] [date] NULL,
	[validity_period_end] [date] NULL,
	[cancellation_date] [date] NULL,
	[loto_need] [int] NULL,
	[loto_id] [int] NULL,
	[loto_status] [int] NULL,
	[csep_id] [int] NULL,
	[csep_status] [int] NULL,
	[hw_id] [int] NULL,
	[hw_status] [int] NULL,
	[fi_id] [int] NULL,
	[fi_status] [int] NULL,
	[ex_id] [int] NULL,
	[ex_status] [int] NULL,
	[wh_id] [int] NULL,
	[wh_status] [int] NULL,
	[rad_id] [int] NULL,
	[rad_status] [int] NULL,
	[acc_ptw_requestor] [varchar](50) NULL,
	[acc_ptw_requestor_approve] [varchar](255) NULL,
	[acc_supervisor] [varchar](50) NULL,
	[acc_supervisor_delegate] [varchar](50) NULL,
	[acc_supervisor_approve] [varchar](255) NULL,
	[acc_assessor] [varchar](50) NULL,
	[acc_assessor_delegate] [varchar](50) NULL,
	[acc_assessor_approve] [varchar](255) NULL,
	[acc_fo] [varchar](50) NULL,
	[acc_fo_delegate] [varchar](50) NULL,
	[acc_fo_approve] [varchar](255) NULL,
	[can_ptw_requestor] [varchar](50) NULL,
	[can_ptw_requestor_approve] [varchar](255) NULL,
	[can_supervisor] [varchar](50) NULL,
	[can_supervisor_delegate] [varchar](50) NULL,
	[can_supervisor_approve] [varchar](255) NULL,
	[can_assessor] [varchar](50) NULL,
	[can_assessor_delegate] [varchar](50) NULL,
	[can_assessor_approve] [varchar](255) NULL,
	[can_fo] [varchar](50) NULL,
	[can_fo_delegate] [varchar](50) NULL,
	[can_fo_approve] [varchar](255) NULL,
	[id_parent_ptw] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_permit_to_work] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[radiography]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[radiography](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_ptw] [int] NULL,
	[rg_no] [varchar](50) NULL,
	[purpose] [varchar](255) NULL,
	[radiographer_2] [varchar](50) NULL,
	[radiographer_1] [varchar](50) NULL,
	[radiographer_2_license_number] [varchar](255) NULL,
	[radiographer_1_license_number] [varchar](255) NULL,
	[radiation_protection_officer] [varchar](50) NULL,
	[radiation_protection_officer_license_number] [varchar](255) NULL,
	[potential_area_affected] [varchar](255) NULL,
	[total_crew] [varchar](50) NULL,
	[supervisor] [varchar](50) NULL,
	[radiographic_source] [varchar](255) NULL,
	[estimate_time_start] [datetime] NULL,
	[estimate_time_end] [datetime] NULL,
	[pre_screening_spv] [varchar](50) NULL,
	[pre_screening_rad] [varchar](50) NULL,
	[pre_screening_fo] [varchar](50) NULL,
	[operator_signature] [varchar](255) NULL,
	[operator_delegate] [varchar](50) NULL,
	[radiographer_2_signature] [varchar](255) NULL,
	[radiographer_2_delegate] [varchar](50) NULL,
	[supervisor_signature] [varchar](255) NULL,
	[supervisor_delegate] [varchar](50) NULL,
	[safety_officer] [varchar](50) NULL,
	[safety_officer_signature] [varchar](255) NULL,
	[safety_officer_delegate] [varchar](50) NULL,
	[facility_owner] [varchar](50) NULL,
	[facility_owner_signature] [varchar](255) NULL,
	[facility_owner_delegate] [varchar](50) NULL,
	[pre_remark] [text] NULL,
	[can_screening_spv] [varchar](50) NULL,
	[can_screening_rad] [varchar](50) NULL,
	[can_screening_fo] [varchar](50) NULL,
	[can_operator_signature] [varchar](255) NULL,
	[can_operator_delegate] [varchar](50) NULL,
	[can_radiographer_2_signature] [varchar](255) NULL,
	[can_radiographer_2_delegate] [varchar](50) NULL,
	[can_supervisor_signature] [varchar](255) NULL,
	[can_supervisor_delegate] [varchar](50) NULL,
	[can_safety_officer_signature] [varchar](255) NULL,
	[can_safety_officer_delegate] [varchar](50) NULL,
	[can_fo_signature] [varchar](255) NULL,
	[can_fo_delegate] [varchar](50) NULL,
	[status] [int] NOT NULL,
	[operator] [varchar](50) NULL,
	[work_location] [varchar](255) NULL,
	[can_remark] [text] NULL,
 CONSTRAINT [PK_radiography] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[working_height]    Script Date: 4/8/2014 11:41:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[working_height](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_ptw] [int] NULL,
	[wh_no] [varchar](50) NULL,
	[description] [text] NULL,
	[work_location] [varchar](255) NULL,
	[requestor] [varchar](50) NULL,
	[from] [datetime] NULL,
	[until] [datetime] NULL,
	[total_crew] [int] NULL,
	[access] [int] NULL,
	[workbox_access] [varchar](50) NULL,
	[ladder_access] [varchar](50) NULL,
	[elevated_access] [varchar](50) NULL,
	[scaffolding] [int] NULL,
	[load_capacity] [varchar](50) NULL,
	[no_person] [varchar](50) NULL,
	[erector] [int] NULL,
	[erector_certificate_no] [varchar](100) NULL,
	[erector_valid_date] [datetime] NULL,
	[scaffold_access] [varchar](50) NULL,
	[inspector] [int] NULL,
	[inspector_certify_no] [varchar](50) NULL,
	[utilization_valid_date] [datetime] NULL,
	[inspector_signature] [varchar](255) NULL,
	[inspector_sign_date] [datetime] NULL,
	[mandatory_fall_prevention] [varchar](255) NULL,
	[fall_prevention_assess] [varchar](25) NULL,
	[pre_screening_req] [varchar](50) NULL,
	[pre_screening_fo] [varchar](50) NULL,
	[requestor_signature] [varchar](255) NULL,
	[requestor_delegate] [varchar](50) NULL,
	[requestor_signature_date] [datetime] NULL,
	[supervisor] [varchar](50) NULL,
	[supervisor_signature] [varchar](255) NULL,
	[supervisor_delegate] [varchar](50) NULL,
	[supervisor_signature_date] [datetime] NULL,
	[facility_owner] [varchar](50) NULL,
	[facility_owner_signature] [varchar](255) NULL,
	[facility_owner_delegate] [varchar](50) NULL,
	[facility_owner_signature_date] [datetime] NULL,
	[can_screening_req] [varchar](50) NULL,
	[can_screening_fo] [varchar](50) NULL,
	[can_requestor_signature] [varchar](255) NULL,
	[can_requestor_delegate] [varchar](50) NULL,
	[can_requestor_signature_date] [datetime] NULL,
	[can_supervisor_signature] [varchar](255) NULL,
	[can_supervisor_delegate] [varchar](50) NULL,
	[can_supervisor_signature_date] [datetime] NULL,
	[can_facility_owner_signature] [varchar](255) NULL,
	[can_facility_owner_delegate] [varchar](50) NULL,
	[can_facility_owner_signature_date] [datetime] NULL,
	[status] [int] NULL,
	[pre_screening_note] [text] NULL,
 CONSTRAINT [PK_working_height] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[confined_space] ON 

GO
INSERT [dbo].[confined_space] ([id], [csep_no], [attendant], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (0, N'CSEP-SPE-000022', N'asdas dasdasdasd', N'sdf dsfdsfdsfdsfds', N'318', CAST(0x0000A2F900000000 AS DateTime), CAST(0x0000A2FA00735B40 AS DateTime), N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 7032, NULL, N'2', N'20', N'1', N'1', NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'297', N'', NULL, NULL, NULL, N'242', N'', N'ahttp://localhost:8087', N'253', N'ahttp://localhost:8087', NULL, NULL, NULL, N'297', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, N'9440')
GO
INSERT [dbo].[confined_space] ([id], [csep_no], [attendant], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (1, N'CSEP-SPE-000023', N'asda sdasdasd', N' qweqweqwe qw', N'318', CAST(0x0000A2F900000000 AS DateTime), CAST(0x0000A2FA00735B40 AS DateTime), N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 7033, NULL, N'4', N'21', N'1', N'1', NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'297', N'', NULL, NULL, NULL, N'244', N'', N'ahttp://localhost:8087/Attachment/signatures/244.png', N'253', N'ahttp://localhost:8087/Attachment/signatures/244.png', NULL, NULL, NULL, N'297', N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A2FA00000000 AS DateTime), N'2', N'21', N'1', N'1', NULL, N'253', N'ahttp://localhost:8087', N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'242', N'', N'ahttp://localhost:8087', CAST(0x0000A2FB00735B40 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, N'6178')
GO
SET IDENTITY_INSERT [dbo].[confined_space] OFF
GO
SET IDENTITY_INSERT [dbo].[excavation] ON 

GO
INSERT [dbo].[excavation] ([id], [id_ptw], [ex_no], [work_location], [supervisor], [requestor], [total_crew], [purpose], [estimate_start_date], [estimate_end_date], [pre_screening_spv], [pre_screening_ei], [pre_screening_fac], [pre_screening_fo], [excavation_performed], [excavation_method], [equipment], [soil_volume], [disposal_location], [disposal_type], [supervisor_signature], [supervisor_delegate], [supervisor_signature_date], [safety_officer], [safety_officer_signature], [safety_officer_delegate], [safety_officer_signature_date], [facilities], [facilities_signature], [facilities_delegate], [facilities_signature_date], [ei], [ei_signature], [ei_delegate], [ei_signature_date], [requestor_signature], [requestor_delegate], [requestor_signature_date], [facility_owner], [facility_owner_signature], [facility_owner_delegate], [facility_owner_signature_date], [screening_remark], [approval_note], [can_safety_officer_signature], [can_safety_officer_delegate], [can_safety_officer_signature_date1], [can_facilities_signature], [can_facilities_delegate], [can_facilities_signature_date], [can_ei_signature], [can_ei_delegate], [can_ei_signature_date], [can_requestor_signature], [can_requestor_delegate], [can_requestor_signature_date], [can_facility_owner_signature], [can_facility_owner_delegate], [can_facility_owner_signature_date], [cancellation_note], [status], [can_supervisor_signature], [can_supervisor_delegate], [can_supervisor_signature_date]) VALUES (1, 7031, N'EX-SPE-000021', N'jkhjkhjk', N'297', N'318', NULL, N'hjkhjkhj hkjhk  hjkh', CAST(0x0000A2F400000000 AS DateTime), CAST(0x0000A2FB00735B40 AS DateTime), N'1#1#1#1#1#1#1#1#1#1#1', N'1#2#0#1#2#0#1#2#0#1#2', N'1#1#1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1#1#1', N'2', N'2', N'4', N'1000', N'Bunker', N'2', N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A2F4010DC4EB AS DateTime), N'278', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, CAST(0x0000A2F4010F8BFF AS DateTime), N'1', N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A2F401122EDC AS DateTime), N'1', N'ahttp://localhost:8087/Attachment/signatures/298.png', NULL, CAST(0x0000A2F40111F140 AS DateTime), N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, CAST(0x0000A2F4011472E0 AS DateTime), N'278', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, CAST(0x0000A2F401164309 AS DateTime), N'E&I: jahdjka jashdjha adjsf adfsjkhdasf ajsfhdasf', NULL, N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, CAST(0x0000A2F4012469FC AS DateTime), N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A2F401241D71 AS DateTime), N'ahttp://localhost:8087/Attachment/signatures/298.png', NULL, CAST(0x0000A2F4012443ED AS DateTime), N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, CAST(0x0000A2F40123F1B9 AS DateTime), N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, CAST(0x0000A2F401248968 AS DateTime), N'asd sad qwdasdasd
sdfdsf sjdfkjds fkdsjfklsjdfklj dlsf', 12, N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A2F401241332 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[excavation] OFF
GO
SET IDENTITY_INSERT [dbo].[fire_impairment] ON 

GO
INSERT [dbo].[fire_impairment] ([id], [purpose], [area_affected], [requestor], [fire_watch], [screening_spv], [screening_so], [screening_fo], [screening_remark], [acc_work_leader], [acc_work_leader_signature], [acc_work_leader_delegate], [acc_fire_watch_signature], [acc_fire_wacth_delegate], [acc_so], [acc_so_signature], [acc_so_delegate], [acc_fo], [acc_fo_delegate], [acc_fo_signature], [spv], [acc_dept_head], [acc_dept_head_delegate], [acc_dept_head_signature], [cancel_spv], [cancel_so], [cancel_fo], [cancel_remark], [cancel_work_leader_delegate], [cancel_work_leader_signature], [cancel_fire_watch_delegate], [cancel_fire_watch_signature], [cancel_so_delegate], [cancel_so_signature], [cancel_fo_delegate], [cancel_fo_signature], [cancel_dept_head_delegate], [cancel_dept_head_signature], [id_ptw], [status], [fi_no]) VALUES (1, N'ajshdkjash', N'jkahdfkjkjasfh', N'298', NULL, N'#####', N'#####', N'#####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'#####', N'#####', N'#####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[fire_impairment] ([id], [purpose], [area_affected], [requestor], [fire_watch], [screening_spv], [screening_so], [screening_fo], [screening_remark], [acc_work_leader], [acc_work_leader_signature], [acc_work_leader_delegate], [acc_fire_watch_signature], [acc_fire_wacth_delegate], [acc_so], [acc_so_signature], [acc_so_delegate], [acc_fo], [acc_fo_delegate], [acc_fo_signature], [spv], [acc_dept_head], [acc_dept_head_delegate], [acc_dept_head_signature], [cancel_spv], [cancel_so], [cancel_fo], [cancel_remark], [cancel_work_leader_delegate], [cancel_work_leader_signature], [cancel_fire_watch_delegate], [cancel_fire_watch_signature], [cancel_so_delegate], [cancel_so_signature], [cancel_fo_delegate], [cancel_fo_signature], [cancel_dept_head_delegate], [cancel_dept_head_signature], [id_ptw], [status], [fi_no]) VALUES (2, N'playay', NULL, NULL, NULL, N'#####', N'#####', N'#####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'#####', N'#####', N'#####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[fire_impairment] ([id], [purpose], [area_affected], [requestor], [fire_watch], [screening_spv], [screening_so], [screening_fo], [screening_remark], [acc_work_leader], [acc_work_leader_signature], [acc_work_leader_delegate], [acc_fire_watch_signature], [acc_fire_wacth_delegate], [acc_so], [acc_so_signature], [acc_so_delegate], [acc_fo], [acc_fo_delegate], [acc_fo_signature], [spv], [acc_dept_head], [acc_dept_head_delegate], [acc_dept_head_signature], [cancel_spv], [cancel_so], [cancel_fo], [cancel_remark], [cancel_work_leader_delegate], [cancel_work_leader_signature], [cancel_fire_watch_delegate], [cancel_fire_watch_signature], [cancel_so_delegate], [cancel_so_signature], [cancel_fo_delegate], [cancel_fo_signature], [cancel_dept_head_delegate], [cancel_dept_head_signature], [id_ptw], [status], [fi_no]) VALUES (3, N'playay', N'jkahdfkjkjasfh', N'298', NULL, N'#####', N'#####', N'#####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'#####', N'#####', N'#####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[fire_impairment] ([id], [purpose], [area_affected], [requestor], [fire_watch], [screening_spv], [screening_so], [screening_fo], [screening_remark], [acc_work_leader], [acc_work_leader_signature], [acc_work_leader_delegate], [acc_fire_watch_signature], [acc_fire_wacth_delegate], [acc_so], [acc_so_signature], [acc_so_delegate], [acc_fo], [acc_fo_delegate], [acc_fo_signature], [spv], [acc_dept_head], [acc_dept_head_delegate], [acc_dept_head_signature], [cancel_spv], [cancel_so], [cancel_fo], [cancel_remark], [cancel_work_leader_delegate], [cancel_work_leader_signature], [cancel_fire_watch_delegate], [cancel_fire_watch_signature], [cancel_so_delegate], [cancel_so_signature], [cancel_fo_delegate], [cancel_fo_signature], [cancel_dept_head_delegate], [cancel_dept_head_signature], [id_ptw], [status], [fi_no]) VALUES (4, N'playay', N'jkahdfkjkjasfh', N'298', NULL, N'#####', N'#####', N'#####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'#####', N'#####', N'#####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[fire_impairment] ([id], [purpose], [area_affected], [requestor], [fire_watch], [screening_spv], [screening_so], [screening_fo], [screening_remark], [acc_work_leader], [acc_work_leader_signature], [acc_work_leader_delegate], [acc_fire_watch_signature], [acc_fire_wacth_delegate], [acc_so], [acc_so_signature], [acc_so_delegate], [acc_fo], [acc_fo_delegate], [acc_fo_signature], [spv], [acc_dept_head], [acc_dept_head_delegate], [acc_dept_head_signature], [cancel_spv], [cancel_so], [cancel_fo], [cancel_remark], [cancel_work_leader_delegate], [cancel_work_leader_signature], [cancel_fire_watch_delegate], [cancel_fire_watch_signature], [cancel_so_delegate], [cancel_so_signature], [cancel_fo_delegate], [cancel_fo_signature], [cancel_dept_head_delegate], [cancel_dept_head_signature], [id_ptw], [status], [fi_no]) VALUES (5, N'asdasdas', NULL, N'318', NULL, N'#####', N'#####', N'#####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'#####', N'#####', N'#####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3024, 0, N'FI-SPE-000006')
GO
INSERT [dbo].[fire_impairment] ([id], [purpose], [area_affected], [requestor], [fire_watch], [screening_spv], [screening_so], [screening_fo], [screening_remark], [acc_work_leader], [acc_work_leader_signature], [acc_work_leader_delegate], [acc_fire_watch_signature], [acc_fire_wacth_delegate], [acc_so], [acc_so_signature], [acc_so_delegate], [acc_fo], [acc_fo_delegate], [acc_fo_signature], [spv], [acc_dept_head], [acc_dept_head_delegate], [acc_dept_head_signature], [cancel_spv], [cancel_so], [cancel_fo], [cancel_remark], [cancel_work_leader_delegate], [cancel_work_leader_signature], [cancel_fire_watch_delegate], [cancel_fire_watch_signature], [cancel_so_delegate], [cancel_so_signature], [cancel_fo_delegate], [cancel_fo_signature], [cancel_dept_head_delegate], [cancel_dept_head_signature], [id_ptw], [status], [fi_no]) VALUES (6, N'sdfds', NULL, N'318', NULL, N'#####', N'#####', N'#####', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', NULL, NULL, NULL, NULL, NULL, NULL, N'##', N'##', N'##', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3025, 0, N'FI-SPE-000007')
GO
INSERT [dbo].[fire_impairment] ([id], [purpose], [area_affected], [requestor], [fire_watch], [screening_spv], [screening_so], [screening_fo], [screening_remark], [acc_work_leader], [acc_work_leader_signature], [acc_work_leader_delegate], [acc_fire_watch_signature], [acc_fire_wacth_delegate], [acc_so], [acc_so_signature], [acc_so_delegate], [acc_fo], [acc_fo_delegate], [acc_fo_signature], [spv], [acc_dept_head], [acc_dept_head_delegate], [acc_dept_head_signature], [cancel_spv], [cancel_so], [cancel_fo], [cancel_remark], [cancel_work_leader_delegate], [cancel_work_leader_signature], [cancel_fire_watch_delegate], [cancel_fire_watch_signature], [cancel_so_delegate], [cancel_so_signature], [cancel_fo_delegate], [cancel_fo_signature], [cancel_dept_head_delegate], [cancel_dept_head_signature], [id_ptw], [status], [fi_no]) VALUES (7, N'sdfsdfdsf', N'Warehouse 1', N'318', N'239', N'1#1#1#1#1#1', N'1#1#1#1#1#1', N'1#1#1#1#1#1', NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, N'ahttp://localhost:8087/Attachment/signatures/239.png', NULL, N'278', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, N'278', NULL, N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'297', N'297', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', N'1#1#1', N'1#1#2', N'1#1#1', N'        SO: asdasfsdaf sdafsafdsa fdasf dasfds fdas
    
    ', NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, N'ahttp://localhost:8087/Attachment/signatures/239.png', NULL, N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', 3026, 18, N'FI-SPE-000008')
GO
INSERT [dbo].[fire_impairment] ([id], [purpose], [area_affected], [requestor], [fire_watch], [screening_spv], [screening_so], [screening_fo], [screening_remark], [acc_work_leader], [acc_work_leader_signature], [acc_work_leader_delegate], [acc_fire_watch_signature], [acc_fire_wacth_delegate], [acc_so], [acc_so_signature], [acc_so_delegate], [acc_fo], [acc_fo_delegate], [acc_fo_signature], [spv], [acc_dept_head], [acc_dept_head_delegate], [acc_dept_head_signature], [cancel_spv], [cancel_so], [cancel_fo], [cancel_remark], [cancel_work_leader_delegate], [cancel_work_leader_signature], [cancel_fire_watch_delegate], [cancel_fire_watch_signature], [cancel_so_delegate], [cancel_so_signature], [cancel_fo_delegate], [cancel_fo_signature], [cancel_dept_head_delegate], [cancel_dept_head_signature], [id_ptw], [status], [fi_no]) VALUES (8, N'dfdsfds', N'gfhgf hgfghfhgfh', N'318', N'315', N'1#1#1#1#1#1', N'1#1#1#1#1#1', N'#####', N'Spv: jshadfkj hadfhasfjhdkjas hkjdasf hasdkjf', NULL, NULL, NULL, NULL, NULL, N'298', NULL, NULL, N'278', NULL, NULL, N'297', N'297', NULL, NULL, N'##', N'##', N'##', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5025, 3, N'FI-SPE-000011')
GO
INSERT [dbo].[fire_impairment] ([id], [purpose], [area_affected], [requestor], [fire_watch], [screening_spv], [screening_so], [screening_fo], [screening_remark], [acc_work_leader], [acc_work_leader_signature], [acc_work_leader_delegate], [acc_fire_watch_signature], [acc_fire_wacth_delegate], [acc_so], [acc_so_signature], [acc_so_delegate], [acc_fo], [acc_fo_delegate], [acc_fo_signature], [spv], [acc_dept_head], [acc_dept_head_delegate], [acc_dept_head_signature], [cancel_spv], [cancel_so], [cancel_fo], [cancel_remark], [cancel_work_leader_delegate], [cancel_work_leader_signature], [cancel_fire_watch_delegate], [cancel_fire_watch_signature], [cancel_so_delegate], [cancel_so_signature], [cancel_fo_delegate], [cancel_fo_signature], [cancel_dept_head_delegate], [cancel_dept_head_signature], [id_ptw], [status], [fi_no]) VALUES (1008, N'asdasdas asdsadas', N'asd adasd asd', N'318', N'239', N'1#1#1#1#1#1', N'1#1#1#1#1#1', N'1#1#1#1#1#1', NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, N'ahttp://localhost:8087/Attachment/signatures/239.png', NULL, N'298', N'ahttp://localhost:8087/Attachment/signatures/298.png', NULL, N'278', NULL, N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'297', N'297', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', N'1#1#1', N'0#0#0', N'##', N'                                
    
    
    
    ', NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, N'ahttp://localhost:8087/Attachment/signatures/239.png', NULL, NULL, NULL, NULL, NULL, NULL, 6027, 9, N'FI-SPE-000015')
GO
SET IDENTITY_INSERT [dbo].[fire_impairment] OFF
GO
SET IDENTITY_INSERT [dbo].[hira_document] ON 

GO
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (2, N'/Upload/Hira\info.pdf', N'info.pdf', NULL)
GO
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (7, N'\Upload\Hira\info.pdf', N'info.pdf', 16)
GO
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (8, N'\Upload\Hira\P2L9FY.pdf', N'P2L9FY.pdf', 17)
GO
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (9, N'\Upload\Hira\max232.pdf', N'max232.pdf', 19)
GO
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (10, N'\Upload\Hira\Project Cost Estimate.pdf', N'Project Cost Estimate.pdf', 20)
GO
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (2009, N'\Upload\Hira\EachCertificate.pdf', N'EachCertificate.pdf', 5024)
GO
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (2010, N'\Upload\Hira\EachCertificate.pdf', N'EachCertificate.pdf', 5024)
GO
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (2011, N'\Upload\Hira\EachCertificate.pdf', N'EachCertificate.pdf', 5024)
GO
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (2012, N'\Upload\Hira\EachCertificate.pdf', N'EachCertificate.pdf', 5024)
GO
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (3009, N'\Upload\Hira\Rekadia Vacancy -  programmer.pdf', N'Rekadia Vacancy -  programmer.pdf', 7032)
GO
SET IDENTITY_INSERT [dbo].[hira_document] OFF
GO
SET IDENTITY_INSERT [dbo].[hot_work] ON 

GO
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (2, NULL, NULL, N'asddsad asd sadasdsadas sa sa sda', N'318', NULL, NULL, N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (3, N'HW-A-B-C-2013-0001', N' sadasd asda', N'asdasdsa asdsadasdsad asdasd', N'318', CAST(0x0000A29200000000 AS DateTime), CAST(0x0000A29200000000 AS DateTime), N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 16, NULL, N'4%', N'20%', N'9.9 ppm', N'21 ppm', NULL, NULL, N'a/Attachment/signatures/318.png', N'a/Attachment/signatures/297.png', N'297', N'', N'278', N'239', N'a', N'241', N'', N'a/Attachment/signatures/241.png', N'239', N'a/Attachment/signatures/239.png', NULL, N'a/Attachment/signatures/318.png', N'a/Attachment/signatures/297.png', N'297', N'', N'278', N'239', N'a', N'243', N'', N'a', CAST(0x0000A29200000000 AS DateTime), N'2', N'20', N'1', N'1', N'-', N'253', N'a', N'318', N'a/Attachment/signatures/318.png', N'244', N'', N'a/Attachment/signatures/244.png', CAST(0x0000A29300000000 AS DateTime), N'Perlu asda', CAST(0x0000A29300000000 AS DateTime), N'3', N'4', N'1', N'1', N'-', N'253', N'a', N'318', N'a/Attachment/signatures/318.png', N'244', N'', N'a/Attachment/signatures/244.png', CAST(0x0000A29400000000 AS DateTime), N'sdfdfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, NULL)
GO
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (4, N'HW-A-B-C-2013-0002', NULL, N'asdsadasd asd asdas', N'318', NULL, NULL, N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (5, N'HW-A-B-C-2013-0003', NULL, N'asdfdfsasdf sadf safdsa fdsaf dsfdsafdsafdsa fds dsfdsa', NULL, NULL, NULL, N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (6, N'HW-A-B-C-2013-0004', N'blblbl', N'asdasd asd sadsadsadsadsad asdas', N'318', CAST(0x0000A29300000000 AS DateTime), CAST(0x0000A29400000000 AS DateTime), N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 20, NULL, N'1', N'20', N'1', N'1', NULL, NULL, N'a/Attachment/signatures/318.png', N'a/Attachment/signatures/297.png', N'297', N'', N'278', N'239', N'a', N'244', N'', N'a/Attachment/signatures/244.png', N'253', N'a', NULL, NULL, NULL, N'297', N'', N'278', N'239', NULL, NULL, NULL, NULL, CAST(0x0000A29300000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'253', NULL, N'318', NULL, N'244', N'', NULL, CAST(0x0000A29400000000 AS DateTime), N'Perlu asdsadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL)
GO
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (1005, N'HW-A-B-C-2013-0005', N'R. Erzi Rizal', N'pipe installation', N'318', CAST(0x0000A29900000000 AS DateTime), CAST(0x0000A29A00735B40 AS DateTime), N'1#1#1#1#0#1#1#2#2', N'1#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 1019, NULL, N'0', N'21', N'0', N'0', NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'297', NULL, N'278', N'239', N'ahttp://localhost:8087', N'244', NULL, N'ahttp://localhost:8087/Attachment/signatures/244.png', N'253', N'ahttp://localhost:8087', NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', N'a', NULL, NULL, N'278', N'239', N'a', NULL, NULL, N'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, NULL)
GO
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (1006, N'HW-A-B-C-2013-0006', NULL, N'pipe installation', N'318', NULL, NULL, N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 1020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (2006, N'HW-SPE-000002', N'278', N'asdasdsad', N'318', CAST(0x0000A2A600000000 AS DateTime), CAST(0x0000A2A700735B40 AS DateTime), N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 1023, NULL, N'0', N'21.5', N'0', N'0', NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'297', N'', NULL, NULL, NULL, N'244', N'', N'ahttp://localhost:8087/Attachment/signatures/244.png', N'253', N'ahttp://localhost:8087/Attachment/signatures/244.png', NULL, NULL, NULL, N'297', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, N'1234')
GO
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (3007, N'HW-SPE-000005', N'239', N'asdasdasd', N'318', CAST(0x0000A2AC00000000 AS DateTime), CAST(0x0000A2AD00735B40 AS DateTime), N'1#1#1#1#1#1#1#1#1', N'1#1#1#2#2#1#1#1#1', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 2025, N'FO: jahsjdkah asdjhasjdh asjadjashdjk hsajdsadhj as', N'1', N'21', N'1', N'1', NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, N'297', N'', NULL, NULL, NULL, N'244', N'', NULL, N'253', N'ahttp://localhost:8087/Attachment/signatures/244.png', NULL, NULL, NULL, N'297', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, N'1143')
GO
SET IDENTITY_INSERT [dbo].[hot_work] OFF
GO
SET IDENTITY_INSERT [dbo].[loto_glarf] ON 

GO
INSERT [dbo].[loto_glarf] ([id], [requestor], [supervisor], [requestor_signature], [supervisor_signature], [id_loto_permit], [loto_no], [status]) VALUES (1, N'318', NULL, NULL, NULL, 1, N'LT-SPE-000025', NULL)
GO
INSERT [dbo].[loto_glarf] ([id], [requestor], [supervisor], [requestor_signature], [supervisor_signature], [id_loto_permit], [loto_no], [status]) VALUES (2, N'318', NULL, NULL, NULL, 2, N'LT-SPE-000026', 0)
GO
INSERT [dbo].[loto_glarf] ([id], [requestor], [supervisor], [requestor_signature], [supervisor_signature], [id_loto_permit], [loto_no], [status]) VALUES (3, N'318', N'297', N'http://localhost:8087/Attachment/signatures/318.png', N'http://localhost:8087/Attachment/signatures/297.png', 6, N'LT-SPE-000027', 4)
GO
INSERT [dbo].[loto_glarf] ([id], [requestor], [supervisor], [requestor_signature], [supervisor_signature], [id_loto_permit], [loto_no], [status]) VALUES (4, N'318', NULL, NULL, NULL, 6, N'LT-SPE-000027-1', 4)
GO
INSERT [dbo].[loto_glarf] ([id], [requestor], [supervisor], [requestor_signature], [supervisor_signature], [id_loto_permit], [loto_no], [status]) VALUES (5, N'318', N'297', NULL, NULL, 6, N'LT-SPE-000027-2', 6)
GO
INSERT [dbo].[loto_glarf] ([id], [requestor], [supervisor], [requestor_signature], [supervisor_signature], [id_loto_permit], [loto_no], [status]) VALUES (6, N'318', NULL, NULL, NULL, 7, N'LT-SPE-000030', 0)
GO
INSERT [dbo].[loto_glarf] ([id], [requestor], [supervisor], [requestor_signature], [supervisor_signature], [id_loto_permit], [loto_no], [status]) VALUES (7, N'318', N'297', NULL, NULL, 8, N'LT-SPE-000030', 6)
GO
SET IDENTITY_INSERT [dbo].[loto_glarf] OFF
GO
SET IDENTITY_INSERT [dbo].[loto_glarf_user] ON 

GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (0, 1, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (1, 2, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (2, 2, N'318', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (3, 3, N'297', N'http://localhost:8087/Attachment/signatures/297.png', CAST(0x0000A30100C36C71 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (4, 3, N'318', N'http://localhost:8087/Attachment/signatures/318.png', CAST(0x0000A30100C39526 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (7, 3, N'243', N'http://localhost:8087', CAST(0x0000A30100C695C3 AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (8, 3, N'239', N'http://localhost:8087/Attachment/signatures/239.png', CAST(0x0000A30100C6ADAE AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (9, 4, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (10, 4, N'318', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (11, 5, N'297', NULL, NULL, N'http://localhost:8087/Attachment/signatures/297.png', CAST(0x0000A30300C22386 AS DateTime), 0)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (12, 5, N'318', NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', CAST(0x0000A30300C1D32E AS DateTime), 0)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (13, 6, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (14, 6, N'318', NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (15, 7, N'297', NULL, NULL, N'http://localhost:8087/Attachment/signatures/297.png', CAST(0x0000A30600B860BB AS DateTime), 0)
GO
INSERT [dbo].[loto_glarf_user] ([id], [id_glarf], [user], [user_application_signature], [user_application_signature_date], [user_cancellation_signature], [user_cancellation_signature_date], [can_edit]) VALUES (16, 7, N'318', NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', CAST(0x0000A30600B840EB AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[loto_glarf_user] OFF
GO
SET IDENTITY_INSERT [dbo].[loto_permit] ON 

GO
INSERT [dbo].[loto_permit] ([id], [loto_no], [requestor], [supervisor], [work_location], [lock_box_no], [initial_pad_lock], [qty_pad_lock_usage], [balance], [approval_date], [approval_facility_owner], [approval_supervisor_signature], [approval_supervisor_signature_delegate], [approval_supervisor_signature_date], [approval_fo_signature], [approval_fo_signature_date], [approval_fo_signature_delegate], [oncoming_holder_1], [oncoming_holder_2], [oncoming_holder_3], [oncoming_holder_4], [oncoming_holder_5], [oncoming_holder_6], [oncoming_holder_7], [approval_holder_1_signature], [approval_holder_2_signature], [approval_holder_3_signature], [approval_holder_4_signature], [approval_holder_5_signature], [approval_holder_6_signature], [approval_holder_7_signature], [approval_holder_1_datetime], [approval_holder_2_datetime], [approval_holder_3_datetime], [approval_holder_4_datetime], [approval_holder_5_datetime], [approval_holder_6_datetime], [approval_holder_7_datetime], [approval_notes], [status], [new_coming_holder], [requestor_ok], [holder_2_ok], [holder_3_ok], [holder_4_ok], [holder_5_ok], [holder_6_ok], [holder_7_ok], [cancellation_supervisor_signature], [cancellation_supervisor_signature_date], [cancellation_holder_2_signature], [cancellation_holder_2_signature_date], [cancellation_holder_3_signature], [cancellation_holder_3_signature_date], [cancellation_holder_4_signature], [cancellation_holder_4_signature_date], [cancellation_holder_5_signature], [cancellation_holder_5_signature_date], [cancellation_holder_6_signature], [cancellation_holder_6_signature_date], [cancellation_holder_7_signature], [cancellation_holder_7_signature_date], [cancellation_fo_signature], [cancellation_fo_signature_date], [cancellation_fo_signature_delegate], [cancellation_notes], [cancellation_facility_owner]) VALUES (1, N'LT-SPE-000024', N'318', N'297', N'dasfds dasfdasfdsf', N'1,4', 70, 5, 65, CAST(0x0000A2FC0120BC24 AS DateTime), N'242', N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A2FC011CD6C8 AS DateTime), N'ahttp://localhost:8087', CAST(0x0000A2FC0120BC24 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_permit] ([id], [loto_no], [requestor], [supervisor], [work_location], [lock_box_no], [initial_pad_lock], [qty_pad_lock_usage], [balance], [approval_date], [approval_facility_owner], [approval_supervisor_signature], [approval_supervisor_signature_delegate], [approval_supervisor_signature_date], [approval_fo_signature], [approval_fo_signature_date], [approval_fo_signature_delegate], [oncoming_holder_1], [oncoming_holder_2], [oncoming_holder_3], [oncoming_holder_4], [oncoming_holder_5], [oncoming_holder_6], [oncoming_holder_7], [approval_holder_1_signature], [approval_holder_2_signature], [approval_holder_3_signature], [approval_holder_4_signature], [approval_holder_5_signature], [approval_holder_6_signature], [approval_holder_7_signature], [approval_holder_1_datetime], [approval_holder_2_datetime], [approval_holder_3_datetime], [approval_holder_4_datetime], [approval_holder_5_datetime], [approval_holder_6_datetime], [approval_holder_7_datetime], [approval_notes], [status], [new_coming_holder], [requestor_ok], [holder_2_ok], [holder_3_ok], [holder_4_ok], [holder_5_ok], [holder_6_ok], [holder_7_ok], [cancellation_supervisor_signature], [cancellation_supervisor_signature_date], [cancellation_holder_2_signature], [cancellation_holder_2_signature_date], [cancellation_holder_3_signature], [cancellation_holder_3_signature_date], [cancellation_holder_4_signature], [cancellation_holder_4_signature_date], [cancellation_holder_5_signature], [cancellation_holder_5_signature_date], [cancellation_holder_6_signature], [cancellation_holder_6_signature_date], [cancellation_holder_7_signature], [cancellation_holder_7_signature_date], [cancellation_fo_signature], [cancellation_fo_signature_date], [cancellation_fo_signature_delegate], [cancellation_notes], [cancellation_facility_owner]) VALUES (2, N'LT-SPE-000026', N'318', N'297', N'asdfdas', N'2,4', 70, 2, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_permit] ([id], [loto_no], [requestor], [supervisor], [work_location], [lock_box_no], [initial_pad_lock], [qty_pad_lock_usage], [balance], [approval_date], [approval_facility_owner], [approval_supervisor_signature], [approval_supervisor_signature_delegate], [approval_supervisor_signature_date], [approval_fo_signature], [approval_fo_signature_date], [approval_fo_signature_delegate], [oncoming_holder_1], [oncoming_holder_2], [oncoming_holder_3], [oncoming_holder_4], [oncoming_holder_5], [oncoming_holder_6], [oncoming_holder_7], [approval_holder_1_signature], [approval_holder_2_signature], [approval_holder_3_signature], [approval_holder_4_signature], [approval_holder_5_signature], [approval_holder_6_signature], [approval_holder_7_signature], [approval_holder_1_datetime], [approval_holder_2_datetime], [approval_holder_3_datetime], [approval_holder_4_datetime], [approval_holder_5_datetime], [approval_holder_6_datetime], [approval_holder_7_datetime], [approval_notes], [status], [new_coming_holder], [requestor_ok], [holder_2_ok], [holder_3_ok], [holder_4_ok], [holder_5_ok], [holder_6_ok], [holder_7_ok], [cancellation_supervisor_signature], [cancellation_supervisor_signature_date], [cancellation_holder_2_signature], [cancellation_holder_2_signature_date], [cancellation_holder_3_signature], [cancellation_holder_3_signature_date], [cancellation_holder_4_signature], [cancellation_holder_4_signature_date], [cancellation_holder_5_signature], [cancellation_holder_5_signature_date], [cancellation_holder_6_signature], [cancellation_holder_6_signature_date], [cancellation_holder_7_signature], [cancellation_holder_7_signature_date], [cancellation_fo_signature], [cancellation_fo_signature_date], [cancellation_fo_signature_delegate], [cancellation_notes], [cancellation_facility_owner]) VALUES (3, N'LT-SPE-000027', N'318', N'297', N'asdasd', N'2', 10, 3, 7, CAST(0x0000A30100C7D030 AS DateTime), N'242', N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A30100C7AF51 AS DateTime), N'ahttp://localhost:8087', CAST(0x0000A30100C7D030 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_permit] ([id], [loto_no], [requestor], [supervisor], [work_location], [lock_box_no], [initial_pad_lock], [qty_pad_lock_usage], [balance], [approval_date], [approval_facility_owner], [approval_supervisor_signature], [approval_supervisor_signature_delegate], [approval_supervisor_signature_date], [approval_fo_signature], [approval_fo_signature_date], [approval_fo_signature_delegate], [oncoming_holder_1], [oncoming_holder_2], [oncoming_holder_3], [oncoming_holder_4], [oncoming_holder_5], [oncoming_holder_6], [oncoming_holder_7], [approval_holder_1_signature], [approval_holder_2_signature], [approval_holder_3_signature], [approval_holder_4_signature], [approval_holder_5_signature], [approval_holder_6_signature], [approval_holder_7_signature], [approval_holder_1_datetime], [approval_holder_2_datetime], [approval_holder_3_datetime], [approval_holder_4_datetime], [approval_holder_5_datetime], [approval_holder_6_datetime], [approval_holder_7_datetime], [approval_notes], [status], [new_coming_holder], [requestor_ok], [holder_2_ok], [holder_3_ok], [holder_4_ok], [holder_5_ok], [holder_6_ok], [holder_7_ok], [cancellation_supervisor_signature], [cancellation_supervisor_signature_date], [cancellation_holder_2_signature], [cancellation_holder_2_signature_date], [cancellation_holder_3_signature], [cancellation_holder_3_signature_date], [cancellation_holder_4_signature], [cancellation_holder_4_signature_date], [cancellation_holder_5_signature], [cancellation_holder_5_signature_date], [cancellation_holder_6_signature], [cancellation_holder_6_signature_date], [cancellation_holder_7_signature], [cancellation_holder_7_signature_date], [cancellation_fo_signature], [cancellation_fo_signature_date], [cancellation_fo_signature_delegate], [cancellation_notes], [cancellation_facility_owner]) VALUES (4, N'LT-SPE-000027-1', N'318', N'297', N'asdasd', N'2', 10, 3, 7, CAST(0x0000A30100C7D030 AS DateTime), N'242', N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A30100C7AF51 AS DateTime), N'ahttp://localhost:8087', CAST(0x0000A30100C7D030 AS DateTime), NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_permit] ([id], [loto_no], [requestor], [supervisor], [work_location], [lock_box_no], [initial_pad_lock], [qty_pad_lock_usage], [balance], [approval_date], [approval_facility_owner], [approval_supervisor_signature], [approval_supervisor_signature_delegate], [approval_supervisor_signature_date], [approval_fo_signature], [approval_fo_signature_date], [approval_fo_signature_delegate], [oncoming_holder_1], [oncoming_holder_2], [oncoming_holder_3], [oncoming_holder_4], [oncoming_holder_5], [oncoming_holder_6], [oncoming_holder_7], [approval_holder_1_signature], [approval_holder_2_signature], [approval_holder_3_signature], [approval_holder_4_signature], [approval_holder_5_signature], [approval_holder_6_signature], [approval_holder_7_signature], [approval_holder_1_datetime], [approval_holder_2_datetime], [approval_holder_3_datetime], [approval_holder_4_datetime], [approval_holder_5_datetime], [approval_holder_6_datetime], [approval_holder_7_datetime], [approval_notes], [status], [new_coming_holder], [requestor_ok], [holder_2_ok], [holder_3_ok], [holder_4_ok], [holder_5_ok], [holder_6_ok], [holder_7_ok], [cancellation_supervisor_signature], [cancellation_supervisor_signature_date], [cancellation_holder_2_signature], [cancellation_holder_2_signature_date], [cancellation_holder_3_signature], [cancellation_holder_3_signature_date], [cancellation_holder_4_signature], [cancellation_holder_4_signature_date], [cancellation_holder_5_signature], [cancellation_holder_5_signature_date], [cancellation_holder_6_signature], [cancellation_holder_6_signature_date], [cancellation_holder_7_signature], [cancellation_holder_7_signature_date], [cancellation_fo_signature], [cancellation_fo_signature_date], [cancellation_fo_signature_delegate], [cancellation_notes], [cancellation_facility_owner]) VALUES (5, N'LT-SPE-000027-1', N'318', N'297', N'asdasd', N'2', 10, 3, 7, CAST(0x0000A30100C7D030 AS DateTime), N'242', N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A30100C7AF51 AS DateTime), N'ahttp://localhost:8087', CAST(0x0000A30100C7D030 AS DateTime), NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A301011748EF AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_permit] ([id], [loto_no], [requestor], [supervisor], [work_location], [lock_box_no], [initial_pad_lock], [qty_pad_lock_usage], [balance], [approval_date], [approval_facility_owner], [approval_supervisor_signature], [approval_supervisor_signature_delegate], [approval_supervisor_signature_date], [approval_fo_signature], [approval_fo_signature_date], [approval_fo_signature_delegate], [oncoming_holder_1], [oncoming_holder_2], [oncoming_holder_3], [oncoming_holder_4], [oncoming_holder_5], [oncoming_holder_6], [oncoming_holder_7], [approval_holder_1_signature], [approval_holder_2_signature], [approval_holder_3_signature], [approval_holder_4_signature], [approval_holder_5_signature], [approval_holder_6_signature], [approval_holder_7_signature], [approval_holder_1_datetime], [approval_holder_2_datetime], [approval_holder_3_datetime], [approval_holder_4_datetime], [approval_holder_5_datetime], [approval_holder_6_datetime], [approval_holder_7_datetime], [approval_notes], [status], [new_coming_holder], [requestor_ok], [holder_2_ok], [holder_3_ok], [holder_4_ok], [holder_5_ok], [holder_6_ok], [holder_7_ok], [cancellation_supervisor_signature], [cancellation_supervisor_signature_date], [cancellation_holder_2_signature], [cancellation_holder_2_signature_date], [cancellation_holder_3_signature], [cancellation_holder_3_signature_date], [cancellation_holder_4_signature], [cancellation_holder_4_signature_date], [cancellation_holder_5_signature], [cancellation_holder_5_signature_date], [cancellation_holder_6_signature], [cancellation_holder_6_signature_date], [cancellation_holder_7_signature], [cancellation_holder_7_signature_date], [cancellation_fo_signature], [cancellation_fo_signature_date], [cancellation_fo_signature_delegate], [cancellation_notes], [cancellation_facility_owner]) VALUES (6, N'LT-SPE-000027-2', N'318', N'297', N'asdasd', N'2', 10, 3, 7, CAST(0x0000A3020110B249 AS DateTime), N'242', N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A302011078C4 AS DateTime), N'ahttp://localhost:8087', CAST(0x0000A3020110B249 AS DateTime), NULL, NULL, N'318#4', N'318#5', NULL, NULL, NULL, NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A3020114D4E3 AS DateTime), CAST(0x0000A3020114D626 AS DateTime), NULL, NULL, NULL, NULL, N'', 15, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', CAST(0x0000A306009EDB26 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_permit] ([id], [loto_no], [requestor], [supervisor], [work_location], [lock_box_no], [initial_pad_lock], [qty_pad_lock_usage], [balance], [approval_date], [approval_facility_owner], [approval_supervisor_signature], [approval_supervisor_signature_delegate], [approval_supervisor_signature_date], [approval_fo_signature], [approval_fo_signature_date], [approval_fo_signature_delegate], [oncoming_holder_1], [oncoming_holder_2], [oncoming_holder_3], [oncoming_holder_4], [oncoming_holder_5], [oncoming_holder_6], [oncoming_holder_7], [approval_holder_1_signature], [approval_holder_2_signature], [approval_holder_3_signature], [approval_holder_4_signature], [approval_holder_5_signature], [approval_holder_6_signature], [approval_holder_7_signature], [approval_holder_1_datetime], [approval_holder_2_datetime], [approval_holder_3_datetime], [approval_holder_4_datetime], [approval_holder_5_datetime], [approval_holder_6_datetime], [approval_holder_7_datetime], [approval_notes], [status], [new_coming_holder], [requestor_ok], [holder_2_ok], [holder_3_ok], [holder_4_ok], [holder_5_ok], [holder_6_ok], [holder_7_ok], [cancellation_supervisor_signature], [cancellation_supervisor_signature_date], [cancellation_holder_2_signature], [cancellation_holder_2_signature_date], [cancellation_holder_3_signature], [cancellation_holder_3_signature_date], [cancellation_holder_4_signature], [cancellation_holder_4_signature_date], [cancellation_holder_5_signature], [cancellation_holder_5_signature_date], [cancellation_holder_6_signature], [cancellation_holder_6_signature_date], [cancellation_holder_7_signature], [cancellation_holder_7_signature_date], [cancellation_fo_signature], [cancellation_fo_signature_date], [cancellation_fo_signature_delegate], [cancellation_notes], [cancellation_facility_owner]) VALUES (7, N'LT-SPE-000030', N'318#6', NULL, N'asdfdsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_permit] ([id], [loto_no], [requestor], [supervisor], [work_location], [lock_box_no], [initial_pad_lock], [qty_pad_lock_usage], [balance], [approval_date], [approval_facility_owner], [approval_supervisor_signature], [approval_supervisor_signature_delegate], [approval_supervisor_signature_date], [approval_fo_signature], [approval_fo_signature_date], [approval_fo_signature_delegate], [oncoming_holder_1], [oncoming_holder_2], [oncoming_holder_3], [oncoming_holder_4], [oncoming_holder_5], [oncoming_holder_6], [oncoming_holder_7], [approval_holder_1_signature], [approval_holder_2_signature], [approval_holder_3_signature], [approval_holder_4_signature], [approval_holder_5_signature], [approval_holder_6_signature], [approval_holder_7_signature], [approval_holder_1_datetime], [approval_holder_2_datetime], [approval_holder_3_datetime], [approval_holder_4_datetime], [approval_holder_5_datetime], [approval_holder_6_datetime], [approval_holder_7_datetime], [approval_notes], [status], [new_coming_holder], [requestor_ok], [holder_2_ok], [holder_3_ok], [holder_4_ok], [holder_5_ok], [holder_6_ok], [holder_7_ok], [cancellation_supervisor_signature], [cancellation_supervisor_signature_date], [cancellation_holder_2_signature], [cancellation_holder_2_signature_date], [cancellation_holder_3_signature], [cancellation_holder_3_signature_date], [cancellation_holder_4_signature], [cancellation_holder_4_signature_date], [cancellation_holder_5_signature], [cancellation_holder_5_signature_date], [cancellation_holder_6_signature], [cancellation_holder_6_signature_date], [cancellation_holder_7_signature], [cancellation_holder_7_signature_date], [cancellation_fo_signature], [cancellation_fo_signature_date], [cancellation_fo_signature_delegate], [cancellation_notes], [cancellation_facility_owner]) VALUES (8, N'LT-SPE-000030', N'318#7', N'297', N'asdfdsa', N'2', 10, 1, 9, CAST(0x0000A30600B67563 AS DateTime), N'244', N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A30600B6237B AS DateTime), N'ahttp://localhost:8087/Attachment/signatures/244.png', CAST(0x0000A30600B67563 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/297.png', CAST(0x0000A30600B8C582 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://localhost:8087', CAST(0x0000A30600BDB27C AS DateTime), NULL, N'', N'242')
GO
SET IDENTITY_INSERT [dbo].[loto_permit] OFF
GO
SET IDENTITY_INSERT [dbo].[loto_point] ON 

GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (1, 1, N'dasfdsa', N'dasfdas', N'asdfdasf', N'RMV', N'LO', N'253', NULL, NULL, NULL, N'null', N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (2, 1, N'dasfdsa', N'dasfdas', N'asdfdasf', N'RMV', N'CL', N'253', CAST(0x0000A2FC014159A0 AS DateTime), NULL, NULL, N'null', N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (3, 1, N'dasfdsa', N'dasfdas', N'asdfdasf', N'RMV', N'RMV', N'253', CAST(0x0000A2FD0130DEE0 AS DateTime), NULL, NULL, N'null', N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (4, 1, N'asd adasd', N'asdas d', N'asdasda', N'RI', N'SK', N'353', CAST(0x0000A2FB00DE7920 AS DateTime), NULL, NULL, N'null', N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (5, 1, N'adsfdasf', N'dasfasdf', N'dasfads', N'SK', N'LO', N'276', CAST(0x0000A2FC01206420 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (6, 2, N'asda', N'asdasd', N'asdas', N'LC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (7, 2, N'asdas', N'asda', N'asdasd', N'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (8, 2, N'asdas', N'asdasd', N'asdasd', N'LO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (9, 3, N'asdas', N'asdasd', N'asdasd', N'A', N'A', N'243', CAST(0x0000A30200000000 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (10, 3, N'dsfdsf', N'dsfdsf', N'sdfds', N'LC', N'LC', N'365', CAST(0x0000A30200000000 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (11, 3, N'xcvxcv', N'xcvxc', N'sxvcv', N'LO', N'LO', N'353', CAST(0x0000A30100000000 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (12, 5, N'asdas', N'asdasd', N'asdasd', N'A', N'A', N'243', CAST(0x0000A30200000000 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (13, 5, N'dsfdsf', N'dsfdsf', N'sdfds', N'LC', N'LC', N'365', CAST(0x0000A30200000000 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (14, 5, N'xcvxcv', N'xcvxc', N'sxvcv', N'LO', N'LO', N'353', CAST(0x0000A30100000000 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (15, 6, N'asdas', N'asdasd', N'asdasd', N'A', N'A', N'243', CAST(0x0000A30200000000 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', N'http://localhost:8087/Attachment/signatures/318.png', N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (16, 6, N'dsfdsf', N'dsfdsf', N'sdfds', N'LC', N'LC', N'365', CAST(0x0000A30200000000 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', N'http://localhost:8087/Attachment/signatures/318.png', N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (17, 6, N'xcvxcv', N'xcvxc', N'sxvcv', N'RO', N'RO', N'243', CAST(0x0000A30200000000 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', N'http://localhost:8087/Attachment/signatures/318.png', N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (18, 6, N'sdfs', N'sdfsdf', N'sdfsf', N'LC', N'LC', N'392', CAST(0x0000A30300000000 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', N'http://localhost:8087/Attachment/signatures/318.png', N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[loto_point] ([id], [id_loto], [tag_id], [description], [drawing_number], [loto_point_proposed], [loto_point_agreed], [applied_by], [applied_by_time], [removed_by], [removed_by_time], [remarks], [inspected_1], [inspected_2], [inspected_3], [inspected_4], [inspected_5], [inspected_6], [inspected_7]) VALUES (19, 8, N'dsfdasf', N'dsafasd fdsafa', N'sdf fa', N'A', N'A', N'243', CAST(0x0000A30700000000 AS DateTime), NULL, NULL, NULL, N'http://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[loto_point] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_assessor] ON 

GO
INSERT [dbo].[mst_assessor] ([id], [id_employee], [assessor_code]) VALUES (1, 278, N'SPE')
GO
SET IDENTITY_INSERT [dbo].[mst_assessor] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_department] ON 

GO
INSERT [dbo].[mst_department] ([id], [department]) VALUES (1, N'Production')
GO
INSERT [dbo].[mst_department] ([id], [department]) VALUES (2, N'SHE')
GO
INSERT [dbo].[mst_department] ([id], [department]) VALUES (3, N'Engineering')
GO
INSERT [dbo].[mst_department] ([id], [department]) VALUES (6, N'Warehouse')
GO
SET IDENTITY_INSERT [dbo].[mst_department] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_dept_head_fo] ON 

GO
INSERT [dbo].[mst_dept_head_fo] ([id], [id_dept_head_fo]) VALUES (1, 297)
GO
SET IDENTITY_INSERT [dbo].[mst_dept_head_fo] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_ei] ON 

GO
INSERT [dbo].[mst_ei] ([id], [id_employee]) VALUES (1, 298)
GO
SET IDENTITY_INSERT [dbo].[mst_ei] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_erector] ON 

GO
INSERT [dbo].[mst_erector] ([id], [id_employee], [certificate_no], [valid_date]) VALUES (1, 274, N'73458 384', CAST(0x0000A37900000000 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[mst_erector] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_facilities] ON 

GO
INSERT [dbo].[mst_facilities] ([id], [id_employee]) VALUES (1, 297)
GO
SET IDENTITY_INSERT [dbo].[mst_facilities] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_facility_owner] ON 

GO
INSERT [dbo].[mst_facility_owner] ([id], [id_employee], [fo_code]) VALUES (2, 278, N'SPE')
GO
SET IDENTITY_INSERT [dbo].[mst_facility_owner] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_inspector] ON 

GO
INSERT [dbo].[mst_inspector] ([id], [id_employee], [certificate_no], [valid_date]) VALUES (1, 298, N'34535 34345', CAST(0x0000A37600000000 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[mst_inspector] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_lock_box] ON 

GO
INSERT [dbo].[mst_lock_box] ([id], [no], [quantity]) VALUES (1, N'1', 10)
GO
INSERT [dbo].[mst_lock_box] ([id], [no], [quantity]) VALUES (2, N'2', 10)
GO
INSERT [dbo].[mst_lock_box] ([id], [no], [quantity]) VALUES (3, N'3', 40)
GO
INSERT [dbo].[mst_lock_box] ([id], [no], [quantity]) VALUES (4, N'4', 60)
GO
SET IDENTITY_INSERT [dbo].[mst_lock_box] OFF
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'A', N'Auto')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'CL', N'Close')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'LC', N'Lock Close')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'LO', N'Lock Open')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'M', N'Manual')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'OP', N'Open')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'RI', N'Rack In')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'RMV', N'Remove')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'RO', N'Rack Out')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'SK', N'Skillet')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'SPD', N'Spade')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'TC', N'Tag Close')
GO
INSERT [dbo].[mst_loto_point] ([code], [description]) VALUES (N'TO', N'Tag Open')
GO
SET IDENTITY_INSERT [dbo].[mst_ptw_holder_no] ON 

GO
INSERT [dbo].[mst_ptw_holder_no] ([id], [id_employee], [ptw_holder_no], [activated_date_until]) VALUES (1, 241, N'100000123', CAST(0x00380B00 AS Date))
GO
INSERT [dbo].[mst_ptw_holder_no] ([id], [id_employee], [ptw_holder_no], [activated_date_until]) VALUES (2, 278, N'100000124', CAST(0x6D390B00 AS Date))
GO
INSERT [dbo].[mst_ptw_holder_no] ([id], [id_employee], [ptw_holder_no], [activated_date_until]) VALUES (4, 234, N'100000125', CAST(0x0A380B00 AS Date))
GO
INSERT [dbo].[mst_ptw_holder_no] ([id], [id_employee], [ptw_holder_no], [activated_date_until]) VALUES (5, 318, N'100000126', CAST(0x0A380B00 AS Date))
GO
SET IDENTITY_INSERT [dbo].[mst_ptw_holder_no] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_radiation_po] ON 

GO
INSERT [dbo].[mst_radiation_po] ([id], [employee], [valid_date], [license_number]) VALUES (1, N'278', CAST(0x9D380B00 AS Date), N'835 837589')
GO
SET IDENTITY_INSERT [dbo].[mst_radiation_po] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_radiographer] ON 

GO
INSERT [dbo].[mst_radiographer] ([id], [employee], [level], [license_number], [valid_date]) VALUES (1, N'243', 1, N'948568 4567', CAST(0x9D380B00 AS Date))
GO
INSERT [dbo].[mst_radiographer] ([id], [employee], [level], [license_number], [valid_date]) VALUES (2, N'298', 2, N'6554 456', CAST(0x9D380B00 AS Date))
GO
SET IDENTITY_INSERT [dbo].[mst_radiographer] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_safety_officer] ON 

GO
INSERT [dbo].[mst_safety_officer] ([id], [id_so]) VALUES (1, 298)
GO
INSERT [dbo].[mst_safety_officer] ([id], [id_so]) VALUES (2, 278)
GO
SET IDENTITY_INSERT [dbo].[mst_safety_officer] OFF
GO
SET IDENTITY_INSERT [dbo].[mst_section] ON 

GO
INSERT [dbo].[mst_section] ([id], [section]) VALUES (1, N'Mechanical')
GO
SET IDENTITY_INSERT [dbo].[mst_section] OFF
GO
SET IDENTITY_INSERT [dbo].[permit_log] ON 

GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (1, 0, CAST(0x0000A29600B55F9E AS DateTime), 278, N'Approved by Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2, 0, CAST(0x0000A29600B7B84D AS DateTime), 239, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3, 21, CAST(0x0000A29600B8F306 AS DateTime), 297, N'Cancellation approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (4, 21, CAST(0x0000A29600B99EC0 AS DateTime), 278, N'Cancellation rejected by Assessor', N'terdapat kesalahan yang tidak benar adanya', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (5, 1005, CAST(0x0000A29900F1C5FE AS DateTime), 253, N'Gas Testing by Gas Tester', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6, 1005, CAST(0x0000A29900F2AA11 AS DateTime), 318, N'Approved by Work Leader', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7, 1005, CAST(0x0000A29900F494E3 AS DateTime), 297, N'Approved by Supervisor', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (8, 1005, CAST(0x0000A29900F4F926 AS DateTime), 278, N'Approved by Fire Watch', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (9, 1005, CAST(0x0000A29900F5CFE7 AS DateTime), 244, N'Approved by Facility Owner', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (10, 1019, CAST(0x0000A29900FB6F23 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (11, 1019, CAST(0x0000A29900FC2CE8 AS DateTime), 278, N'Approved by Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (12, 1019, CAST(0x0000A29900FFFB4C AS DateTime), 297, N'Cancellation approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (1002, 2006, CAST(0x0000A2A5011BC03B AS DateTime), 244, N'Gas Testing by Gas Tester', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (1003, 2006, CAST(0x0000A2A5011D5414 AS DateTime), 318, N'Approved by Work Leader', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (1004, 2006, CAST(0x0000A2A5011D8991 AS DateTime), 297, N'Approved by Work Leader', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2002, 2006, CAST(0x0000A2A800B4C8C7 AS DateTime), 297, N'Approved by Supervisor', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2003, 2006, CAST(0x0000A2A800B4F002 AS DateTime), 244, N'Approved by Facility Owner', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2004, 1023, CAST(0x0000A2A800B523AA AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2005, 1023, CAST(0x0000A2A800B5A09C AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2006, 1023, CAST(0x0000A2A800BF49F6 AS DateTime), 239, N'Approved by Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2007, 1023, CAST(0x0000A2A800BF8B2D AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2008, 1023, CAST(0x0000A2A800C0CF17 AS DateTime), 239, N'Approved by Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2009, 1023, CAST(0x0000A2A800C4A5F3 AS DateTime), 239, N'Approved by Assessor', N'balba;sada asdadlkajd adkasjdk asdsakjdha asdjhad jasdasd asdhjadhsa asdasdkh', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2010, 1023, CAST(0x0000A2A800C544B5 AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2011, 1024, CAST(0x0000A2A800EF29EC AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2012, 1024, CAST(0x0000A2A800EF59EE AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2013, 1024, CAST(0x0000A2A800F282F4 AS DateTime), 239, N'Approved by Assessor', N'asd asdajdhas sajdhaskjd asdjkahd asdjksahdj haskjdhas', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2014, 1024, CAST(0x0000A2A800F2AD42 AS DateTime), 278, N'Rejected by Facility Owner', N'asad asdajd had jasdhaksh ajadha akjdhsa lasdhjsf ', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2015, 1024, CAST(0x0000A2A800F42492 AS DateTime), 239, N'Rejected by Assessor', N'dafdf sg fgfh df', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2016, 1024, CAST(0x0000A2A800F44154 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2017, 1024, CAST(0x0000A2A800F469F9 AS DateTime), 239, N'Approved by Assessor', N'asd adsadas', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2018, 1024, CAST(0x0000A2A800F5C26A AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2019, 1024, CAST(0x0000A2A800F6F195 AS DateTime), 297, N'Cancellation approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2020, 1024, CAST(0x0000A2A800F7FD56 AS DateTime), 239, N'Cancellation approved by Assessor', N'asd sadadsd saddad adafssd dfgsgf fdgsdfgs', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2021, 1024, CAST(0x0000A2A800F83257 AS DateTime), 278, N'Cancellation approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2022, 1025, CAST(0x0000A2A800FEDD31 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2023, 1025, CAST(0x0000A2A800FF1AFA AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2024, 1025, CAST(0x0000A2A800FF463B AS DateTime), 239, N'Approved by Assessor', N'kjakljg iehrit dfmvnmvnbsdifg jhgfjsdhgj fdsjghdsfjkgh dsfjghsfjd', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3008, 2024, CAST(0x0000A2AB00A214AB AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3009, 2024, CAST(0x0000A2AB00A3AE22 AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3010, 2024, CAST(0x0000A2AB00A3C3EF AS DateTime), 278, N'Approved by Assessor', N'asd assadasd asdsadsad adcxsdad asdasdsa', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3011, 2024, CAST(0x0000A2AB00A3CA0C AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3012, 2024, CAST(0x0000A2AB00A3D96E AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3013, 3007, CAST(0x0000A2AC010F0A94 AS DateTime), 244, N'Gas Testing by Gas Tester', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3014, 3007, CAST(0x0000A2AC010F4C38 AS DateTime), 318, N'Approved by Work Leader', N'', 3)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (4008, 3026, CAST(0x0000A2DC00C22638 AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (4009, 3026, CAST(0x0000A2DC00C2A66C AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (4010, 3026, CAST(0x0000A2DC00C349E2 AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (4011, 3026, CAST(0x0000A2DC00C35BAD AS DateTime), 278, N'Approved by Assessor', N'asda asdasdasdas', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (4012, 3026, CAST(0x0000A2DC00C3670C AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (5008, 5024, CAST(0x0000A2E600D8F46F AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (5009, 5024, CAST(0x0000A2E600D91888 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (5010, 5024, CAST(0x0000A2E600D94812 AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (5011, 5024, CAST(0x0000A2E600D94F76 AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (5012, 5024, CAST(0x0000A2E600D9665A AS DateTime), 278, N'Approved by Assessor', N'ajsdfkl jasfkdjasfcxmvnx zvxcnvm,xczv,mxcndsf adsf', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (5013, 5024, CAST(0x0000A2E600D977E0 AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6008, 6025, CAST(0x0000A2EC00B81AAC AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6009, 6025, CAST(0x0000A2EC00B86BE9 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6010, 6025, CAST(0x0000A2EC00B89347 AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6011, 6025, CAST(0x0000A2EC00B8A244 AS DateTime), 278, N'Approved by Assessor', N'hsdfjhdjg shfjfhgjsdfhgj sdfgjdhfsgkjdfsg', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6012, 6025, CAST(0x0000A2EC00B8B55A AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6013, 6027, CAST(0x0000A2F1010690D4 AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6014, 6027, CAST(0x0000A2F10106CC09 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6015, 6027, CAST(0x0000A2F10107AF8B AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6016, 6027, CAST(0x0000A2F10107C5A0 AS DateTime), 278, N'Approved by Assessor', N'sd dsfdsf dsfsdfdsf', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6017, 6027, CAST(0x0000A2F10108D1C2 AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7008, 7026, CAST(0x0000A2F300CE7DA7 AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7009, 7026, CAST(0x0000A2F300CEAAE9 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7010, 7026, CAST(0x0000A2F300CF9AF5 AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7011, 7026, CAST(0x0000A2F300CFAFD7 AS DateTime), 278, N'Approved by Assessor', N'ghjhgkj kjhkjh hjjk hjhhjhkj kj', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7012, 7026, CAST(0x0000A2F300CFBD15 AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7013, 7028, CAST(0x0000A2F3011E11FD AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7014, 7027, CAST(0x0000A2F3011E2326 AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7015, 7028, CAST(0x0000A2F3011E9F2E AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7016, 7028, CAST(0x0000A2F3011EF004 AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7017, 7028, CAST(0x0000A2F3011F1834 AS DateTime), 278, N'Approved by Assessor', N'sdfsd fdsfdsfdsf dsfdsfdsf dsf ds', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7018, 7028, CAST(0x0000A2F3011F2E70 AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7019, 7031, CAST(0x0000A2F401210614 AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7020, 7031, CAST(0x0000A2F40121393C AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7021, 7031, CAST(0x0000A2F401215D65 AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7022, 7031, CAST(0x0000A2F401216A48 AS DateTime), 278, N'Approved by Assessor', N'asdas dasdasdad asdas dasdas', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7023, 7031, CAST(0x0000A2F401217A08 AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7024, 7033, CAST(0x0000A2F9011948CB AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7025, 7033, CAST(0x0000A2F9011994CC AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7026, 7033, CAST(0x0000A2F90119E53C AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7027, 7033, CAST(0x0000A2F9011A1871 AS DateTime), 278, N'Approved by Assessor', N'fgh fhgfhgf fgbvnbvn fgh fgh', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7028, 7033, CAST(0x0000A2F9011A2BB9 AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7029, 7037, CAST(0x0000A30100C7F684 AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7030, 7037, CAST(0x0000A30100C8E5B3 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7031, 7037, CAST(0x0000A30100D67BF7 AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7032, 7037, CAST(0x0000A30100D68A7E AS DateTime), 278, N'Approved by Assessor', N'asasd asdas dsafasf asdfdsaf dasfdsfds', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7033, 7037, CAST(0x0000A30100D69526 AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7034, 7039, CAST(0x0000A303009E2108 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7035, 7039, CAST(0x0000A303009E4B6D AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7036, 7039, CAST(0x0000A303009E97DE AS DateTime), 278, N'Approved by Assessor', N'dasf dasfdasfdasf dasfdas fdsfdas fs fdas', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7037, 7039, CAST(0x0000A303009EBB9A AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7038, 7040, CAST(0x0000A30600B6B9E9 AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7039, 7040, CAST(0x0000A30600B6F474 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7040, 7040, CAST(0x0000A30600B71B98 AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7041, 7040, CAST(0x0000A30600B72904 AS DateTime), 278, N'Approved by Assessor', N'sfdasf ', 0)
GO
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7042, 7040, CAST(0x0000A30600B73262 AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
GO
SET IDENTITY_INSERT [dbo].[permit_log] OFF
GO
SET IDENTITY_INSERT [dbo].[permit_to_work] ON 

GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1, NULL, CAST(0x0000A28A00A5E4C0 AS DateTime), CAST(0x0000A29100A5E4C0 AS DateTime), 1, 1, NULL, 1, N'2', N'asd asd', NULL, N'asd asdas das ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (2, NULL, CAST(0x0000A28A00A8EA30 AS DateTime), CAST(0x0000A29100A8EA30 AS DateTime), 1, 1, N'12', 1, N'asd asd asd as dsa', N's ad sasda', N'asd sa', N' asdas sad', N's adsasa sda d as dsa sda dsad asd sa sa as dass', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (3, NULL, CAST(0x0000A28C009450C0 AS DateTime), CAST(0x0000A293009450C0 AS DateTime), 1, 1, N'asda', 1, N'1', N'qweqwe', N'qweqwe', N'asdsa', N'asdasdasdsa asd sadasdsadads sad asdsa asdasas sa sa sad sas ad aasa sadsadsadas sad sa
dsasa dsad  assad adsadas asdasfdsfdsa sdafsdafasdf asdf sdaf asfasfasdfds sdfsd', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, N'Spv: catatakhjkhafkjhsdkjf dhsajfhskjdfhjksdah  hsdj fhjksdh fkjsdh', NULL, CAST(0xE7370B00 AS Date), CAST(0xEE370B00 AS Date), CAST(0xEA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'a', N'297', NULL, N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'278', N'239', N'a', N'318', N'a/Attachment/signatures/318.png', N'297', NULL, N'a/Attachment/signatures/297.png', N'278', N'239', NULL, N'278', N'239', NULL, NULL, 2)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (4, N'PTW-A-B-C-2013-0001', CAST(0x0000A29300F4B870 AS DateTime), CAST(0x0000A29A00F4B870 AS DateTime), 1, 1, N'ghjhgj', 1, N'2', N'ghjhg', N'ghjgh', N'ghjhg', N'ghjghj ghj hgj hgjghjhhjghgg hgjghjjjjhgjgh ghjghjhgjg ghj', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0xED370B00 AS Date), CAST(0xF4370B00 AS Date), CAST(0xEA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', NULL, N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'239', N'', N'a/Attachment/signatures/239.png', N'318', N'a/Attachment/signatures/318.png', N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, NULL, 6)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (5, N'PTW-A-B-C-2013-0002', CAST(0x0000A29300F4B870 AS DateTime), CAST(0x0000A29A00F4B870 AS DateTime), 1, 1, N'ghjhgj', 1, N'2', N'ghjhg', N'ghjgh', N'ghjhg', N'ghjghj ghj hgj hgjghjhhjghgg hgjghjjjjhgjgh ghjghjhgjg ghj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (11, N'PTW-A-B-C-2013-0001-A', CAST(0x0000A29A00000000 AS DateTime), CAST(0x0000A2A100000000 AS DateTime), 1, 1, N'ghjhgj', 1, N'2', N'ghjhg', N'ghjgh', N'ghjhg', N'ghjghj ghj hgj hgjghjhhjghgg hgjghjjjjhgjgh ghjghjhgjg ghj', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0xF5370B00 AS Date), CAST(0xFC370B00 AS Date), CAST(0xEA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'a/Attachment/signatures/318.png', N'297', NULL, N'a/Attachment/signatures/297.png', N'278', N'239', N'd/Attachment/signatures/239.png', N'239', N'', NULL, N'318', N'a/Attachment/signatures/318.png', N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, 4, 6)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (14, N'PTW-A-B-C-2013-0001-B', CAST(0x0000A2A200000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), 1, 1, N'ghjhgj', 1, N'2', N'ghjhg', N'ghjgh', N'ghjhg', N'ghjghj ghj hgj hgjghjhhjghgg hgjghjjjjhgjgh ghjghjhgjg ghj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, N'318', NULL, N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, 11, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (15, N'PTW-A-B-C-2013-0003', CAST(0x0000A29000A13970 AS DateTime), CAST(0x0000A29700A13970 AS DateTime), 1, 1, N'adasd', 1, N'asdasdas', N'asdasd', N'asdasd', N'asdasd', N'asddsad asd sadasdsadas sa sa sda', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (16, N'PTW-A-B-C-2013-0004', CAST(0x00009F7800000000 AS DateTime), CAST(0x00009F7800000000 AS DateTime), 1, 1, N'asdsad', 1, N'asdasd', N'asdasd', N'asdasd', N'asdasdsa', N'dasdsadsadsad asd sadsadasdsad asd sadadgwefwe ewrrgfhdgfh gfhgfhgfddgf gfdfjjj dghjhfgdgfdgsfsfeqsertre redfssdfvfvbgfh rsegrs', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, CAST(0xED370B00 AS Date), CAST(0xF4370B00 AS Date), CAST(0xED370B00 AS Date), NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'a/Attachment/signatures/318.png', N'297', N'', N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'243', N'', N'a/Attachment/signatures/239.png', N'318', N'a/Attachment/signatures/318.png', N'297', N'', N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'243', N'', N'a', NULL, 9)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (17, N'PTW-A-B-C-2013-0005', CAST(0x0000A29300E297D0 AS DateTime), CAST(0x0000A29A00E25180 AS DateTime), 1, 1, N'asdas', 1, N'2', N'adasdsa', N'asdsadsa', N'sadasdsadas', N'asdsadasd asd asdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'undefined', N'undefined', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, N'undefined', NULL, NULL, N'undefined', NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (18, N'PTW-A-B-C-2013-0004-A', CAST(0x0000A29A00000000 AS DateTime), CAST(0x0000A2A100000000 AS DateTime), 1, 1, N'asdsad', 1, N'asdasd', N'asdasd', N'asdasd', N'asdasdsa', N'dasdsadsadsad asd sadsadasdsad asd sadadgwefwe ewrrgfhdgfh gfhgfhgfddgf gfdfjjj dghjhfgdgfdgsfsfeqsertre redfssdfvfvbgfh rsegrs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', N'', NULL, N'278', N'239', NULL, N'243', N'', NULL, N'318', NULL, N'297', N'', NULL, N'278', N'239', NULL, N'243', N'', NULL, 16, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (19, N'PTW-A-B-C-2013-0006', CAST(0x0000A29300E59D40 AS DateTime), CAST(0x0000A29A00E59D40 AS DateTime), 1, 1, N'asdfafs', 1, N'dsfafsdf', N'asdfdsaf', N'sadfadsf', N'asdfdsaf', N'asdfdfsasdf sadf safdsa fdsaf dsfdsafdsafdsa fds dsfdsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (20, N'PTW-A-B-C-2013-0007', CAST(0x0000A29300E8A2B0 AS DateTime), CAST(0x0000A29A00E8A2B0 AS DateTime), 1, 1, N'asdasd', 1, N'asdadasd', N'asdsad', N'asdasd', N'asdasdasd', N'asdasd asd sadsadsadsadsad asdas', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0xEE370B00 AS Date), CAST(0xF5370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'a/Attachment/signatures/318.png', N'297', N'', N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'244', N'', N'a/Attachment/signatures/244.png', N'318', NULL, N'297', N'', NULL, N'278', N'239', NULL, N'244', N'', NULL, NULL, 4)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (21, N'PTW-A-B-C-2013-0008', CAST(0x0000A29300F5D1B0 AS DateTime), CAST(0x0000A29A00F5D1B0 AS DateTime), 1, 1, N'asdsad', 1, N'1', N'asdsada', N'asdasd', N'asdsada', N'asdsadd ad asdasd sadasd sadsa sadsadsad sadasd a', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, CAST(0xEE370B00 AS Date), CAST(0xF5370B00 AS Date), CAST(0xF1370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'239', N'', N'a/Attachment/signatures/239.png', N'318', N'a/Attachment/signatures/318.png', N'297', N'', NULL, N'278', N'239', NULL, N'239', N'', NULL, NULL, 6)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1018, N'PTW-A-B-C-2013-0009', CAST(0x0000A29900000000 AS DateTime), CAST(0x0000A2A000000000 AS DateTime), 1, 1, N'asd', 1, N'2', N'asd', N'asd', N'asd', N'ads', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1019, N'PTW-A-B-C-2013-0010', CAST(0x0000A29900000000 AS DateTime), CAST(0x0000A2A000000000 AS DateTime), 1, 1, N'3', 1, N'Warehouse 1', N'Warehouse 1', N'62', N'10000123', N'pipe installation', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, CAST(0xF4370B00 AS Date), CAST(0xFB370B00 AS Date), CAST(0xF9370B00 AS Date), NULL, NULL, NULL, NULL, NULL, 1005, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'239', N'ahttp://localhost:8087', N'239', N'', N'a', N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'239', NULL, N'239', N'', NULL, NULL, 6)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1020, N'PTW-A-B-C-2013-0010-A', CAST(0x0000A2A100000000 AS DateTime), CAST(0x0000A2A800000000 AS DateTime), 1, 1, N'3', 1, N'Warehouse 1', N'Warehouse 1', N'62', N'10000123', N'pipe installation', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1006, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, N'318', NULL, N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, 1019, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1022, N'SPE-000001', CAST(0x0000A2A500000000 AS DateTime), CAST(0x0000A2AC00735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'sdfsd', N'fsdfsd', N'sdf', N'sdfsdfds', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1023, N'SPE-000002', CAST(0x0000A2A500000000 AS DateTime), CAST(0x0000A2AC00735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'asdasd', N'asdasd', N'asdsad', N'asdasdsad', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x00380B00 AS Date), CAST(0x07380B00 AS Date), CAST(0x03380B00 AS Date), NULL, NULL, NULL, NULL, NULL, 2006, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'239', N'', N'ahttp://localhost:8087/Attachment/signatures/239.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'239', N'', N'ahttp://localhost:8087/Attachment/signatures/239.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, 10)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1024, N'SPE-000002-A', CAST(0x0000A2AD00000000 AS DateTime), CAST(0x0000A2B400000000 AS DateTime), 1, 1, N'1', 5, N'2', N'asdasd', N'asdasd', N'asdsad', N'asdasdsad', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, CAST(0x08380B00 AS Date), CAST(0x0F380B00 AS Date), CAST(0x03380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'239', N'', N'ahttp://localhost:8087/Attachment/signatures/239.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'239', N'', N'ahttp://localhost:8087/Attachment/signatures/239.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', 1023, 10)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1025, N'SPE-000003', CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2AF00735B40 AS DateTime), 3, 1, N'18', 5, N'2', N'fgdg', N'jhjkhkj', N'nbnmb', N'jhhjkhjkhjhkj', NULL, 1, 1, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Spv: aksdjahsd ajsdhsjkadh adjkf kjadhsfjks ajshdfsda', NULL, CAST(0x03380B00 AS Date), CAST(0x0A380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'239', N'', N'ahttp://localhost:8087/Attachment/signatures/239.png', N'278', N'', NULL, N'318', NULL, N'297', N'', NULL, N'239', N'', NULL, N'278', N'', NULL, NULL, 4)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (2024, N'SPE-000004', CAST(0x0000A2AB00000000 AS DateTime), CAST(0x0000A2B200735B40 AS DateTime), 1, 1, N'18', 5, N'2', N'asdsa', N'adqwe', N'qewqe', N'qweqeqw', NULL, 1, 1, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Spv: ajkdfjf sjdakfhjsdfh dsjfhajsdfhjashf jshdjfkhsdkjf', NULL, CAST(0x06380B00 AS Date), CAST(0x0D380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (2025, N'SPE-000005', CAST(0x0000A2AC00000000 AS DateTime), CAST(0x0000A2B300735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'asdsad', N'asdasd', N'asdsa', N'asdasdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3007, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (3024, N'SPE-000006', CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2D600735B40 AS DateTime), 1, 1, N'1', 5, N'asdasd', N'asdasd', N'asdasd', N'asdasd', N'asdasdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (3025, N'SPE-000007', CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2D600735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'sdfds', N'sdfsf', N'sdfsdf', N'sdfds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'', NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (3026, N'SPE-000008', CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2D600735B40 AS DateTime), 1, 1, N'1', 5, N'sdfdsfdsf', N'sdfdsf', N'sdfdsf', N'sdfdsf', N'sdfsdfdsf', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x2A380B00 AS Date), CAST(0x31380B00 AS Date), CAST(0x37380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 7)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (4024, N'SPE-000009', CAST(0x0000A2DD00000000 AS DateTime), CAST(0x0000A2E400735B40 AS DateTime), 3, 1, N'6', 5, N'sdfdsfds', N'sdfdsf', N'sdfdsfd', N'sdfds', N'sdfds dsf dsfdsfds dfs dsdfgsgd gsgsdg fsdgs df dfgdsg df gs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (5024, N'SPE-000010', CAST(0x0000A2E700000000 AS DateTime), CAST(0x0000A2EE00735B40 AS DateTime), 3, 1, N'8', 5, N'2', N'jkhk', N'hjj', N'hghjg', N'ghjghj', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x42380B00 AS Date), CAST(0x49380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (5025, N'SPE-000011', CAST(0x0000A2E600000000 AS DateTime), CAST(0x0000A2ED00735B40 AS DateTime), 3, 1, N'1', 5, N'2', N'sdfdsfs', N'sdfdsf', N'sdfsdfds', N'dfdsfds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 0, NULL, NULL, NULL, NULL, 3, 0, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (6024, N'SPE-000012', CAST(0x0000A2EA00000000 AS DateTime), CAST(0x0000A2F100735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'sdfs fdsfdsf', N'dsfdsfds fds fdsf', N'sdfdsfsdf', N'dsf dsfds fdsfdsf ds', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (6025, N'SPE-000013', CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2F200735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'sdfds', N'fsdfdsf', N'sdfdsf', N'sdfdsfds', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x46380B00 AS Date), CAST(0x4D380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (6026, N'SPE-000014', CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2F300735B40 AS DateTime), 1, 1, N'15', 5, N'asdasdasd ', N'asdas das', N'asdasdas', N'asdasdas', N'asdasd sdasdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (6027, N'SPE-000015', CAST(0x0000A2F100000000 AS DateTime), CAST(0x0000A2F800735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'asdasd', N'asdads', N'asd das', N'asdasdas asdsadas', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4C380B00 AS Date), CAST(0x53380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1008, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7026, N'SPE-000016', CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A2FA00735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'sdfdsfds', N'dsf df', N'sdfdsf sdf', N'sdf dsf', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4E380B00 AS Date), CAST(0x55380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1003, 2, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7027, N'SPE-000017', CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A2FA00735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'kjhkj jkhkjhkj', N'kjh k', N'hjkhkj ', N'kjhkj jh kjhkjh kjjh jhkjhkj', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1004, 1, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 1)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7028, N'SPE-000018', CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A2FA00735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'asdasdas', N'asdsa ad', N'asd asd', N'asd asdasdasd asd', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4E380B00 AS Date), CAST(0x55380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1005, 1, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7029, N'SPE-000019', CAST(0x0000A2F400000000 AS DateTime), CAST(0x0000A2FB00735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'qweqwe', N'qweqwe', N'qweqwe', N'qweqwe qweqw eqweqeqweqw eqweqwq qewasdas dasdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7030, N'SPE-000020', CAST(0x0000A2F400000000 AS DateTime), CAST(0x0000A2FB00735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'sdfdsf', N'asdfd asfsfs', N'dsfds fdsf', N'dasfdsf sdfdsf dasf dsafa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7031, N'SPE-000021', CAST(0x0000A2F400000000 AS DateTime), CAST(0x0000A2FB00735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'jkhjkhjk', N'hjkhjkhjk', N'hjkhjkhjkhj', N'hjkhjkhj hkjhk  hjkh', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4F380B00 AS Date), CAST(0x56380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7032, N'SPE-000022', CAST(0x0000A2F900000000 AS DateTime), CAST(0x0000A30000735B40 AS DateTime), 1, 1, N'39', 5, N'sdf sdfs', N'sdfdsfdsf', N'sdfdf', N'dsfdsf dsfdsfds', N'sdf dsfdsfdsfdsfds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7033, N'SPE-000023', CAST(0x0000A2F900000000 AS DateTime), CAST(0x0000A30000735B40 AS DateTime), 1, 1, N'14', 5, N'qweqweqw', N'qweqwe', N'qweqwe', N'qweqwe qweqw', N' qweqweqwe qw', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x54380B00 AS Date), CAST(0x59380B00 AS Date), NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7034, N'SPE-000024', CAST(0x0000A2FB00000000 AS DateTime), CAST(0x0000A30200735B40 AS DateTime), 1, 1, N'13', 5, N'dasf dfdsafdasf', N'dasfasdf dsfdsa', N'sdfdsfds', N'dasfdasf', N'dasfdasf', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7035, N'SPE-000025', CAST(0x0000A30000000000 AS DateTime), CAST(0x0000A30700735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'asdfdasf', N'sdafsdf', N'dasfdsf sdfdsaf', N'dassdfdfs dasfdsfdasfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7036, N'SPE-000026', CAST(0x0000A30000000000 AS DateTime), CAST(0x0000A30700735B40 AS DateTime), 1, 1, N'1', 5, N'dsfdasfs', N'asdfdas', N'sadfa', N'sdfdsa', N'adsfds fdsf dsfa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7037, N'SPE-000027', CAST(0x0000A30000000000 AS DateTime), CAST(0x0000A30700735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'asdasd', N'asdasda', N'asdas', N'asdasd asdas', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x5B380B00 AS Date), CAST(0x62380B00 AS Date), NULL, 1, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7038, N'SPE-000028', CAST(0x0000A30100000000 AS DateTime), CAST(0x0000A30800735B40 AS DateTime), 1, 1, N'18', 5, N'2', N'adsfdas', N'dasfdasf', N'dasfadsf', N'sdafads fdsaf dsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7039, N'SPE-000029', CAST(0x0000A30200000000 AS DateTime), CAST(0x0000A30900735B40 AS DateTime), 1, 1, N'16', 5, N'2', N'asdasd', N'asdasd', N'asdasd', N'asd adassadasdas', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'asdas asdasd', NULL, CAST(0x5D380B00 AS Date), CAST(0x64380B00 AS Date), NULL, 1, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
GO
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_need], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (7040, N'SPE-000030', CAST(0x0000A30600000000 AS DateTime), CAST(0x0000A30D00735B40 AS DateTime), 1, 1, N'8', 5, N'2', N'asdfdsa', N'asdfdasf', N'asdfdasf', N'dsfsadfdsf dsaf das', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x61380B00 AS Date), CAST(0x68380B00 AS Date), NULL, 1, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
GO
SET IDENTITY_INSERT [dbo].[permit_to_work] OFF
GO
SET IDENTITY_INSERT [dbo].[radiography] ON 

GO
INSERT [dbo].[radiography] ([id], [id_ptw], [rg_no], [purpose], [radiographer_2], [radiographer_1], [radiographer_2_license_number], [radiographer_1_license_number], [radiation_protection_officer], [radiation_protection_officer_license_number], [potential_area_affected], [total_crew], [supervisor], [radiographic_source], [estimate_time_start], [estimate_time_end], [pre_screening_spv], [pre_screening_rad], [pre_screening_fo], [operator_signature], [operator_delegate], [radiographer_2_signature], [radiographer_2_delegate], [supervisor_signature], [supervisor_delegate], [safety_officer], [safety_officer_signature], [safety_officer_delegate], [facility_owner], [facility_owner_signature], [facility_owner_delegate], [pre_remark], [can_screening_spv], [can_screening_rad], [can_screening_fo], [can_operator_signature], [can_operator_delegate], [can_radiographer_2_signature], [can_radiographer_2_delegate], [can_supervisor_signature], [can_supervisor_delegate], [can_safety_officer_signature], [can_safety_officer_delegate], [can_fo_signature], [can_fo_delegate], [status], [operator], [work_location], [can_remark]) VALUES (1, 4024, N'RT-SPE-000009', N'sdfds dsf dsfdsfds dfs dsdfgsgd gsgsdg fsdgs df dfgdsg df gs', N'2', N'1', N'6554 456', N'948568 4567', N'1', NULL, N'asdasdasdas', N'1', N'asdasdas', N'sdfdsf dsfdsfsd', CAST(0x0000A2FA00000000 AS DateTime), CAST(0x0000A2FF00000000 AS DateTime), N'#############', N'#############', N'#############', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', NULL, NULL, NULL, N'##', N'##', N'##', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'318', N'asdasdasdasd', NULL)
GO
INSERT [dbo].[radiography] ([id], [id_ptw], [rg_no], [purpose], [radiographer_2], [radiographer_1], [radiographer_2_license_number], [radiographer_1_license_number], [radiation_protection_officer], [radiation_protection_officer_license_number], [potential_area_affected], [total_crew], [supervisor], [radiographic_source], [estimate_time_start], [estimate_time_end], [pre_screening_spv], [pre_screening_rad], [pre_screening_fo], [operator_signature], [operator_delegate], [radiographer_2_signature], [radiographer_2_delegate], [supervisor_signature], [supervisor_delegate], [safety_officer], [safety_officer_signature], [safety_officer_delegate], [facility_owner], [facility_owner_signature], [facility_owner_delegate], [pre_remark], [can_screening_spv], [can_screening_rad], [can_screening_fo], [can_operator_signature], [can_operator_delegate], [can_radiographer_2_signature], [can_radiographer_2_delegate], [can_supervisor_signature], [can_supervisor_delegate], [can_safety_officer_signature], [can_safety_officer_delegate], [can_fo_signature], [can_fo_delegate], [status], [operator], [work_location], [can_remark]) VALUES (2, 5024, N'RT-SPE-000010', N'ghjghj', N'2', N'1', N'6554 456', N'948568 4567', N'1', N'835 837589', N'dfgdfsgdfsgcvbxbv ', N'8', N'297', N'2', CAST(0x0000A2E700000000 AS DateTime), CAST(0x0000A2EE00000000 AS DateTime), N'1#1#2#1#1#1#1#1#1#1#1#2#1#1', N'1#1#2#1#1#1#1#1#1#1#1#1#1#1', N'1#1#2#1#1#1#1#1#1#1#1#1#1#1', N'ahttp://localhost:8087', NULL, N'ahttp://localhost:8087/Attachment/signatures/298.png', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, N'278', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, N'278', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, N'Spv: ajsdfkljasdf dsjafkldasjfkl dfadjsflas
Rad: hasdfkjh sdafkjhdasfkjdaskjf sdafjhdskjf
FO: jashxcvj sadjfkhdsf djshafksd', N'1#1#1', N'1#1#1', N'1#1#1', N'ahttp://localhost:8087', NULL, N'ahttp://localhost:8087/Attachment/signatures/298.png', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, 18, N'318', N'sdfds fdsfdsfdsg', NULL)
GO
INSERT [dbo].[radiography] ([id], [id_ptw], [rg_no], [purpose], [radiographer_2], [radiographer_1], [radiographer_2_license_number], [radiographer_1_license_number], [radiation_protection_officer], [radiation_protection_officer_license_number], [potential_area_affected], [total_crew], [supervisor], [radiographic_source], [estimate_time_start], [estimate_time_end], [pre_screening_spv], [pre_screening_rad], [pre_screening_fo], [operator_signature], [operator_delegate], [radiographer_2_signature], [radiographer_2_delegate], [supervisor_signature], [supervisor_delegate], [safety_officer], [safety_officer_signature], [safety_officer_delegate], [facility_owner], [facility_owner_signature], [facility_owner_delegate], [pre_remark], [can_screening_spv], [can_screening_rad], [can_screening_fo], [can_operator_signature], [can_operator_delegate], [can_radiographer_2_signature], [can_radiographer_2_delegate], [can_supervisor_signature], [can_supervisor_delegate], [can_safety_officer_signature], [can_safety_officer_delegate], [can_fo_signature], [can_fo_delegate], [status], [operator], [work_location], [can_remark]) VALUES (3, 5025, N'RT-SPE-000011', N'dfdsfds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'297', NULL, NULL, NULL, N'#############', N'#############', N'#############', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', NULL, NULL, NULL, N'##', N'##', N'##', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, N'318', NULL, NULL)
GO
INSERT [dbo].[radiography] ([id], [id_ptw], [rg_no], [purpose], [radiographer_2], [radiographer_1], [radiographer_2_license_number], [radiographer_1_license_number], [radiation_protection_officer], [radiation_protection_officer_license_number], [potential_area_affected], [total_crew], [supervisor], [radiographic_source], [estimate_time_start], [estimate_time_end], [pre_screening_spv], [pre_screening_rad], [pre_screening_fo], [operator_signature], [operator_delegate], [radiographer_2_signature], [radiographer_2_delegate], [supervisor_signature], [supervisor_delegate], [safety_officer], [safety_officer_signature], [safety_officer_delegate], [facility_owner], [facility_owner_signature], [facility_owner_delegate], [pre_remark], [can_screening_spv], [can_screening_rad], [can_screening_fo], [can_operator_signature], [can_operator_delegate], [can_radiographer_2_signature], [can_radiographer_2_delegate], [can_supervisor_signature], [can_supervisor_delegate], [can_safety_officer_signature], [can_safety_officer_delegate], [can_fo_signature], [can_fo_delegate], [status], [operator], [work_location], [can_remark]) VALUES (1002, 6024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'##', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', NULL, NULL, NULL, NULL, NULL, N'##', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[radiography] ([id], [id_ptw], [rg_no], [purpose], [radiographer_2], [radiographer_1], [radiographer_2_license_number], [radiographer_1_license_number], [radiation_protection_officer], [radiation_protection_officer_license_number], [potential_area_affected], [total_crew], [supervisor], [radiographic_source], [estimate_time_start], [estimate_time_end], [pre_screening_spv], [pre_screening_rad], [pre_screening_fo], [operator_signature], [operator_delegate], [radiographer_2_signature], [radiographer_2_delegate], [supervisor_signature], [supervisor_delegate], [safety_officer], [safety_officer_signature], [safety_officer_delegate], [facility_owner], [facility_owner_signature], [facility_owner_delegate], [pre_remark], [can_screening_spv], [can_screening_rad], [can_screening_fo], [can_operator_signature], [can_operator_delegate], [can_radiographer_2_signature], [can_radiographer_2_delegate], [can_supervisor_signature], [can_supervisor_delegate], [can_safety_officer_signature], [can_safety_officer_delegate], [can_fo_signature], [can_fo_delegate], [status], [operator], [work_location], [can_remark]) VALUES (1003, 7026, N'RT-SPE-000016', N'sdf dsf', N'2', N'1', N'6554 456', N'948568 4567', N'1', N'835 837589', N'gyghjg   gghjghj', N'15', N'297', N'2', CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A2F900000000 AS DateTime), N'1#1#1#1#1#1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#2#1#1#1#0#1', N'ahttp://localhost:8087', NULL, N'ahttp://localhost:8087/Attachment/signatures/298.png', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, N'278', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, N'278', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, N'FO: hsakjdhs akdshfkjdhasf daskjfhdsa', N'1#1#1', N'1#1#1', N'1#1#1', N'ahttp://localhost:8087', NULL, N'ahttp://localhost:8087/Attachment/signatures/298.png', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, 12, N'318', N'ghhjg hghjghjghj', NULL)
GO
SET IDENTITY_INSERT [dbo].[radiography] OFF
GO
SET IDENTITY_INSERT [dbo].[working_height] ON 

GO
INSERT [dbo].[working_height] ([id], [id_ptw], [wh_no], [description], [work_location], [requestor], [from], [until], [total_crew], [access], [workbox_access], [ladder_access], [elevated_access], [scaffolding], [load_capacity], [no_person], [erector], [erector_certificate_no], [erector_valid_date], [scaffold_access], [inspector], [inspector_certify_no], [utilization_valid_date], [inspector_signature], [inspector_sign_date], [mandatory_fall_prevention], [fall_prevention_assess], [pre_screening_req], [pre_screening_fo], [requestor_signature], [requestor_delegate], [requestor_signature_date], [supervisor], [supervisor_signature], [supervisor_delegate], [supervisor_signature_date], [facility_owner], [facility_owner_signature], [facility_owner_delegate], [facility_owner_signature_date], [can_screening_req], [can_screening_fo], [can_requestor_signature], [can_requestor_delegate], [can_requestor_signature_date], [can_supervisor_signature], [can_supervisor_delegate], [can_supervisor_signature_date], [can_facility_owner_signature], [can_facility_owner_delegate], [can_facility_owner_signature_date], [status], [pre_screening_note]) VALUES (1, 6024, N'WH-SPE-000012', N'dsf dsfds fdsfdsf ds', N'skjhfdkjsfsd sdjfhsdhkf', N'318', CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2F200000000 AS DateTime), 14, 1, N'1#1#1#0', N'###', N'##', NULL, NULL, NULL, NULL, NULL, NULL, N'##', NULL, NULL, NULL, NULL, NULL, N'2', N'1#1#1', N'1#1#1', N'1#1#1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', NULL, NULL, NULL, N'##', N'##', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL)
GO
INSERT [dbo].[working_height] ([id], [id_ptw], [wh_no], [description], [work_location], [requestor], [from], [until], [total_crew], [access], [workbox_access], [ladder_access], [elevated_access], [scaffolding], [load_capacity], [no_person], [erector], [erector_certificate_no], [erector_valid_date], [scaffold_access], [inspector], [inspector_certify_no], [utilization_valid_date], [inspector_signature], [inspector_sign_date], [mandatory_fall_prevention], [fall_prevention_assess], [pre_screening_req], [pre_screening_fo], [requestor_signature], [requestor_delegate], [requestor_signature_date], [supervisor], [supervisor_signature], [supervisor_delegate], [supervisor_signature_date], [facility_owner], [facility_owner_signature], [facility_owner_delegate], [facility_owner_signature_date], [can_screening_req], [can_screening_fo], [can_requestor_signature], [can_requestor_delegate], [can_requestor_signature_date], [can_supervisor_signature], [can_supervisor_delegate], [can_supervisor_signature_date], [can_facility_owner_signature], [can_facility_owner_delegate], [can_facility_owner_signature_date], [status], [pre_screening_note]) VALUES (3, 6025, N'WH-SPE-000013', N'sdfdsfds', N'asdsadas das sad', N'318', CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2F200000000 AS DateTime), 10, 4, N'###', N'###', N'##', 2, N'12', N'12', NULL, NULL, NULL, N'0#1#0', 1, N'34535 34345', CAST(0x0000A2FF00000000 AS DateTime), N'http://localhost:8087/Attachment/signatures/298.png', CAST(0x0000A2EB011E5015 AS DateTime), N'1', N'1#1#1', N'1#1#1', N'1#1#1', N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, CAST(0x0000A2EB0126FE71 AS DateTime), N'297', N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A2EB01275F95 AS DateTime), N'278', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, CAST(0x0000A2EB01279F38 AS DateTime), N'1#1#1', N'1#1#1', N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, CAST(0x0000A2EC00BE9317 AS DateTime), N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A2EC00BEB6DB AS DateTime), N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, CAST(0x0000A2EC00BF4D9B AS DateTime), 13, NULL)
GO
INSERT [dbo].[working_height] ([id], [id_ptw], [wh_no], [description], [work_location], [requestor], [from], [until], [total_crew], [access], [workbox_access], [ladder_access], [elevated_access], [scaffolding], [load_capacity], [no_person], [erector], [erector_certificate_no], [erector_valid_date], [scaffold_access], [inspector], [inspector_certify_no], [utilization_valid_date], [inspector_signature], [inspector_sign_date], [mandatory_fall_prevention], [fall_prevention_assess], [pre_screening_req], [pre_screening_fo], [requestor_signature], [requestor_delegate], [requestor_signature_date], [supervisor], [supervisor_signature], [supervisor_delegate], [supervisor_signature_date], [facility_owner], [facility_owner_signature], [facility_owner_delegate], [facility_owner_signature_date], [can_screening_req], [can_screening_fo], [can_requestor_signature], [can_requestor_delegate], [can_requestor_signature_date], [can_supervisor_signature], [can_supervisor_delegate], [can_supervisor_signature_date], [can_facility_owner_signature], [can_facility_owner_delegate], [can_facility_owner_signature_date], [status], [pre_screening_note]) VALUES (4, 6026, N'WH-SPE-000014', N'asdasd sdasdas', N'asdasd asdas', N'318', CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), 12, 4, N'###', N'###', N'##', 1, N'12', N'12', 1, N'73458 384', CAST(0x0000A37900000000 AS DateTime), N'1#0#0', NULL, NULL, NULL, NULL, NULL, N'1', N'1#1#1', N'1#1#1', N'##', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'278', NULL, NULL, NULL, N'##', N'##', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL)
GO
INSERT [dbo].[working_height] ([id], [id_ptw], [wh_no], [description], [work_location], [requestor], [from], [until], [total_crew], [access], [workbox_access], [ladder_access], [elevated_access], [scaffolding], [load_capacity], [no_person], [erector], [erector_certificate_no], [erector_valid_date], [scaffold_access], [inspector], [inspector_certify_no], [utilization_valid_date], [inspector_signature], [inspector_sign_date], [mandatory_fall_prevention], [fall_prevention_assess], [pre_screening_req], [pre_screening_fo], [requestor_signature], [requestor_delegate], [requestor_signature_date], [supervisor], [supervisor_signature], [supervisor_delegate], [supervisor_signature_date], [facility_owner], [facility_owner_signature], [facility_owner_delegate], [facility_owner_signature_date], [can_screening_req], [can_screening_fo], [can_requestor_signature], [can_requestor_delegate], [can_requestor_signature_date], [can_supervisor_signature], [can_supervisor_delegate], [can_supervisor_signature_date], [can_facility_owner_signature], [can_facility_owner_delegate], [can_facility_owner_signature_date], [status], [pre_screening_note]) VALUES (1004, 7027, N'WH-SPE-000017', N'kjhkj jh kjhkjh kjjh jhkjhkj', N'asd asdsdasd', N'318', CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A2F900000000 AS DateTime), 1, 3, N'###', N'###', N'1#1#1', NULL, NULL, NULL, NULL, NULL, NULL, N'##', NULL, NULL, NULL, NULL, NULL, N'1', N'1#1#1', N'1#1#1', N'0#0#0', N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, CAST(0x0000A2F3010A0969 AS DateTime), N'297', N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A2F30112EC51 AS DateTime), N'278', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, CAST(0x0000A2F301139DF4 AS DateTime), N'##', N'##', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL)
GO
INSERT [dbo].[working_height] ([id], [id_ptw], [wh_no], [description], [work_location], [requestor], [from], [until], [total_crew], [access], [workbox_access], [ladder_access], [elevated_access], [scaffolding], [load_capacity], [no_person], [erector], [erector_certificate_no], [erector_valid_date], [scaffold_access], [inspector], [inspector_certify_no], [utilization_valid_date], [inspector_signature], [inspector_sign_date], [mandatory_fall_prevention], [fall_prevention_assess], [pre_screening_req], [pre_screening_fo], [requestor_signature], [requestor_delegate], [requestor_signature_date], [supervisor], [supervisor_signature], [supervisor_delegate], [supervisor_signature_date], [facility_owner], [facility_owner_signature], [facility_owner_delegate], [facility_owner_signature_date], [can_screening_req], [can_screening_fo], [can_requestor_signature], [can_requestor_delegate], [can_requestor_signature_date], [can_supervisor_signature], [can_supervisor_delegate], [can_supervisor_signature_date], [can_facility_owner_signature], [can_facility_owner_delegate], [can_facility_owner_signature_date], [status], [pre_screening_note]) VALUES (1005, 7028, N'WH-SPE-000018', N'asd asdasdasd asd', N'dsfds fs', N'318', CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A2F800000000 AS DateTime), 1, 4, N'###', N'###', N'##', 1, N'12', N'12', 1, N'73458 384', CAST(0x0000A37900000000 AS DateTime), N'1#0#0', NULL, NULL, NULL, NULL, NULL, N'sdfsdf sdfdsfds', N'1#1#1', N'1#1#1', N'1#1#1', N'ahttp://localhost:8087', NULL, CAST(0x0000A2F301178F1B AS DateTime), N'297', N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A2F30117B016 AS DateTime), N'278', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, CAST(0x0000A2F30117D9D0 AS DateTime), N'1#1#1', N'1#1#1', N'ahttp://localhost:8087', NULL, CAST(0x0000A2F30120BABD AS DateTime), N'ahttp://localhost:8087/Attachment/signatures/297.png', NULL, CAST(0x0000A2F30121FC7A AS DateTime), N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, CAST(0x0000A2F3012244E0 AS DateTime), 9, NULL)
GO
SET IDENTITY_INSERT [dbo].[working_height] OFF
GO
ALTER TABLE [dbo].[confined_space]  WITH CHECK ADD  CONSTRAINT [FK_confined_space_permit_to_work] FOREIGN KEY([id_ptw])
REFERENCES [dbo].[permit_to_work] ([id])
GO
ALTER TABLE [dbo].[confined_space] CHECK CONSTRAINT [FK_confined_space_permit_to_work]
GO
ALTER TABLE [dbo].[excavation]  WITH CHECK ADD  CONSTRAINT [FK_excavation_permit_to_work] FOREIGN KEY([id_ptw])
REFERENCES [dbo].[permit_to_work] ([id])
GO
ALTER TABLE [dbo].[excavation] CHECK CONSTRAINT [FK_excavation_permit_to_work]
GO
ALTER TABLE [dbo].[fire_impairment]  WITH CHECK ADD  CONSTRAINT [FK_fire_impairment_permit_to_work] FOREIGN KEY([id_ptw])
REFERENCES [dbo].[permit_to_work] ([id])
GO
ALTER TABLE [dbo].[fire_impairment] CHECK CONSTRAINT [FK_fire_impairment_permit_to_work]
GO
ALTER TABLE [dbo].[hira_document]  WITH CHECK ADD  CONSTRAINT [FK_hira_document_permit_to_work] FOREIGN KEY([id_ptw])
REFERENCES [dbo].[permit_to_work] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hira_document] CHECK CONSTRAINT [FK_hira_document_permit_to_work]
GO
ALTER TABLE [dbo].[hot_work]  WITH CHECK ADD  CONSTRAINT [FK_hot_work_permit_to_work] FOREIGN KEY([id_ptw])
REFERENCES [dbo].[permit_to_work] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hot_work] CHECK CONSTRAINT [FK_hot_work_permit_to_work]
GO
ALTER TABLE [dbo].[loto_glarf]  WITH CHECK ADD  CONSTRAINT [FK_loto_glarf_loto_permit] FOREIGN KEY([id_loto_permit])
REFERENCES [dbo].[loto_permit] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[loto_glarf] CHECK CONSTRAINT [FK_loto_glarf_loto_permit]
GO
ALTER TABLE [dbo].[loto_glarf_user]  WITH CHECK ADD  CONSTRAINT [FK_loto_glarf_user_loto_glarf] FOREIGN KEY([id_glarf])
REFERENCES [dbo].[loto_glarf] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[loto_glarf_user] CHECK CONSTRAINT [FK_loto_glarf_user_loto_glarf]
GO
ALTER TABLE [dbo].[loto_point]  WITH CHECK ADD  CONSTRAINT [FK_loto_point_loto_permit] FOREIGN KEY([id_loto])
REFERENCES [dbo].[loto_permit] ([id])
GO
ALTER TABLE [dbo].[loto_point] CHECK CONSTRAINT [FK_loto_point_loto_permit]
GO
ALTER TABLE [dbo].[permit_to_work]  WITH CHECK ADD  CONSTRAINT [FK_permit_to_work_loto_permit] FOREIGN KEY([loto_id])
REFERENCES [dbo].[loto_glarf] ([id])
GO
ALTER TABLE [dbo].[permit_to_work] CHECK CONSTRAINT [FK_permit_to_work_loto_permit]
GO
ALTER TABLE [dbo].[permit_to_work]  WITH CHECK ADD  CONSTRAINT [FK_permit_to_work_mst_department] FOREIGN KEY([dept_requestor])
REFERENCES [dbo].[mst_department] ([id])
GO
ALTER TABLE [dbo].[permit_to_work] CHECK CONSTRAINT [FK_permit_to_work_mst_department]
GO
ALTER TABLE [dbo].[permit_to_work]  WITH CHECK ADD  CONSTRAINT [FK_permit_to_work_mst_ptw_holder_no] FOREIGN KEY([requestor_ptw_holder_no])
REFERENCES [dbo].[mst_ptw_holder_no] ([id])
GO
ALTER TABLE [dbo].[permit_to_work] CHECK CONSTRAINT [FK_permit_to_work_mst_ptw_holder_no]
GO
ALTER TABLE [dbo].[permit_to_work]  WITH CHECK ADD  CONSTRAINT [FK_permit_to_work_mst_section] FOREIGN KEY([section])
REFERENCES [dbo].[mst_section] ([id])
GO
ALTER TABLE [dbo].[permit_to_work] CHECK CONSTRAINT [FK_permit_to_work_mst_section]
GO
ALTER TABLE [dbo].[permit_to_work]  WITH CHECK ADD  CONSTRAINT [FK_permit_to_work_permit_to_work] FOREIGN KEY([id_parent_ptw])
REFERENCES [dbo].[permit_to_work] ([id])
GO
ALTER TABLE [dbo].[permit_to_work] CHECK CONSTRAINT [FK_permit_to_work_permit_to_work]
GO
ALTER TABLE [dbo].[radiography]  WITH CHECK ADD  CONSTRAINT [FK_radiography_permit_to_work] FOREIGN KEY([id_ptw])
REFERENCES [dbo].[permit_to_work] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[radiography] CHECK CONSTRAINT [FK_radiography_permit_to_work]
GO
ALTER TABLE [dbo].[working_height]  WITH CHECK ADD  CONSTRAINT [FK_working_height_permit_to_work] FOREIGN KEY([id_ptw])
REFERENCES [dbo].[permit_to_work] ([id])
GO
ALTER TABLE [dbo].[working_height] CHECK CONSTRAINT [FK_working_height_permit_to_work]
GO
USE [master]
GO
ALTER DATABASE [star_energy_ptw] SET  READ_WRITE 
GO
