USE SuperStoreDB;
ALTER TABLE dbo.SuperStoreOrders ALTER COLUMN ship_mode NVARCHAR(50);
ALTER TABLE dbo.SuperStoreOrders ALTER COLUMN segment NVARCHAR(50);
ALTER TABLE dbo.SuperStoreOrders ALTER COLUMN category NVARCHAR(50);
ALTER TABLE dbo.SuperStoreOrders ALTER COLUMN sub_category NVARCHAR(50);
ALTER TABLE dbo.SuperStoreOrders ALTER COLUMN order_priority NVARCHAR(20);