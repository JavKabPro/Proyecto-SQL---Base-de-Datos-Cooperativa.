/* 5. 4 consultas utilizando like, between y where */

/* Primer consulta uso del where */

select 
    S.IdSocio,
    S.Nombre,
    S.FechaNacimiento
from Socio as S
where S.IdSocio = 3;

/* segunda consulta uso de month con where */

select 
    P.IdPrestamo,
    P.Valor,
    P.FechaInicio
from Prestamo as P
where month(P.FechaInicio) = 9;

/* tercera consutla us de between*/

select 
    P.IdPrestamo,
    P.FechaInicio,
    P.Valor
from Prestamo as P
where P.FechaInicio between '2023-09-01' AND '2023-09-30';

/* cuarta consulta uso de like % para resulltados parciales*/

select 
    S.IdSocio,
    S.Nombre
from Socio as S
where S.Nombre like 'A%';
