﻿USE master
IF EXISTS(select * from sys.databases where name='BikeForLife')
DROP DATABASE BikeForLife

CREATE DATABASE BikeForLife
GO

USE [BikeForLife]
GO

CREATE TABLE BikeRoutes(
	BikeRouteId INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Name NVARCHAR(max) NOT NULL,
	Length FLOAT NOT NULL,
	Difficulty INT NOT NULL,
	Country NVARCHAR(max) NOT NULL,
	City NVARCHAR(max) NOT NULL
)

INSERT BikeRoutes VALUES ('Lundbykrat', 15.3, 1, 'Denmark', 'Gistrup')
INSERT BikeRoutes VALUES ('Rebild bakker', 28.4, 2, 'Denmark', 'Rebild')
INSERT BikeRoutes VALUES ('Aalborg Rundt', 65.2, 3, 'Denmark', 'Aalborg')