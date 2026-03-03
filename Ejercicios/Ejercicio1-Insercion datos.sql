/* 1. Crea 10 consultas de inserci�n en cada tabla */

use cooperativa
go

insert into Empresa (Nombre, Correo, Telefono, Direccion)
values
('Galletas Noel', 'noelcontacto@correo.com', '01800056998', 'Cra 97 # 56-89'),
('Zenu', 'zenu@correo.com', '01800046998', 'Cra 7 # 20-09'),
('Metro', 'metromedellin@correo.gov.co', '01700086998', 'Cll 54 # 26-29'),
('Bancolombia', 'bcolombia@correo.com', '0180003003366', 'Cra 87 # 56-89'),
('Postob�n', 'postobon@correo.com', '018000112233', 'Cra 45 # 67-21'),
('Alpina', 'alpina@correo.com', '018000445566', 'Cll 12 # 34-56'),
('Nutresa', 'nutresa@correo.com', '018000778899', 'Cra 23 # 45-67'),
('�xito', 'exito@correo.com', '018000998877', 'Cll 89 # 12-34'),
('Colanta', 'colanta@correo.com', '018000223344', 'Cra 56 # 78-90'),
('Sura', 'sura@correo.com', '018000667788', 'Cll 34 # 56-78')

select * from Empresa

insert into Modalidad (Tipo, PlazoMaximo, TasaInteres)
values
('Vivienda', '180', '5.00'),
('Veh�culo', '84', '7.50'),
('Educaci�n', '60', '4.25'),
('Libre Inversi�n', '48', '9.80'),
('Turismo', '24', '6.75'),
('Salud', '36', '5.90'),
('Tecnolog�a', '30', '8.20'),
('Remodelaci�n', '72', '6.40'),
('Emprendimiento', '96', '10.00'),
('Consolidaci�n de Deudas', '120', '7.00')

select * from Modalidad

insert into Socio (Nombre,FechaNacimiento,IdEmpresa)
values
('Carlos P�rez', '1990-05-21', 1),
('Mar�a G�mez', '1985-11-10', 2),
('Juan Rodr�guez', '1998-03-15', 3),
('Ana Mart�nez', '1979-07-02', 4),
('Luis Fern�ndez', '2000-01-25', 5),
('Paola Ram�rez', '1992-09-30', 6),
('Andr�s Torres', '1988-12-12', 7),
('Sof�a Herrera', '1995-04-18', 8),
('Felipe Castro', '1982-06-05', 9),
('Diana Morales', '1999-08-22', 10);

select * from Socio

insert into Codeudor (Nombre, Salario, Telefono, Direccion)
values
('Elena Delgado', 2500000, '6045026365', 'Cra 89 # 21-21'),
('Ricardo Montoya', 3850000, '6042314587', 'Clle 45 # 10-05'),
('Luc�a Restrepo', 1920000, '6043129854', 'Av 80 # 42-12'),
('Marcos Alzate', 4100000, '6045892143', 'Cra 52 # 78-45'),
('Carolina Ospina', 2750000, '6044713625', 'Clle 10 Sur # 15-30'),
('Sergio Berm�dez', 3200000, '6046051289', 'Cra 43A # 23-11'),
('Valentina Cano', 1580000, '6042157845', 'Clle 67 # 89-02'),
('Andr�s Villada', 5200000, '6043216598', 'Av San Juan # 70-55'),
('Mariana Henao', 2100000, '6045402312', 'Circular 4 # 71-10'),
('Gabriel Holgu�n', 3650000, '6044895214', 'Cra 65 # 48-90');

select * from Codeudor

insert into Prestamo (Valor, FechaInicio, PlazoMeses, IdSocio, IdModalidad, IdCodeudor)
values
(50000000, '2024-01-15', '180', 1, 1, 1),
(25000000, '2025-03-10', '84', 2, 2, 2),
(12000000, '2023-09-05', '60', 3, 3, 3),
(8000000,  '2025-07-20', '48', 4, 4, 4),
(15000000, '2024-11-01', '24', 5, 5, 5),
(6000000,  '2025-02-14', '36', 6, 6, 6),
(10000000, '2023-12-30', '30', 7, 7, 7),
(22000000, '2024-06-18', '72', 8, 8, 8),
(30000000, '2025-05-25', '96', 9, 9, 9),
(18000000, '2024-08-12', '120', 10, 10, 10);

select * from Prestamo

