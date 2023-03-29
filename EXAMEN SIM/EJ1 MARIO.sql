-- EJERCICIO 1
USE biblioteca;

SELECT 
    au.nombre AS Nombre, au.nacionalidad AS Nacionalidad
FROM
    autor au,
    escribir es
WHERE
    au.AUTOR_ID = es.AUTOR_ID
        AND au.nacionalidad NOT LIKE 'Española'