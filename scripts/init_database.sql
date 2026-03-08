/*
=============================================
Create Database and Schemas
=============================================
Script Purpose:
  This script creates a new database named 'Datawarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets 3 three schemas
  within the database: 'Bronze', 'Silver' and 'Gold'.

Warning: 
  Running this script will drop the entire 'Datawarehouse' database if exists.
  All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.

*/




USE master;
GO

-- Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases where name = 'Datawarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
	End;
	GO
	-- Create the 'Datawarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO
--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA Gold;
GO
