<h1>Adventure Works Data Warehouse Project </h1>
<h3>1. Problem Overview</h3>
    AdventureWorks is a fictional manufacturing company that required an advanced data solution to manage and analyze its business operations efficiently. The company maintained a transactional database (AdventureWorks2019) that stored information about products, customers, orders, and sales. However, the existing system lacked the capability to perform historical analysis, generate insightful reports, and support business intelligence (BI) needs.

The goal of this project was to design and implement a robust data warehouse (AdventureWorks_DWH) and create BI reports that enable data-driven decision-making. This project also incorporated an incremental load mechanism for fact tables in SSIS to improve data processing efficiency and an orphan data handling strategy to ensure data integrity.

<hr>

<h3>2. Project Overview</h3>
  The project involved several key steps:


**Modeling and building a Data Warehouse (DWH)**: Transforming the transactional database into a structured data warehouse using a star schema approach.

**ETL Process**: Developing an SSIS (SQL Server Integration Services) project to extract, transform, and load data from the transactional database into the data warehouse.

**BI Reporting**: Using Power BI to create self-service reports and dashboards for business users to explore the data and gain insights.
<hr>

<h3>3. Source Database Overview</h3>





The source database, AdventureWorks2019, is a transactional system that contains the following tables:


**Product-related tables**: Product, ProductCategory, ProductSubcategory, ProductModel.
![407921501-69cb6d74-3636-4bda-b778-9c407393c678](https://github.com/user-attachments/assets/6498fb2e-ff85-456f-86ad-6fea1530c5a7)


**Customer-related tables**: Customer, Person, SalesTerritory, Address, StateProvince, CountryRegion.

**Order-related tables**: SalesOrderHeader, SalesOrderDetail.
![407920621-e26959d4-ce56-418b-986c-4681c23c563b](https://github.com/user-attachments/assets/d31e038a-a855-40dd-8d97-61d07ac8ce85)

**Shipping and delivery**: ShipMethod, TransactionHistory.
![407925419-d0a5c3e3-de58-4eb9-95e3-59124e939ea2](https://github.com/user-attachments/assets/179988b3-f086-42f9-b1b8-52c4aa3260ce)

**Employee and Sales**: SalesPerson, Employee, SalesTerritoryHistory.

<hr>

<h3>4. Technologies Used Overview</h3>
The following technologies were used in this project:

**SQL Server**: For managing the transactional database (adventureworks2019) and the data warehouse (Adventure_Works_DWH).

**SSIS (SQL Server Integration Services)**: For building the ETL process to populate the data warehouse.

**Power BI**: For creating self-service BI reports and dashboards.

<hr>

<h3>5. Data Warehouse Modeling</h3>
    
![Datawarehouse Schema](https://github.com/user-attachments/assets/7af0a775-c627-45a6-a424-1e2a6d0eaae6)


The data warehouse (AdventureWorks_DWH) was designed using a star schema approach. The schema consists of:

**Fact Tables**: Central tables that store quantitative data (e.g., sales facts).

**Dimension Tables**: Surrounding tables that store descriptive attributes (e.g., customer, product, date, and shipping dimensions).

A date dimension was incorporated to support historical tracking and time-based analysis.

<hr>

<h3>6. ETL Process (SSIS) </h3>

**Extract**: I extracted data from the AdventureWorks2019 transactional database.

**Transform**: 
I transformed the data to fit the star schema model,  ensuring data integrity.  Additionally, I implemented **Slowly Changing Dimensions (SCD)** to manage changes in dimension data over time. Specifically:

**Type 1 SCD**: For attributes where historical changes are not required (e.g., correcting typos in customer names)..

**Type 2 SCD**: For attributes where tracking historical changes is essential (e.g., changes in product pricing or customer addresses). This involved creating new rows for changed data and marking old rows as inactive.

**Handling orphan data**: 
Implemented mechanisms to detect and manage orphan records in foreign key relationships, ensuring referential integrity in the data warehouse.

**Incremental Load Mechanism**

A key enhancement in this project was the implementation of an incremental load mechanism in the fact table. Instead of reloading all data with each ETL cycle, only new and updated records were processed, significantly improving performance and reducing resource consumption.

**Load**: Transformed data was loaded into the AdventureWorks_DWH data warehouse, ensuring efficient and scalable data processing.

Dim_Customers ETL:
![Dim_Customers ETL](https://github.com/user-attachments/assets/b2e090ea-25c1-46a3-846f-181fd8bc81e8)


Dim_Products ETL:
![Dim_Products ETL](https://github.com/user-attachments/assets/9779f3f7-1adf-4e85-87f7-93d36d23dfe2)


Dim_SalesMen ETL:
![Dim_Salesmen ETL](https://github.com/user-attachments/assets/e11ca30c-8d9f-40c0-a55d-d03626df3655)


Dim_Territories ETL:
![Dim_Territories ETL](https://github.com/user-attachments/assets/0e3d2491-9ab7-410e-802f-210345469d93)


Dim_ShippingMethods ETL:
![Dim_ShippingMethods ETL](https://github.com/user-attachments/assets/53f65ce2-d4cd-4494-980d-effe4e1270d0)


SalesFactTable ETL:
![SalesFactTable ETL](https://github.com/user-attachments/assets/02200c2a-2d8c-4bc7-8914-8e8b7cb1aa43)
![SalesFactTable package](https://github.com/user-attachments/assets/cf89c893-bb45-435b-8deb-6078495a7beb)


Result Fact Table:
![SalesFactTable](https://github.com/user-attachments/assets/4085d763-e866-413d-b3c5-612cdd16a8f2)


<hr>

<h3>7. Reporting and Data visualization (Power BI) </h3>


The Analysis and Reporting Phase focused on exploring the data in the data warehouse (adventure_works_dwh) and generating actionable insights for the adventureworks store. This phase involved the creation of interactive reports and dashboards using Power BI, which allowed business users to explore the data and gain valuable insights. Below are the key components of this phase:


![Overview](https://github.com/user-attachments/assets/3ad3fe87-98a3-4703-a35d-0a82cbeac69c)


![Products Analysis](https://github.com/user-attachments/assets/06999a6e-1274-455b-9899-3fbd2e709b6e)

![Territory Analysis](https://github.com/user-attachments/assets/2c618de3-6f0e-4ed6-be2f-70bebeafd207)


![Salesmen performance Analysis](https://github.com/user-attachments/assets/874d367d-de48-4174-952d-6c09cb358036)


<hr>


<h3>8. Conclusion</h3>

The AdventureWorks 2019 Data Warehouse Project was a valuable learning experience, providing hands-on exposure to data warehousing, ETL processes, and business intelligence. This project introduced advanced ETL concepts, such as:

**Incremental Loading in Fact Tables**: Improved data processing efficiency by only loading new and updated records.

**Orphan Data Handling**: Ensured referential integrity by identifying and managing orphan records in foreign key relationships.

**Slowly Changing Dimensions (SCD)**: Tracked historical changes in dimension data.

**Star Schema Design**: Optimized query performance for business intelligence applications.

**Power BI Dashboards**: Provided actionable insights through interactive reports and visualizations.

These improvements enhanced the ability of AdventureWorks to make data-driven business decisions, optimize operations, and improve overall efficiency.
<hr>
<hr>

**I welcome feedback, suggestions, and contributions to improve this project! Feel free to reach out or collaborate to make it even better. 😊**

