USE biblioteca;

SELECT 
    a.nombre AS 'Nombre'
FROM
    autor a,
    escribir e
WHERE
    a.AUTOR_ID = e.AUTOR_ID
GROUP BY a.AUTOR_ID
HAVING COUNT(a.AUTOR_ID) > 10;