/*6. 2 consultas utilizando la instrucci�n format*/

-- Primera consulta los pr�stamos mostrando la fecha en formato d�a/mes/a�o --

select 
    P.IdPrestamo,
    format(P.FechaInicio, 'dd/MM/yyyy') as FechaColombiana
from Prestamo as P;

-- Segunda consullta mostrar el valor del pr�stamo en formato moneda --

select 
    P.IdPrestamo,
    format(P.Valor, 'C', 'es-CO') as ValorMoneda
from Prestamo as P;
