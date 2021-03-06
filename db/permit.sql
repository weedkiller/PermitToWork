USE [star_energy_ptw]
GO
/****** Object:  Table [dbo].[hira_document]    Script Date: 12/18/2013 2:51:46 PM ******/
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
/****** Object:  Table [dbo].[hot_work]    Script Date: 12/18/2013 2:51:46 PM ******/
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
	[ext_gas_tester_approve_1] [varchar](50) NULL,
	[ext_work_leader_1] [varchar](50) NULL,
	[ext_work_leader_approve_1] [varchar](50) NULL,
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
	[ext_gas_tester_approve_2] [varchar](50) NULL,
	[ext_work_leader_2] [varchar](50) NULL,
	[ext_work_leader_approve_2] [varchar](50) NULL,
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
	[ext_gas_tester_approve_3] [varchar](50) NULL,
	[ext_work_leader_3] [varchar](50) NULL,
	[ext_work_leader_approve_3] [varchar](50) NULL,
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
	[ext_gas_tester_approve_4] [varchar](50) NULL,
	[ext_work_leader_4] [varchar](50) NULL,
	[ext_work_leader_approve_4] [varchar](50) NULL,
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
	[ext_gas_tester_approve_5] [varchar](50) NULL,
	[ext_work_leader_5] [varchar](50) NULL,
	[ext_work_leader_approve_5] [varchar](50) NULL,
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
	[ext_gas_tester_approve_6] [varchar](50) NULL,
	[ext_work_leader_6] [varchar](50) NULL,
	[ext_work_leader_approve_6] [varchar](50) NULL,
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
	[ext_gas_tester_approve_7] [varchar](50) NULL,
	[ext_work_leader_7] [varchar](50) NULL,
	[ext_work_leader_approve_7] [varchar](50) NULL,
	[ext_fo_7] [varchar](50) NULL,
	[ext_fo_delegate_7] [varchar](50) NULL,
	[ext_fo_approve_7] [varchar](255) NULL,
	[ext_new_validity_7] [datetime] NULL,
	[ext_remark_7] [text] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_hot_work] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[permit_log]    Script Date: 12/18/2013 2:51:46 PM ******/
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
/****** Object:  Table [dbo].[permit_to_work]    Script Date: 12/18/2013 2:51:46 PM ******/
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
	[dept_requestor] [varchar](255) NULL,
	[section] [varchar](50) NULL,
	[total_crew] [varchar](50) NULL,
	[requestor_ptw_holder_no] [varchar](255) NULL,
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
	[acc_assessor_approve] [varchar](50) NULL,
	[acc_fo] [varchar](50) NULL,
	[acc_fo_delegate] [varchar](50) NULL,
	[acc_fo_approve] [varchar](50) NULL,
	[can_ptw_requestor] [varchar](50) NULL,
	[can_ptw_requestor_approve] [varchar](255) NULL,
	[can_supervisor] [varchar](50) NULL,
	[can_supervisor_delegate] [varchar](50) NULL,
	[can_supervisor_approve] [varchar](255) NULL,
	[can_assessor] [varchar](50) NULL,
	[can_assessor_delegate] [varchar](50) NULL,
	[can_assessor_approve] [varchar](50) NULL,
	[can_fo] [varchar](50) NULL,
	[can_fo_delegate] [varchar](50) NULL,
	[can_fo_approve] [varchar](50) NULL,
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
ALTER TABLE [dbo].[permit_to_work]  WITH CHECK ADD  CONSTRAINT [FK_permit_to_work_permit_to_work] FOREIGN KEY([id_parent_ptw])
REFERENCES [dbo].[permit_to_work] ([id])
GO
ALTER TABLE [dbo].[permit_to_work] CHECK CONSTRAINT [FK_permit_to_work_permit_to_work]
GO
USE [master]
GO
ALTER DATABASE [star_energy_ptw] SET  READ_WRITE 
GO
