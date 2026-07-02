/*
=============================================================
Database and Schema Initialization
=============================================================
Purpose:
    This script creates a database named 'SummitCyclesDW'. Before creation,
    it checks whether the database already exists. If it does, the existing
    database is dropped and rebuilt. The script also initializes three
    schemas within the database: 'bronze', 'silver', and 'gold'.

IMPORTANT NOTICE:
    Executing this script will permanently drop the 'SummitCyclesDW' database
    if it already exists. All data stored in that database will be lost.
    Ensure you have appropriate backups before running this script.
*/



USE master;
GO

-- Drop and recreate the 'SummitCyclesDW' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'SummitCyclesDW')
BEGIN
    ALTER DATABASE SummitCyclesDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE SummitCyclesDW;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE SummitCyclesDW;
GO

USE SummitCyclesDW;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
