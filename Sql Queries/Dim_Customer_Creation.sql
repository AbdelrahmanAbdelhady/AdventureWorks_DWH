USE [AdventureWorks_DWH]
GO

/****** Object:  Table [dbo].[Dim_Customers]    Script Date: 1/30/2025 6:56:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Customers](
	[Customer_sk] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[AddressLine1] [nvarchar](60) NULL,
	[City] [nvarchar](30) NULL,
	[StateProvinceName] [nvarchar](50) NULL,
	[CountryRegionCode] [nvarchar](3) NULL,
	[ModifiedDate] [datetime] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NOT NULL,
 CONSTRAINT [PK_Dim_Customers] PRIMARY KEY CLUSTERED 
(
	[Customer_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_Customers] ADD  DEFAULT ('1900-01-01') FOR [start_date]
GO

ALTER TABLE [dbo].[Dim_Customers] ADD  DEFAULT ((1)) FOR [is_current]
GO

