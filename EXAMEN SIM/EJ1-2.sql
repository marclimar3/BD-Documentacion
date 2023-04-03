USE biblioteca;

SELECT DISTINCT
    a.nombre AS 'Nombre',
    CONCAT('Nacionalidad ', a.nacionalidad) AS 'Nacionalidad'
FROM
    autor a
        INNER JOIN
    escribir e ON a.autor_id = e.autor_id
WHERE
    (a.Nacionalidad NOT LIKE 'Española'
        OR a.nombre LIKE 'a%'
        OR a.nombre LIKE 'e%'
        OR a.nombre LIKE 'i%'
        OR a.nombre LIKE 'o%'
        OR a.nombre LIKE 'u%')
        AND a.Nacionalidad IS NOT NULL;