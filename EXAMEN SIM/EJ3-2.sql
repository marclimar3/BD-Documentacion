USE biblioteca;

SELECT 
    o.COD_OB AS 'Código_de_obra',
    COUNT(ee.ID_LIB) AS 'Contador_libro'
FROM
    obra o
        INNER JOIN
    esta_en ee ON o.COD_OB = ee.COD_OB
GROUP BY o.COD_OB 
UNION (SELECT 
    o.COD_OB AS 'Código_de_obra',
    COUNT(ee.ID_LIB) AS 'Contador_libro'
FROM
    obra o
        LEFT JOIN
    esta_en ee ON o.COD_OB = ee.COD_OB
GROUP BY o.COD_OB
HAVING COUNT(ee.ID_LIB) = 0) ORDER BY 2 ASC;