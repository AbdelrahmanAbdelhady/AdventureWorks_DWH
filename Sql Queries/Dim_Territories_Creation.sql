USE [AdventureWorks_DWH]
GO

/****** Object:  Table [dbo].[dim_Territories]    Script Date: 1/30/2025 6:59:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_Territories](
	[Territory_sk] [int] IDENTITY(1,1) NOT NULL,
	[TerritoryID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[CountryRegionCode] [nvarchar](3) NULL,
	[Group] [nvarchar](50) NULL,
	[SalesYTD] [money] NULL,
	[SalesLastYear] [money] NULL,
	[ModifiedDate] [datetime] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NOT NULL,
 CONSTRAINT [PK_dim_Territories] PRIMARY KEY CLUSTERED 
(
	[Territory_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[dim_Territories] ADD  DEFAULT ('1900-01-01') FOR [start_date]
GO

ALTER TABLE [dbo].[dim_Territories] ADD  DEFAULT ((1)) FOR [is_current]
GO

