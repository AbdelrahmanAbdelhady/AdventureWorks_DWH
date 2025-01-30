SET IDENTITY_INSERT Dim_Customers ON;

INSERT INTO Dim_Customers (Customer_sk,CustomerID, FirstName, LastName, [AddressLine1], City, [StateProvinceName], [CountryRegionCode], [ModifiedDate], [start_date], [end_date], [is_current])
VALUES (-1, -1, 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'NA', '1900-01-01', '1900-01-01', NULL, 1);

SET IDENTITY_INSERT Dim_Customers OFF;




SET IDENTITY_INSERT dim_products ON;

insert into Dim_products ([Product_sk],[ProductID],[ProductName],[ProductNumber],[ProductColor],[StandardCost]
 ,[ListPrice],[ProductSize],[ProductWeight],[SubcategoryName],[CategoryName],[ProductModelName],[ModifiedDate]
,[start_date],[end_date],[is_current])
  values (-1,-1, 'unknown' , 'unknown' , 'unknown' , 0,0  , 'NA' , 0,'unknown' ,'unknown' ,'unknown' ,
			'1900-01-01' , '1900-01-01' , null , 1) 
SET IDENTITY_INSERT dim_products OFF;




SET IDENTITY_INSERT Dim_ShipMethods ON;
insert into Dim_ShipMethods ([ShipMethod_sk],[ShipMethodID],[Name],[ModifiedDate],[ShipBase],[ShipRate]
      ,[start_date],[end_date],[is_current])
  values (-1,-1, 'unknown' , '1900-01-01' , 0 ,0 , '1900-01-01' , null,1  ) 
  SET IDENTITY_INSERT Dim_ShipMethods OFF;





SET IDENTITY_INSERT [dim_Territories] ON;
insert into [dim_Territories] ([Territory_sk]
      ,[TerritoryID]
      ,[Name]
      ,[CountryRegionCode]
      ,[Group]
      ,[SalesYTD]
      ,[SalesLastYear]
      ,[ModifiedDate]
      ,[start_date]
      ,[end_date]
      ,[is_current])
  values (-1,-1, 'unknown' , 'NA' , 'unknown' ,0 , 0,'1900-01-01' , '1900-01-01',null,1  ) 
  SET IDENTITY_INSERT [dim_Territories] OFF;




truncate table [Dim_SalesMen]
  
set identity_insert [Dim_SalesMen] ON
insert into [Dim_SalesMen]([salesMan_Sk]
      ,[BusinessEntityID]
      ,[FirstName]
      ,[LastName]
      ,[JobTitle]
      ,[PhoneNumber]
      ,[EmailAddress]
      ,[AddressLine1]
      ,[City]
      ,[StateProvinceName]
      ,[CountryRegionName]
      ,[TerritoryName]
      ,[TerritoryGroup]
      ,[ModifiedDate]
      ,[start_date]
      ,[end_date]
      ,[is_current])
 values (-1,-1,'Unkown','Unkown','Unkown','Unkown','Unkown','Unkown','Unkown','Unkown','Unkown','Unkown','Unkown','1-1-1911','1-1-1911',NULL,1)
set identity_insert [Dim_SalesMen] OFF
