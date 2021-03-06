USE [star_energy_ptw]
GO
/****** Object:  Table [dbo].[excavation_disposal_location]    Script Date: 4/23/2015 11:33:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[excavation_disposal_location](
	[id_permit] [int] NOT NULL,
	[id_disposal_location] [int] NOT NULL,
	[volume] [float] NULL,
 CONSTRAINT [PK_excavation_disposal_location] PRIMARY KEY CLUSTERED 
(
	[id_permit] ASC,
	[id_disposal_location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[excavation_disposal_location]  WITH CHECK ADD  CONSTRAINT [FK_excavation_disposal_location_excavation] FOREIGN KEY([id_permit])
REFERENCES [dbo].[excavation] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[excavation_disposal_location] CHECK CONSTRAINT [FK_excavation_disposal_location_excavation]
GO
ALTER TABLE [dbo].[excavation_disposal_location]  WITH CHECK ADD  CONSTRAINT [FK_excavation_disposal_location_mst_ex_disposal_location] FOREIGN KEY([id_disposal_location])
REFERENCES [dbo].[mst_ex_disposal_location] ([id])
GO
ALTER TABLE [dbo].[excavation_disposal_location] CHECK CONSTRAINT [FK_excavation_disposal_location_mst_ex_disposal_location]
GO
