USE [AdventureWorks_DWH]
GO

/****** Object:  Table [dbo].[Dim_products]    Script Date: 1/30/2025 6:57:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_products](
	[Product_sk] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](50) NULL,
	[ProductNumber] [nvarchar](25) NULL,
	[ProductColor] [nvarchar](15) NULL,
	[StandardCost] [money] NULL,
	[ListPrice] [money] NULL,
	[ProductSize] [nvarchar](5) NULL,
	[ProductWeight] [numeric](8, 2) NULL,
	[SubcategoryName] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](50) NULL,
	[ProductModelName] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NOT NULL,
 CONSTRAINT [PK_Dim_products] PRIMARY KEY CLUSTERED 
(
	[Product_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_products] ADD  DEFAULT ('1900-01-01') FOR [start_date]
GO

ALTER TABLE [dbo].[Dim_products] ADD  DEFAULT ((1)) FOR [is_current]
GO

