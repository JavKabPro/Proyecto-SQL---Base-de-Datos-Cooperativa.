/* 3. Una consulta de borrado por cada tabla. */

select * from Prestamo

delete 
from Prestamo
where IdPrestamo = 2;

select * from Prestamo

-----------------------------

select * from Socio

delete 
from Socio 
where IdSocio = 2;

select * from Socio

-----------------------------

select * from Empresa

delete 
from Empresa 
where IdEmpresa = 2;

select * from Empresa

-----------------------------

select * from Modalidad

delete 
from Modalidad 
where IdModalidad = 2;

select * from Modalidad

-----------------------------

select * from Codeudor

delete 
from Codeudor 
where IdCodeudor = 2;

select * from Codeudor

-----------------------------

