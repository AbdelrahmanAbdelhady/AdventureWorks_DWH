USE [AdventureWorks_DWH]
GO

/****** Object:  Table [dbo].[Dim_SalesMen]    Script Date: 1/30/2025 6:57:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_SalesMen](
	[Salesman_sk] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityID] [int] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](25) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[AddressLine1] [nvarchar](60) NULL,
	[City] [nvarchar](30) NULL,
	[StateProvinceName] [nvarchar](50) NULL,
	[CountryRegionName] [nvarchar](50) NULL,
	[TerritoryName] [nvarchar](50) NULL,
	[TerritoryGroup] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NOT NULL,
 CONSTRAINT [PK_Dim_SalesMen] PRIMARY KEY CLUSTERED 
(
	[Salesman_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_SalesMen] ADD  DEFAULT ('1900-01-01') FOR [start_date]
GO

ALTER TABLE [dbo].[Dim_SalesMen] ADD  DEFAULT ((1)) FOR [is_current]
GO

