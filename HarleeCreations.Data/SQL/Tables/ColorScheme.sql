USE [HarleeCreations]
GO

/****** Object:  Table [Theme].[ColorScheme]    Script Date: 9/4/2022 9:43:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Theme].[ColorScheme](
	[ColorSchemeId] [bigint] IDENTITY(1,1) NOT NULL,
	[UniqueName] [varchar](50) NOT NULL,
	[V100] [varchar](30) NULL,
	[V200] [varchar](30) NULL,
	[V300] [varchar](30) NULL,
	[V400] [varchar](30) NULL,
	[V500] [varchar](30) NULL,
	[V600] [varchar](30) NULL,
	[V700] [varchar](30) NULL,
	[V800] [varchar](30) NULL,
	[V900] [varchar](30) NULL,
 CONSTRAINT [PK_ColorScheme] PRIMARY KEY CLUSTERED 
(
	[ColorSchemeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO