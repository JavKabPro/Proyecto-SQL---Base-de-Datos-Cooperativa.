/* 4. 4 consultas utilizando el inner join */

----------------------------------------------------------------
-- Primer consulta socio con empresa ac� la clave primaria -----
-- es Empresa.IdEmpresa y la clave for�nea es Socio.IdEmpresa.--
----------------------------------------------------------------

select
	S.IdSocio,
	S.Nombre as NombreSocio,
	S.FechaNacimiento,
	E.Nombre as NombreEmpresa,
	E.Telefono
from Socio as S
inner join Empresa as E
	on S.IdEmpresa = E.IdEmpresa;

-------------------------------------------------------------------------------
-- Segunda consulta prestamo con datos del socio ac� relacionamos            --
-- la clave primaria es Socio.IdSocio y la clave for�nea es Prestamo.IdSocio.--
-------------------------------------------------------------------------------

select
	P.IdPrestamo,
    P.Valor,
    P.FechaInicio,
    P.PlazoMeses,
    S.Nombre as NombreSocio
from Prestamo as P
inner join Socio as S
    on P.IdSocio = S.IdSocio;

---------------------------------------------------------------------------------
-- Trercera consulta prestamo con modalidad, en esta ocasi�n la clave primaria -- 
-- es Modalidad.IdModalidad y la clave for�nea es Prestamo.IdModalidad ----------
---------------------------------------------------------------------------------

select 
    P.IdPrestamo,
    P.Valor,
    M.Tipo,
    M.PlazoMaximo,
    M.TasaInteres
from Prestamo as P
inner join Modalidad as M
    on P.IdModalidad = M.IdModalidad;

------------------------------------------------------------------
-- Cuarta consulta multiples modalidad, prestamo, etc...        --
-- ac� las realcione que hago son:                              --
-- P.IdSocio = S.IdSocio, S.IdEmpresa = E.IdEmpresa             --
-- P.IdModalidad = M.IdModalidad, P.IdCodeudor = C.IdCodeudor   --
------------------------------------------------------------------

select 
    P.IdPrestamo,
    P.Valor,
    P.FechaInicio,
    P.PlazoMeses,
    S.Nombre as NombreSocio,
    E.Nombre as NombreEmpresa,
    M.Tipo as TipoModalidad,
    M.TasaInteres,
    C.Nombre as NombreCodeudor,
    C.Salario
from Prestamo as P
inner join Socio as S
    on P.IdSocio = S.IdSocio
inner join Empresa as E
    on S.IdEmpresa = E.IdEmpresa
inner join Modalidad as M
    on P.IdModalidad = M.IdModalidad
inner join Codeudor as C
    on P.IdCodeudor = C.IdCodeudor;
   
----------------------------------------------
