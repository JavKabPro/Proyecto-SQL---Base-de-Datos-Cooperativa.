/* 9. Consultas por cada una de estas funciones: LEN(), LTRIM(), TRIM(),   */
/* LEFT(cadena, n) y RIGHT(cadena, n), SUBSTRING(cadena, inicio, longitud) */

-- ************ Consulta con LEN() ************* --
-- Consulto el nombre de los socios y muestro la -- 
-- cantidad de caracteres que tiene cada nombre. --

select 
    S.Nombre,                                   -- Asigno S.Nombre para evitar ambig�edad.
    len(S.Nombre) as Longitud_Nombre            -- La funci�n devuelve la longitud del texto.
from Socio as S;                                -- Uso as Longitud_Nombre para asignar un nombre a la columna resultante.

-- ************ Consulta con LTRIM() ************* --
-- Elimino los espacios en blanco al inicio del    -- 
-- nombre del socio.                               --

select 
    S.IdSocio,                                      -- Utilizo LTRIM para eliminar �nicamente los espacios que est�n al inicio del texto
    ltrim(S.Nombre) as Nombre_SinEspaciosIniciales  -- LTRIM significa Left Trim, o sea recorta por la izquierda.
from Socio as S;                                    

-- ************ Consulta con TRIM() ************* --
-- Limpio los espacios en blanco al inicio        --
-- y al final del nombre del socio                --

select 
    S.IdSocio,
    trim(S.Nombre) as Nombre_Limpio               -- Se usa la funci�n TRIM para eliminar espacios tanto al inicio como al final del texto.
from Socio as S;

-- ************ Consulta con LEFT() ************* --
-- Extraer la inicial del nombre del socio        --

select 
    S.Nombre,
    left(S.Nombre, 1) as Inicial
from Socio as S;

-- ************ Consulta con RIGHT() ************* --
-- Extraer al final del nombre del socio  (3)      --

select 
    S.Nombre,
    right(S.Nombre, 3) as Ultimos_Tres_Caracteres
from Socio as S;

-- ************ Consulta con SUBSTRING() ************* --
-- Obtengo un fragmento del nombre del socio desde     -- 
-- la segunda posici�n.                                --

select 
    S.Nombre,
    substring(S.Nombre, 2, 3) as Fragmento_Nombre      -- Cadena del texto, extraigo (posicion), luego cantidad. 
from Socio as S;
