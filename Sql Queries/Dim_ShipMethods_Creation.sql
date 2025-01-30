USE [AdventureWorks_DWH]
GO

/****** Object:  Table [dbo].[Dim_ShipMethods]    Script Date: 1/30/2025 6:58:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_ShipMethods](
	[ShipMethod_sk] [int] IDENTITY(1,1) NOT NULL,
	[ShipMethodID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ShipBase] [money] NULL,
	[ShipRate] [money] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NOT NULL,
 CONSTRAINT [PK_Dim_ShipMethods] PRIMARY KEY CLUSTERED 
(
	[ShipMethod_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_ShipMethods] ADD  DEFAULT ('1900-01-01') FOR [start_date]
GO

ALTER TABLE [dbo].[Dim_ShipMethods] ADD  DEFAULT ((1)) FOR [is_current]
GO

