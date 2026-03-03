/* 8. 2 consultas utilizando la instrucci�n switch */

-- Primera consulta (basada en el punto 7 anterior)             --
-- OPCIONAL: Quise inculir el formato para mejor visualizaci�n. --

select 
    C.Nombre,
    format(C.Salario, 'C', 'es-CO') as SalarioFormateado,
    case 
        when C.Salario < 1500000 then 'Salario Bajo'
        when C.Salario BETWEEN 1500000 AND 3000000 then 'Salario Promedio'
        when C.Salario > 3000000 then 'Salario Alto'
        else 'Sin Clasificaci�n'
    end as NivelSalario
from Codeudor as C;

-- Segunda consulta (basada en el punto 7 anterior)              --
-- OPCIONAL: tambi�n inclu� el formato para mejor visualizaci�n. --

select 
    P.IdPrestamo,
    format(P.Valor, 'C', 'es-CO') as ValorFormateado,
    case 
        when P.Valor < 2000000 then 'Pr�stamo Bajo'
        when P.Valor BETWEEN 2000000 AND 5000000 then 'Pr�stamo Medio'
        when P.Valor > 5000000 then 'Pr�stamo Alto'
        else 'Sin Clasificaci�n'
    end as ClasificacionPrestamo
from Prestamo as P;
