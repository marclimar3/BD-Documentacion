USE biblioteca;

SELECT DISTINCT
    a.nombre AS 'Nombre', a.nacionalidad AS 'Nacionalidad'
FROM
    autor a,
    escribir e
WHERE
    a.autor_id = e.autor_id
        AND a.Nacionalidad NOT LIKE 'Española';