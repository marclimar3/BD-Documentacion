USE biblioteca;

SELECT 
    a.nombre AS 'Nombre', COUNT(*) AS 'Libros'
FROM
    autor a
        INNER JOIN
    escribir e ON a.AUTOR_ID = e.AUTOR_ID
GROUP BY a.AUTOR_ID
HAVING COUNT(e.AUTOR_ID) > 10
ORDER BY COUNT(*) DESC;