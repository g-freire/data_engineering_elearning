USE master ;  
GO  
-- CHECKING THE PHYSICAL STORAGE PATHS (EX: LINUX CONTAINERS VOLUME)
SELECT physical_name FROM sys.master_files; 

-- CREATES PHYSICAL DB
DECLARE @containerPath nvarchar(30) = '/var/opt/mssql/data/'
DECLARE @dbName nvarchar(30) = 'ESTANTE'
SET @dbName += '_LOG';  

CREATE DATABASE ESTANTE
ON PRIMARY
	(
		NAME = ESTANTE ,
		FILENAME = '/var/opt/mssql/data/ESTANTE.mdf',
		SIZE = 20MB,
		MAXSIZE = 250MB,
		FILEGROWTH = 10%
	 )
LOG ON 
	(
		NAME = ESTANTE_LOG,
		FILENAME = '/var/opt/mssql/data/ESTANTE_LOG.mdf',
		SIZE = 1MB, FILEGROWTH = 1MB
	)

-- RESULTR
SELECT physical_name FROM sys.master_files; 