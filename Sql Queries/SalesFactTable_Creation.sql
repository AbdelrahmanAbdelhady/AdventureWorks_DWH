USE [AdventureWorks_DWH]
GO

/****** Object:  Table [dbo].[SalesFactTable]    Script Date: 1/30/2025 6:59:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SalesFactTable](
	[SalesOrderID] [int] NULL,
	[SalesOrderDetailID] [int] NULL,
	[OrderQty] [smallint] NULL,
	[ProductID] [int] NULL,
	[UnitPrice] [money] NULL,
	[UnitPriceDiscount] [money] NULL,
	[LineTotal] [numeric](38, 6) NULL,
	[OrderDate] [int] NULL,
	[DueDate] [int] NULL,
	[ShipDate] [int] NULL,
	[OnlineOrderFlag] [bit] NULL,
	[CustomerID] [int] NULL,
	[SalesPersonID] [int] NULL,
	[TerritoryID] [int] NULL,
	[ShipMethodID] [int] NULL,
	[SubTotal] [money] NULL,
	[TaxAmt] [money] NULL,
	[Freight] [money] NULL,
	[TotalDue] [money] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SalesFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SalesFactTable_Dim_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Dim_Customers] ([Customer_sk])
GO

ALTER TABLE [dbo].[SalesFactTable] CHECK CONSTRAINT [FK_SalesFactTable_Dim_Customers]
GO

ALTER TABLE [dbo].[SalesFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SalesFactTable_Dim_Date] FOREIGN KEY([OrderDate])
REFERENCES [dbo].[Dim_Date] ([DateSK])
GO

ALTER TABLE [dbo].[SalesFactTable] CHECK CONSTRAINT [FK_SalesFactTable_Dim_Date]
GO

ALTER TABLE [dbo].[SalesFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SalesFactTable_Dim_Date1] FOREIGN KEY([DueDate])
REFERENCES [dbo].[Dim_Date] ([DateSK])
GO

ALTER TABLE [dbo].[SalesFactTable] CHECK CONSTRAINT [FK_SalesFactTable_Dim_Date1]
GO

ALTER TABLE [dbo].[SalesFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SalesFactTable_Dim_Date2] FOREIGN KEY([ShipDate])
REFERENCES [dbo].[Dim_Date] ([DateSK])
GO

ALTER TABLE [dbo].[SalesFactTable] CHECK CONSTRAINT [FK_SalesFactTable_Dim_Date2]
GO

ALTER TABLE [dbo].[SalesFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SalesFactTable_Dim_products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Dim_products] ([Product_sk])
GO

ALTER TABLE [dbo].[SalesFactTable] CHECK CONSTRAINT [FK_SalesFactTable_Dim_products]
GO

ALTER TABLE [dbo].[SalesFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SalesFactTable_Dim_SalesMen] FOREIGN KEY([SalesPersonID])
REFERENCES [dbo].[Dim_SalesMen] ([Salesman_sk])
GO

ALTER TABLE [dbo].[SalesFactTable] CHECK CONSTRAINT [FK_SalesFactTable_Dim_SalesMen]
GO

ALTER TABLE [dbo].[SalesFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SalesFactTable_Dim_ShipMethods] FOREIGN KEY([ShipMethodID])
REFERENCES [dbo].[Dim_ShipMethods] ([ShipMethod_sk])
GO

ALTER TABLE [dbo].[SalesFactTable] CHECK CONSTRAINT [FK_SalesFactTable_Dim_ShipMethods]
GO

ALTER TABLE [dbo].[SalesFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SalesFactTable_dim_Territories] FOREIGN KEY([TerritoryID])
REFERENCES [dbo].[dim_Territories] ([Territory_sk])
GO

ALTER TABLE [dbo].[SalesFactTable] CHECK CONSTRAINT [FK_SalesFactTable_dim_Territories]
GO

