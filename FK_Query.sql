USE [DABEvents]
GO

drop table tbl_Equipment

go

/****** Object:  Table [dbo].[tbl_Equipment]    Script Date: 02/06/2018 13:07:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_Equipment](
	[EquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [int] NULL Foreign Key References tbl_Events(EventID),
	[EquipmentName] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_Equipment] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

