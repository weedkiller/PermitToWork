USE [star_energy_ptw]
GO
/****** Object:  Table [dbo].[mst_enviro_officer]    Script Date: 4/23/2015 9:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mst_enviro_officer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NULL,
 CONSTRAINT [PK_mst_enviro_officer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mst_ex_disposal_location]    Script Date: 4/23/2015 9:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_ex_disposal_location](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[is_delete] [bit] NOT NULL,
 CONSTRAINT [PK_mst_ex_disposal_location] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[mst_ex_disposal_location] ADD  CONSTRAINT [DF_mst_ex_disposal_location_is_delete]  DEFAULT ((0)) FOR [is_delete]
GO
