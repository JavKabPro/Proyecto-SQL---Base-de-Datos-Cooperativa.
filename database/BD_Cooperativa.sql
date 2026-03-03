USE MASTER
CREATE DATABASE cooperativa; -- Creamos la base de datos

USE cooperativa; -- Opcional, pero es mejor indicar con lo que vas a trabajar

/*======================================*/
/*- Creamos las tablas independientes --*/
/*======================================*/

CREATE TABLE Empresa(					-- CREAMOS LA TABLA "Empresa"
	IdEmpresa INT PRIMARY KEY IDENTITY (1,1) NOT NULL,	-- Las columnas se llenan con autoincremento en el id, la misma como clave primaria
	Nombre VARCHAR(100) NOT NULL,
	Correo VARCHAR(50),
	Telefono VARCHAR(20),
	Direccion VARCHAR(50),
	);

CREATE TABLE Modalidad(					-- CREAMOS LA TABLA "Modalidad"
	IdModalidad INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	Tipo VARCHAR(50) NOT NULL,
	PlazoMaximo INT NOT NULL,			-- en meses
	TasaInteres DECIMAL(5,2) NOT NULL	-- en porcentaje
	);

CREATE TABLE Socio(						-- CREAMOS LA TABLA "Socio"
	IdSocio INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	Nombre VARCHAR(50) NOT NULL,
	FechaNacimiento DATE NOT NULL
	);

CREATE TABLE Prestamo(					-- CREAMOS LA TABLA "Prestamo"
	IdPrestamo INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	Valor DECIMAL(12,2) NOT NULL,
	FechaInicio DATETIME NOT NULL,
	PlazoMeses INT NOT NULL
	);

CREATE TABLE Codeudor(					-- CREAMOS LA TABLA "Codeudor"
	IdCodeudor INT PRIMARY KEY IDENTITY (1,1) NOT NULL,	-- 
	Nombre VARCHAR(100) NOT NULL,
	Salario DECIMAL(12,2) NOT NULL,
	Telefono VARCHAR(20),
	Direccion VARCHAR(50)
	);
/*****************************/
/* Agregamos claves for�neas */
/*****************************/

ALTER TABLE Socio 
ADD IdEmpresa INT NOT NULL;
ALTER TABLE Socio
ADD CONSTRAINT FK_Socio_Empresa			
FOREIGN KEY (IdEmpresa) REFERENCES Empresa(IdEmpresa); 

ALTER TABLE Prestamo 
ADD IdSocio INT NOT NULL;
ALTER TABLE Prestamo
ADD CONSTRAINT FK_Prestamo_Socio			
FOREIGN KEY (IdSocio) REFERENCES Socio(IdSocio); 

ALTER TABLE Prestamo 
ADD IdModalidad INT NOT NULL;
ALTER TABLE Prestamo
ADD CONSTRAINT FK_Prestamo_Modalidad			
FOREIGN KEY (IdModalidad) REFERENCES Modalidad(IdModalidad); 

ALTER TABLE Prestamo 
ADD IdCodeudor INT NOT NULL;
ALTER TABLE Prestamo
ADD CONSTRAINT FK_Prestamo_Codeudor			
FOREIGN KEY (IdCodeudor) REFERENCES Codeudor(IdCodeudor); 



