/* 7. 2 consultas utilizando la instrucci�n iif*/

select * from Prestamo

-- Primera consulta muestro el estado del salario --
-- del codeudor, si es mayor a 2 milones.         --

select 
    C.Nombre,
    C.Salario,
    iif(C.Salario > 2000000, 'Salario Apto', 'Salario Insuficiente') as EstadoSalario
from Codeudor as C;

/* OPCIONAL*/
-- Mostrar el salario del codeudor en      --
-- moneda colombiana y separador de miles. --

select 
    C.Nombre,
    format(C.Salario, 'C', 'es-CO') as SalarioFormato,
    iif(C.Salario > 2000000, 'Salario Apto', 'Salario Insuficiente') as EstadoSalario
from Codeudor as C;

-- Segunda consulta muestro los pr�stamos --
-- indicando si el valor es alto o bajo.  --

select 
    P.IdPrestamo,
    P.Valor,
    iif(P.Valor >= 5000000, 'Pr�stamo Alto', 'Pr�stamo Bajo') as TipoPrestamo
from Prestamo as P;

/* OPCIONAL */
-- Mostrar los pr�stamos indicando si el      --
-- valor es alto o bajo en moneda colombiana. --

select 
    P.IdPrestamo,
    format(P.Valor, 'C', 'es-CO') as ValorFormateado,
    iif(P.Valor >= 5000000, 'Pr�stamo Alto', 'Pr�stamo Bajo') as TipoPrestamo
from Prestamo as P;
