USE biblioteca;

SELECT 
    a.nombre AS 'Nombres',
    COUNT(au.autor_id) AS 'Distintos_autores'
FROM
    amigo a,
    prestamo p,
    libro l,
    esta_en ee,
    obra o,
    escribir e,
    autor au
WHERE
    a.num = p.num AND p.ID_LIB = l.ID_LIB
        AND l.ID_LIB = ee.ID_LIB
        AND ee.COD_OB = o.COD_OB
        AND o.COD_OB = e.COD_OB
        AND e.AUTOR_ID = au.AUTOR_ID
GROUP BY a.nombre;