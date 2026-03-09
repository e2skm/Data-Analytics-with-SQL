SELECT name AS Column_Name
FROM sys.columns
WHERE object_id = OBJECT_ID('SuperStoreDB.dbo.SuperStoreOrders');