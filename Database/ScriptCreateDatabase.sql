--El cliente deberá tener los campos ID, NIT, Nombre y correo electrónico 
--- El servicio deberá tener los campos ID, Nombre y valor por hora (en $USD).  
--- El campo ID en ambas entidades debe ser un valor autogenerado y único. 

IF NOT EXISTS(SELECT 1 FROM sys.databases WHERE name = 'TekusTest')
BEGIN
	CREATE DATABASE TekusTest
END 
GO

IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'TekusTest')
BEGIN
	USE TekusTest
END 
GO

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Customer')
BEGIN
	CREATE TABLE Customer(
		  CustomerID	INT		IDENTITY	NOT NULL
		, Nit			VARCHAR(25)			NOT NULL
		, Nombre		VARCHAR(500)		NOT NULL
		, Email			VARCHAR(200)		NOT NULL
	)
END
GO

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Service')
BEGIN
	CREATE TABLE Service(
		  ServiceID		INT		IDENTITY	NOT NULL
		, Nombre		VARCHAR(100)		NOT NULL
		, ValorHora		MONEY				NOT NULL
	)
END
GO
