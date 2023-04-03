USE biblioteca;

SELECT 
    a.nombre AS 'Nombres',
    COUNT(e.autor_id) AS 'Distintos_autores'
FROM
    amigo a,
    prestamo p,
    esta_en ee,
    escribir e
WHERE
    a.num = p.num
        AND ee.ID_LIB = p.ID_LIB
        AND ee.COD_OB = e.COD_OB
GROUP BY a.nombre
ORDER BY 2 DESC , 1 ASC;