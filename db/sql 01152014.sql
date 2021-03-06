USE [master]
GO
/****** Object:  Database [star_energy_ptw]    Script Date: 1/15/2014 11:20:16 AM ******/
CREATE DATABASE [star_energy_ptw] ON  PRIMARY 
( NAME = N'star_energy_ptw', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\star_energy_ptw.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'star_energy_ptw_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\star_energy_ptw_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [star_energy_ptw].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [star_energy_ptw] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [star_energy_ptw] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [star_energy_ptw] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [star_energy_ptw] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [star_energy_ptw] SET ARITHABORT OFF 
GO
ALTER DATABASE [star_energy_ptw] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [star_energy_ptw] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [star_energy_ptw] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [star_energy_ptw] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [star_energy_ptw] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [star_energy_ptw] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [star_energy_ptw] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [star_energy_ptw] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [star_energy_ptw] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [star_energy_ptw] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [star_energy_ptw] SET  DISABLE_BROKER 
GO
ALTER DATABASE [star_energy_ptw] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [star_energy_ptw] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [star_energy_ptw] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [star_energy_ptw] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [star_energy_ptw] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [star_energy_ptw] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [star_energy_ptw] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [star_energy_ptw] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [star_energy_ptw] SET  MULTI_USER 
GO
ALTER DATABASE [star_energy_ptw] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [star_energy_ptw] SET DB_CHAINING OFF 
GO
USE [star_energy_ptw]
GO
/****** Object:  Table [dbo].[hira_document]    Script Date: 1/15/2014 11:20:16 AM ******/
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
/****** Object:  Table [dbo].[hot_work]    Script Date: 1/15/2014 11:20:16 AM ******/
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
	[random_pin] [varchar](4) NULL,
 CONSTRAINT [PK_hot_work] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_assessor]    Script Date: 1/15/2014 11:20:16 AM ******/
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
/****** Object:  Table [dbo].[mst_department]    Script Date: 1/15/2014 11:20:16 AM ******/
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
/****** Object:  Table [dbo].[mst_facility_owner]    Script Date: 1/15/2014 11:20:16 AM ******/
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
/****** Object:  Table [dbo].[mst_ptw_holder_no]    Script Date: 1/15/2014 11:20:16 AM ******/
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
/****** Object:  Table [dbo].[mst_section]    Script Date: 1/15/2014 11:20:16 AM ******/
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
/****** Object:  Table [dbo].[permit_log]    Script Date: 1/15/2014 11:20:16 AM ******/
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
/****** Object:  Table [dbo].[permit_to_work]    Script Date: 1/15/2014 11:20:16 AM ******/
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
SET IDENTITY_INSERT [dbo].[hira_document] ON 

INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (2, N'/Upload/Hira\info.pdf', N'info.pdf', NULL)
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (6, N'\Upload\Hira\EachCertificate.pdf', N'EachCertificate.pdf', 21)
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (7, N'\Upload\Hira\info.pdf', N'info.pdf', 16)
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (8, N'\Upload\Hira\P2L9FY.pdf', N'P2L9FY.pdf', 17)
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (9, N'\Upload\Hira\max232.pdf', N'max232.pdf', 19)
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (10, N'\Upload\Hira\Project Cost Estimate.pdf', N'Project Cost Estimate.pdf', 20)
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (11, N'\Upload\Hira\EachCertificate.pdf', N'EachCertificate.pdf', 21)
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (1009, N'\Upload\Hira\EachCertificate.pdf', N'EachCertificate.pdf', NULL)
INSERT [dbo].[hira_document] ([id], [location], [filename], [id_ptw]) VALUES (1010, N'\Upload\Hira\EachCertificate.pdf', N'EachCertificate.pdf', NULL)
SET IDENTITY_INSERT [dbo].[hira_document] OFF
SET IDENTITY_INSERT [dbo].[hot_work] ON 

INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (2, NULL, NULL, N'asddsad asd sadasdsadas sa sa sda', N'318', NULL, NULL, N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (3, N'HW-A-B-C-2013-0001', N' sadasd asda', N'asdasdsa asdsadasdsad asdasd', N'318', CAST(0x0000A29200000000 AS DateTime), CAST(0x0000A29200000000 AS DateTime), N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 16, NULL, N'4%', N'20%', N'9.9 ppm', N'21 ppm', NULL, NULL, N'a/Attachment/signatures/318.png', N'a/Attachment/signatures/297.png', N'297', N'', N'278', N'239', N'a', N'241', N'', N'a/Attachment/signatures/241.png', N'239', N'a/Attachment/signatures/239.png', NULL, N'a/Attachment/signatures/318.png', N'a/Attachment/signatures/297.png', N'297', N'', N'278', N'239', N'a', N'243', N'', N'a', CAST(0x0000A29200000000 AS DateTime), N'2', N'20', N'1', N'1', N'-', N'253', N'a', N'318', N'a/Attachment/signatures/318.png', N'244', N'', N'a/Attachment/signatures/244.png', CAST(0x0000A29300000000 AS DateTime), N'Perlu asda', CAST(0x0000A29300000000 AS DateTime), N'3', N'4', N'1', N'1', N'-', N'253', N'a', N'318', N'a/Attachment/signatures/318.png', N'244', N'', N'a/Attachment/signatures/244.png', CAST(0x0000A29400000000 AS DateTime), N'sdfdfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, NULL)
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (4, N'HW-A-B-C-2013-0002', NULL, N'asdsadasd asd asdas', N'318', NULL, NULL, N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (5, N'HW-A-B-C-2013-0003', NULL, N'asdfdfsasdf sadf safdsa fdsaf dsfdsafdsafdsa fds dsfdsa', NULL, NULL, NULL, N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (6, N'HW-A-B-C-2013-0004', N'blblbl', N'asdasd asd sadsadsadsadsad asdas', N'318', CAST(0x0000A29300000000 AS DateTime), CAST(0x0000A29400000000 AS DateTime), N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 20, NULL, N'1', N'20', N'1', N'1', NULL, NULL, N'a/Attachment/signatures/318.png', N'a/Attachment/signatures/297.png', N'297', N'', N'278', N'239', N'a', N'244', N'', N'a/Attachment/signatures/244.png', N'253', N'a', NULL, NULL, NULL, N'297', N'', N'278', N'239', NULL, NULL, NULL, NULL, CAST(0x0000A29300000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'253', NULL, N'318', NULL, N'244', N'', NULL, CAST(0x0000A29400000000 AS DateTime), N'Perlu asdsadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL)
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (1005, N'HW-A-B-C-2013-0005', N'R. Erzi Rizal', N'pipe installation', N'318', CAST(0x0000A29900000000 AS DateTime), CAST(0x0000A29A00735B40 AS DateTime), N'1#1#1#1#0#1#1#2#2', N'1#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 1019, NULL, N'0', N'21', N'0', N'0', NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'297', NULL, N'278', N'239', N'ahttp://localhost:8087', N'244', NULL, N'ahttp://localhost:8087/Attachment/signatures/244.png', N'253', N'ahttp://localhost:8087', NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', N'a', NULL, NULL, N'278', N'239', N'a', NULL, NULL, N'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, NULL)
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (1006, N'HW-A-B-C-2013-0006', NULL, N'pipe installation', N'318', NULL, NULL, N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 1020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (2006, N'HW-SPE-000002', N'278', N'asdasdsad', N'318', CAST(0x0000A2A600000000 AS DateTime), CAST(0x0000A2A700735B40 AS DateTime), N'1#1#1#1#1#1#1#1#1', N'1#1#1#1#1#1#1#1#1', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 1023, NULL, N'0', N'21.5', N'0', N'0', NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'297', N'', NULL, NULL, NULL, N'244', N'', N'ahttp://localhost:8087/Attachment/signatures/244.png', N'253', N'ahttp://localhost:8087/Attachment/signatures/244.png', NULL, NULL, NULL, N'297', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, N'1234')
INSERT [dbo].[hot_work] ([id], [hw_no], [fire_watch], [purpose], [work_leader], [validity_period_start], [validity_period_end], [screening_spv], [screening_fo], [screening_1], [screening_2], [screening_3], [screening_4], [screening_5], [screening_6], [screening_7], [id_ptw], [notes], [methane_result], [o2_result], [h2s_result], [co_result], [other_gas], [other_result], [acc_work_leader_approve], [acc_supervisor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_fire_watch], [acc_fire_watch_delegate], [acc_fire_watch_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [acc_gas_tester], [acc_gas_tester_approve], [acc_work_representative_approve], [can_work_leader_approve], [can_supervisor_approve], [can_supervisor], [can_supervisor_delegate], [can_fire_watch], [can_fire_watch_delegate], [can_fire_watch_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [ext_datetime_1], [ext_lel_1], [ext_o2_1], [ext_h2s_1], [ext_co_1], [ext_other_1], [ext_gas_tester_1], [ext_gas_tester_approve_1], [ext_work_leader_1], [ext_work_leader_approve_1], [ext_fo_1], [ext_fo_delegate_1], [ext_fo_approve_1], [ext_new_validity_1], [ext_remark_1], [ext_datetime_2], [ext_lel_2], [ext_o2_2], [ext_h2s_2], [ext_co_2], [ext_other_2], [ext_gas_tester_2], [ext_gas_tester_approve_2], [ext_work_leader_2], [ext_work_leader_approve_2], [ext_fo_2], [ext_fo_delegate_2], [ext_fo_approve_2], [ext_new_validity_2], [ext_remark_2], [ext_datetime_3], [ext_lel_3], [ext_o2_3], [ext_h2s_3], [ext_co_3], [ext_other_3], [ext_gas_tester_3], [ext_gas_tester_approve_3], [ext_work_leader_3], [ext_work_leader_approve_3], [ext_fo_3], [ext_fo_delegate_3], [ext_fo_approve_3], [ext_new_validity_3], [ext_remark_3], [ext_datetime_4], [ext_lel_4], [ext_o2_4], [ext_h2s_4], [ext_co_4], [ext_other_4], [ext_gas_tester_4], [ext_gas_tester_approve_4], [ext_work_leader_4], [ext_work_leader_approve_4], [ext_fo_4], [ext_fo_delegate_4], [ext_fo_approve_4], [ext_new_validity_4], [ext_remark_4], [ext_datetime_5], [ext_lel_5], [ext_o2_5], [ext_h2s_5], [ext_co_5], [ext_other_5], [ext_gas_tester_5], [ext_gas_tester_approve_5], [ext_work_leader_5], [ext_work_leader_approve_5], [ext_fo_5], [ext_fo_delegate_5], [ext_fo_approve_5], [ext_new_validity_5], [ext_remark_5], [ext_datetime_6], [ext_lel_6], [ext_o2_6], [ext_h2s_6], [ext_co_6], [ext_other_6], [ext_gas_tester_6], [ext_gas_tester_approve_6], [ext_work_leader_6], [ext_work_leader_approve_6], [ext_fo_6], [ext_fo_delegate_6], [ext_fo_approve_6], [ext_new_validity_6], [ext_remark_6], [ext_datetime_7], [ext_lel_7], [ext_o2_7], [ext_h2s_7], [ext_co_7], [ext_other_7], [ext_gas_tester_7], [ext_gas_tester_approve_7], [ext_work_leader_7], [ext_work_leader_approve_7], [ext_fo_7], [ext_fo_delegate_7], [ext_fo_approve_7], [ext_new_validity_7], [ext_remark_7], [status], [random_pin]) VALUES (3007, N'HW-SPE-000005', N'239', N'asdasdasd', N'318', CAST(0x0000A2AC00000000 AS DateTime), CAST(0x0000A2AD00735B40 AS DateTime), N'1#1#1#1#1#1#1#1#1', N'1#1#1#2#2#1#1#1#1', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', N'0#0#0#0#0#0#0#0#0', 2025, N'FO: jahsjdkah asdjhasjdh asjadjashdjk hsajdsadhj as', N'1', N'21', N'1', N'1', NULL, NULL, N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, N'297', N'', NULL, NULL, NULL, N'244', N'', NULL, N'253', N'ahttp://localhost:8087/Attachment/signatures/244.png', NULL, NULL, NULL, N'297', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, N'1143')
SET IDENTITY_INSERT [dbo].[hot_work] OFF
SET IDENTITY_INSERT [dbo].[mst_assessor] ON 

INSERT [dbo].[mst_assessor] ([id], [id_employee], [assessor_code]) VALUES (1, 278, N'SPE')
SET IDENTITY_INSERT [dbo].[mst_assessor] OFF
SET IDENTITY_INSERT [dbo].[mst_department] ON 

INSERT [dbo].[mst_department] ([id], [department]) VALUES (1, N'Production')
INSERT [dbo].[mst_department] ([id], [department]) VALUES (2, N'SHE')
INSERT [dbo].[mst_department] ([id], [department]) VALUES (3, N'Engineering')
INSERT [dbo].[mst_department] ([id], [department]) VALUES (6, N'Warehouse')
SET IDENTITY_INSERT [dbo].[mst_department] OFF
SET IDENTITY_INSERT [dbo].[mst_facility_owner] ON 

INSERT [dbo].[mst_facility_owner] ([id], [id_employee], [fo_code]) VALUES (2, 278, N'SPE')
SET IDENTITY_INSERT [dbo].[mst_facility_owner] OFF
SET IDENTITY_INSERT [dbo].[mst_ptw_holder_no] ON 

INSERT [dbo].[mst_ptw_holder_no] ([id], [id_employee], [ptw_holder_no], [activated_date_until]) VALUES (1, 241, N'100000123', CAST(0x00380B00 AS Date))
INSERT [dbo].[mst_ptw_holder_no] ([id], [id_employee], [ptw_holder_no], [activated_date_until]) VALUES (2, 278, N'100000124', CAST(0x6D390B00 AS Date))
INSERT [dbo].[mst_ptw_holder_no] ([id], [id_employee], [ptw_holder_no], [activated_date_until]) VALUES (4, 234, N'100000125', CAST(0x0A380B00 AS Date))
INSERT [dbo].[mst_ptw_holder_no] ([id], [id_employee], [ptw_holder_no], [activated_date_until]) VALUES (5, 318, N'100000126', CAST(0x0A380B00 AS Date))
SET IDENTITY_INSERT [dbo].[mst_ptw_holder_no] OFF
SET IDENTITY_INSERT [dbo].[mst_section] ON 

INSERT [dbo].[mst_section] ([id], [section]) VALUES (1, N'Mechanical')
SET IDENTITY_INSERT [dbo].[mst_section] OFF
SET IDENTITY_INSERT [dbo].[permit_log] ON 

INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (1, 0, CAST(0x0000A29600B55F9E AS DateTime), 278, N'Approved by Assessor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2, 0, CAST(0x0000A29600B7B84D AS DateTime), 239, N'Approved by Facility Owner', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3, 21, CAST(0x0000A29600B8F306 AS DateTime), 297, N'Cancellation approved by Supervisor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (4, 21, CAST(0x0000A29600B99EC0 AS DateTime), 278, N'Cancellation rejected by Assessor', N'terdapat kesalahan yang tidak benar adanya', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (5, 1005, CAST(0x0000A29900F1C5FE AS DateTime), 253, N'Gas Testing by Gas Tester', N'', 3)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (6, 1005, CAST(0x0000A29900F2AA11 AS DateTime), 318, N'Approved by Work Leader', N'', 3)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (7, 1005, CAST(0x0000A29900F494E3 AS DateTime), 297, N'Approved by Supervisor', N'', 3)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (8, 1005, CAST(0x0000A29900F4F926 AS DateTime), 278, N'Approved by Fire Watch', N'', 3)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (9, 1005, CAST(0x0000A29900F5CFE7 AS DateTime), 244, N'Approved by Facility Owner', N'', 3)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (10, 1019, CAST(0x0000A29900FB6F23 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (11, 1019, CAST(0x0000A29900FC2CE8 AS DateTime), 278, N'Approved by Assessor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (12, 1019, CAST(0x0000A29900FFFB4C AS DateTime), 297, N'Cancellation approved by Supervisor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (1002, 2006, CAST(0x0000A2A5011BC03B AS DateTime), 244, N'Gas Testing by Gas Tester', N'', 3)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (1003, 2006, CAST(0x0000A2A5011D5414 AS DateTime), 318, N'Approved by Work Leader', N'', 3)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (1004, 2006, CAST(0x0000A2A5011D8991 AS DateTime), 297, N'Approved by Work Leader', N'', 3)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2002, 2006, CAST(0x0000A2A800B4C8C7 AS DateTime), 297, N'Approved by Supervisor', N'', 3)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2003, 2006, CAST(0x0000A2A800B4F002 AS DateTime), 244, N'Approved by Facility Owner', N'', 3)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2004, 1023, CAST(0x0000A2A800B523AA AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2005, 1023, CAST(0x0000A2A800B5A09C AS DateTime), 297, N'Approved by Supervisor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2006, 1023, CAST(0x0000A2A800BF49F6 AS DateTime), 239, N'Approved by Assessor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2007, 1023, CAST(0x0000A2A800BF8B2D AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2008, 1023, CAST(0x0000A2A800C0CF17 AS DateTime), 239, N'Approved by Assessor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2009, 1023, CAST(0x0000A2A800C4A5F3 AS DateTime), 239, N'Approved by Assessor', N'balba;sada asdadlkajd adkasjdk asdsakjdha asdjhad jasdasd asdhjadhsa asdasdkh', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2010, 1023, CAST(0x0000A2A800C544B5 AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2011, 1024, CAST(0x0000A2A800EF29EC AS DateTime), 318, N'Approved by Permit To Work Requestor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2012, 1024, CAST(0x0000A2A800EF59EE AS DateTime), 297, N'Approved by Supervisor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2013, 1024, CAST(0x0000A2A800F282F4 AS DateTime), 239, N'Approved by Assessor', N'asd asdajdhas sajdhaskjd asdjkahd asdjksahdj haskjdhas', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2014, 1024, CAST(0x0000A2A800F2AD42 AS DateTime), 278, N'Rejected by Facility Owner', N'asad asdajd had jasdhaksh ajadha akjdhsa lasdhjsf ', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2015, 1024, CAST(0x0000A2A800F42492 AS DateTime), 239, N'Rejected by Assessor', N'dafdf sg fgfh df', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2016, 1024, CAST(0x0000A2A800F44154 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2017, 1024, CAST(0x0000A2A800F469F9 AS DateTime), 239, N'Approved by Assessor', N'asd adsadas', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2018, 1024, CAST(0x0000A2A800F5C26A AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2019, 1024, CAST(0x0000A2A800F6F195 AS DateTime), 297, N'Cancellation approved by Supervisor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2020, 1024, CAST(0x0000A2A800F7FD56 AS DateTime), 239, N'Cancellation approved by Assessor', N'asd sadadsd saddad adafssd dfgsgf fdgsdfgs', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2021, 1024, CAST(0x0000A2A800F83257 AS DateTime), 278, N'Cancellation approved by Facility Owner', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2022, 1025, CAST(0x0000A2A800FEDD31 AS DateTime), 297, N'Approved by Supervisor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2023, 1025, CAST(0x0000A2A800FF1AFA AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (2024, 1025, CAST(0x0000A2A800FF463B AS DateTime), 239, N'Approved by Assessor', N'kjakljg iehrit dfmvnmvnbsdifg jhgfjsdhgj fdsjghdsfjkgh dsfjghsfjd', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3008, 2024, CAST(0x0000A2AB00A214AB AS DateTime), 297, N'Approved by Supervisor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3009, 2024, CAST(0x0000A2AB00A3AE22 AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3010, 2024, CAST(0x0000A2AB00A3C3EF AS DateTime), 278, N'Approved by Assessor', N'asd assadasd asdsadsad adcxsdad asdasdsa', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3011, 2024, CAST(0x0000A2AB00A3CA0C AS DateTime), 278, N'Facility Owner has chosen Assessor', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3012, 2024, CAST(0x0000A2AB00A3D96E AS DateTime), 278, N'Approved by Facility Owner', N'', 0)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3013, 3007, CAST(0x0000A2AC010F0A94 AS DateTime), 244, N'Gas Testing by Gas Tester', N'', 3)
INSERT [dbo].[permit_log] ([id], [id_permit], [datetime], [user_id], [status], [comment], [permit_type]) VALUES (3014, 3007, CAST(0x0000A2AC010F4C38 AS DateTime), 318, N'Approved by Work Leader', N'', 3)
SET IDENTITY_INSERT [dbo].[permit_log] OFF
SET IDENTITY_INSERT [dbo].[permit_to_work] ON 

INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1, NULL, CAST(0x0000A28A00A5E4C0 AS DateTime), CAST(0x0000A29100A5E4C0 AS DateTime), 1, 1, NULL, 1, N'2', N'asd asd', NULL, N'asd asdas das ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (2, NULL, CAST(0x0000A28A00A8EA30 AS DateTime), CAST(0x0000A29100A8EA30 AS DateTime), 1, 1, N'12', 1, N'asd asd asd as dsa', N's ad sasda', N'asd sa', N' asdas sad', N's adsasa sda d as dsa sda dsad asd sa sa as dass', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (3, NULL, CAST(0x0000A28C009450C0 AS DateTime), CAST(0x0000A293009450C0 AS DateTime), 1, 1, N'asda', 1, N'1', N'qweqwe', N'qweqwe', N'asdsa', N'asdasdasdsa asd sadasdsadads sad asdsa asdasas sa sa sad sas ad aasa sadsadsadas sad sa
dsasa dsad  assad adsadas asdasfdsfdsa sdafsdafasdf asdf sdaf asfasfasdfds sdfsd', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, N'Spv: catatakhjkhafkjhsdkjf dhsajfhskjdfhjksdah  hsdj fhjksdh fkjsdh', NULL, CAST(0xE7370B00 AS Date), CAST(0xEE370B00 AS Date), CAST(0xEA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'a', N'297', NULL, N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'278', N'239', N'a', N'318', N'a/Attachment/signatures/318.png', N'297', NULL, N'a/Attachment/signatures/297.png', N'278', N'239', NULL, N'278', N'239', NULL, NULL, 2)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (4, N'PTW-A-B-C-2013-0001', CAST(0x0000A29300F4B870 AS DateTime), CAST(0x0000A29A00F4B870 AS DateTime), 1, 1, N'ghjhgj', 1, N'2', N'ghjhg', N'ghjgh', N'ghjhg', N'ghjghj ghj hgj hgjghjhhjghgg hgjghjjjjhgjgh ghjghjhgjg ghj', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0xED370B00 AS Date), CAST(0xF4370B00 AS Date), CAST(0xEA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', NULL, N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'239', N'', N'a/Attachment/signatures/239.png', N'318', N'a/Attachment/signatures/318.png', N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, NULL, 6)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (5, N'PTW-A-B-C-2013-0002', CAST(0x0000A29300F4B870 AS DateTime), CAST(0x0000A29A00F4B870 AS DateTime), 1, 1, N'ghjhgj', 1, N'2', N'ghjhg', N'ghjgh', N'ghjhg', N'ghjghj ghj hgj hgjghjhhjghgg hgjghjjjjhgjgh ghjghjhgjg ghj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (11, N'PTW-A-B-C-2013-0001-A', CAST(0x0000A29A00000000 AS DateTime), CAST(0x0000A2A100000000 AS DateTime), 1, 1, N'ghjhgj', 1, N'2', N'ghjhg', N'ghjgh', N'ghjhg', N'ghjghj ghj hgj hgjghjhhjghgg hgjghjjjjhgjgh ghjghjhgjg ghj', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0xF5370B00 AS Date), CAST(0xFC370B00 AS Date), CAST(0xEA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'a/Attachment/signatures/318.png', N'297', NULL, N'a/Attachment/signatures/297.png', N'278', N'239', N'd/Attachment/signatures/239.png', N'239', N'', NULL, N'318', N'a/Attachment/signatures/318.png', N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, 4, 6)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (14, N'PTW-A-B-C-2013-0001-B', CAST(0x0000A2A200000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), 1, 1, N'ghjhgj', 1, N'2', N'ghjhg', N'ghjgh', N'ghjhg', N'ghjghj ghj hgj hgjghjhhjghgg hgjghjjjjhgjgh ghjghjhgjg ghj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, N'318', NULL, N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, 11, 0)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (15, N'PTW-A-B-C-2013-0003', CAST(0x0000A29000A13970 AS DateTime), CAST(0x0000A29700A13970 AS DateTime), 1, 1, N'adasd', 1, N'asdasdas', N'asdasd', N'asdasd', N'asdasd', N'asddsad asd sadasdsadas sa sa sda', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (16, N'PTW-A-B-C-2013-0004', CAST(0x00009F7800000000 AS DateTime), CAST(0x00009F7800000000 AS DateTime), 1, 1, N'asdsad', 1, N'asdasd', N'asdasd', N'asdasd', N'asdasdsa', N'dasdsadsadsad asd sadsadasdsad asd sadadgwefwe ewrrgfhdgfh gfhgfhgfddgf gfdfjjj dghjhfgdgfdgsfsfeqsertre redfssdfvfvbgfh rsegrs', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, CAST(0xED370B00 AS Date), CAST(0xF4370B00 AS Date), CAST(0xED370B00 AS Date), NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'a/Attachment/signatures/318.png', N'297', N'', N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'243', N'', N'a/Attachment/signatures/239.png', N'318', N'a/Attachment/signatures/318.png', N'297', N'', N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'243', N'', N'a', NULL, 9)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (17, N'PTW-A-B-C-2013-0005', CAST(0x0000A29300E297D0 AS DateTime), CAST(0x0000A29A00E25180 AS DateTime), 1, 1, N'asdas', 1, N'2', N'adasdsa', N'asdsadsa', N'sadasdsadas', N'asdsadasd asd asdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'undefined', N'undefined', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, N'undefined', NULL, NULL, N'undefined', NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (18, N'PTW-A-B-C-2013-0004-A', CAST(0x0000A29A00000000 AS DateTime), CAST(0x0000A2A100000000 AS DateTime), 1, 1, N'asdsad', 1, N'asdasd', N'asdasd', N'asdasd', N'asdasdsa', N'dasdsadsadsad asd sadsadasdsad asd sadadgwefwe ewrrgfhdgfh gfhgfhgfddgf gfdfjjj dghjhfgdgfdgsfsfeqsertre redfssdfvfvbgfh rsegrs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', N'', NULL, N'278', N'239', NULL, N'243', N'', NULL, N'318', NULL, N'297', N'', NULL, N'278', N'239', NULL, N'243', N'', NULL, 16, 0)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (19, N'PTW-A-B-C-2013-0006', CAST(0x0000A29300E59D40 AS DateTime), CAST(0x0000A29A00E59D40 AS DateTime), 1, 1, N'asdfafs', 1, N'dsfafsdf', N'asdfdsaf', N'sadfadsf', N'asdfdsaf', N'asdfdfsasdf sadf safdsa fdsaf dsfdsafdsafdsa fds dsfdsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (20, N'PTW-A-B-C-2013-0007', CAST(0x0000A29300E8A2B0 AS DateTime), CAST(0x0000A29A00E8A2B0 AS DateTime), 1, 1, N'asdasd', 1, N'asdadasd', N'asdsad', N'asdasd', N'asdasdasd', N'asdasd asd sadsadsadsadsad asdas', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0xEE370B00 AS Date), CAST(0xF5370B00 AS Date), NULL, NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'a/Attachment/signatures/318.png', N'297', N'', N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'244', N'', N'a/Attachment/signatures/244.png', N'318', NULL, N'297', N'', NULL, N'278', N'239', NULL, N'244', N'', NULL, NULL, 4)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (21, N'PTW-A-B-C-2013-0008', CAST(0x0000A29300F5D1B0 AS DateTime), CAST(0x0000A29A00F5D1B0 AS DateTime), 1, 1, N'asdsad', 1, N'1', N'asdsada', N'asdasd', N'asdsada', N'asdsadd ad asdasd sadasd sadsa sadsadsad sadasd a', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, CAST(0xEE370B00 AS Date), CAST(0xF5370B00 AS Date), CAST(0xF1370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'a/Attachment/signatures/297.png', N'278', N'239', N'a', N'239', N'', N'a/Attachment/signatures/239.png', N'318', N'a/Attachment/signatures/318.png', N'297', N'', NULL, N'278', N'239', NULL, N'239', N'', NULL, NULL, 6)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1018, N'PTW-A-B-C-2013-0009', CAST(0x0000A29900000000 AS DateTime), CAST(0x0000A2A000000000 AS DateTime), 1, 1, N'asd', 1, N'2', N'asd', N'asd', N'asd', N'ads', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1019, N'PTW-A-B-C-2013-0010', CAST(0x0000A29900000000 AS DateTime), CAST(0x0000A2A000000000 AS DateTime), 1, 1, N'3', 1, N'Warehouse 1', N'Warehouse 1', N'62', N'10000123', N'pipe installation', NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, CAST(0xF4370B00 AS Date), CAST(0xFB370B00 AS Date), CAST(0xF9370B00 AS Date), NULL, NULL, NULL, NULL, 1005, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'239', N'ahttp://localhost:8087', N'239', N'', N'a', N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', NULL, N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'239', NULL, N'239', N'', NULL, NULL, 6)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1020, N'PTW-A-B-C-2013-0010-A', CAST(0x0000A2A100000000 AS DateTime), CAST(0x0000A2A800000000 AS DateTime), 1, 1, N'3', 1, N'Warehouse 1', N'Warehouse 1', N'62', N'10000123', N'pipe installation', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1006, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, N'318', NULL, N'297', NULL, NULL, N'278', N'239', NULL, N'239', N'', NULL, 1019, 0)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1022, N'SPE-000001', CAST(0x0000A2A500000000 AS DateTime), CAST(0x0000A2AC00735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'sdfsd', N'fsdfsd', N'sdf', N'sdfsdfds', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1023, N'SPE-000002', CAST(0x0000A2A500000000 AS DateTime), CAST(0x0000A2AC00735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'asdasd', N'asdasd', N'asdsad', N'asdasdsad', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x00380B00 AS Date), CAST(0x07380B00 AS Date), CAST(0x03380B00 AS Date), NULL, NULL, NULL, NULL, 2006, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'239', N'', N'ahttp://localhost:8087/Attachment/signatures/239.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'239', N'', N'ahttp://localhost:8087/Attachment/signatures/239.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', NULL, 10)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1024, N'SPE-000002-A', CAST(0x0000A2AD00000000 AS DateTime), CAST(0x0000A2B400000000 AS DateTime), 1, 1, N'1', 5, N'2', N'asdasd', N'asdasd', N'asdsad', N'asdasdsad', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, CAST(0x08380B00 AS Date), CAST(0x0F380B00 AS Date), CAST(0x03380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'239', N'', N'ahttp://localhost:8087/Attachment/signatures/239.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'239', N'', N'ahttp://localhost:8087/Attachment/signatures/239.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', 1023, 10)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (1025, N'SPE-000003', CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2AF00735B40 AS DateTime), 3, 1, N'18', 5, N'2', N'fgdg', N'jhjkhkj', N'nbnmb', N'jhhjkhjkhjhkj', NULL, 1, 1, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Spv: aksdjahsd ajsdhsjkadh adjkf kjadhsfjks ajshdfsda', NULL, CAST(0x03380B00 AS Date), CAST(0x0A380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'239', N'', N'ahttp://localhost:8087/Attachment/signatures/239.png', N'278', N'', NULL, N'318', NULL, N'297', N'', NULL, N'239', N'', NULL, N'278', N'', NULL, NULL, 4)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (2024, N'SPE-000004', CAST(0x0000A2AB00000000 AS DateTime), CAST(0x0000A2B200735B40 AS DateTime), 1, 1, N'18', 5, N'2', N'asdsa', N'adqwe', N'qewqe', N'qweqeqw', NULL, 1, 1, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Spv: ajkdfjf sjdakfhjsdfh dsjfhajsdfhjashf jshdjfkhsdkjf', NULL, CAST(0x06380B00 AS Date), CAST(0x0D380B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', N'ahttp://localhost:8087/Attachment/signatures/318.png', N'297', N'', N'ahttp://localhost:8087/Attachment/signatures/297.png', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'278', N'', N'ahttp://localhost:8087/Attachment/signatures/278.jpg', N'318', NULL, N'297', N'', NULL, N'278', N'', NULL, N'278', N'', NULL, NULL, 5)
INSERT [dbo].[permit_to_work] ([id], [ptw_no], [proposed_period_start], [proposed_period_end], [dept_requestor], [section], [total_crew], [requestor_ptw_holder_no], [area], [work_location], [area_code], [work_order_no], [work_description], [notes], [pre_job_1_spv], [pre_job_2_spv], [pre_job_3_spv], [pre_job_4_spv], [pre_job_5_spv], [pre_job_6_spv], [pre_job_7_spv], [pre_job_1_fo], [pre_job_2_fo], [pre_job_3_fo], [pre_job_4_fo], [pre_job_5_fo], [pre_job_6_fo], [pre_job_7_fo], [cancel_1_spv], [cancel_2_spv], [cancel_3_spv], [cancel_4_spv], [cancel_5_spv], [cancel_6_spv], [cancel_7_spv], [cancel_1_fo], [cancel_2_fo], [cancel_3_fo], [cancel_4_fo], [cancel_5_fo], [cancel_6_fo], [cancel_7_fo], [pre_job_notes], [cancel_notes], [validity_period_start], [validity_period_end], [cancellation_date], [loto_id], [loto_status], [csep_id], [csep_status], [hw_id], [hw_status], [fi_id], [fi_status], [ex_id], [ex_status], [wh_id], [wh_status], [rad_id], [rad_status], [acc_ptw_requestor], [acc_ptw_requestor_approve], [acc_supervisor], [acc_supervisor_delegate], [acc_supervisor_approve], [acc_assessor], [acc_assessor_delegate], [acc_assessor_approve], [acc_fo], [acc_fo_delegate], [acc_fo_approve], [can_ptw_requestor], [can_ptw_requestor_approve], [can_supervisor], [can_supervisor_delegate], [can_supervisor_approve], [can_assessor], [can_assessor_delegate], [can_assessor_approve], [can_fo], [can_fo_delegate], [can_fo_approve], [id_parent_ptw], [status]) VALUES (2025, N'SPE-000005', CAST(0x0000A2AC00000000 AS DateTime), CAST(0x0000A2B300735B40 AS DateTime), 1, 1, N'1', 5, N'2', N'asdsad', N'asdasd', N'asdsa', N'asdasdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3007, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, N'318', NULL, N'297', N'', NULL, NULL, NULL, NULL, N'278', N'', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[permit_to_work] OFF
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
USE [master]
GO
ALTER DATABASE [star_energy_ptw] SET  READ_WRITE 
GO
