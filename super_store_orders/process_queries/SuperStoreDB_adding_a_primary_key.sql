USE SuperStoreDB;
ALTER TABLE dbo.SuperStoreOrders
ADD order_row_id INT IDENTITY(1,1) PRIMARY KEY; 

SELECT * FROM dbo.SuperStoreOrders;