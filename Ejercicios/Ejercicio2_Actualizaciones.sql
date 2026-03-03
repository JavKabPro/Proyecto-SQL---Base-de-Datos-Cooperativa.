/* 2. una consulta de actualizaci�n en cada tabla */

select * from Empresa

update Empresa 
set 
Telefono = '301 400 25 24', 
Direccion = 'Cll 56 #45-20',
Nombre = 'Bellos OroPan',
Correo = 'bellooropan@belloropan.com'
WHERE IdEmpresa = 1;

select * from Empresa

----------------------------------------

select * from Modalidad

update Modalidad 
set 
Tipo = 'Recreaci�n', 
PlazoMaximo = '24',
TasaInteres = '4.4'
WHERE IdModalidad = 8;

select * from Modalidad

________________________________________

select * from Socio

update Socio 
set 
Nombre = 'Karen Loez', 
FechaNacimiento = '2001-04-01'
WHERE IdSocio = 1;

select * from Socio

----------------------------------------

select * from Codeudor

update Codeudor 
set 
Nombre = 'Felipe Rendon', 
Salario = '3000000',
Telefono = '604 8001429',
Direccion = 'Dg 56 # 77-03'
WHERE IdCodeudor = 10;

select * from Codeudor

-----------------------------------------

select * from Prestamo

update Prestamo
set
Valor = 55000000,
PlazoMeses = 200
WHERE IdPrestamo = 1;

select * from Prestamo
