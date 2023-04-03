USE biblioteca;

CREATE OR REPLACE VIEW libro_obras AS
    (SELECT 
        l.TITULO AS 'Título',
        l.ID_LIB AS 'Identificador',
        COUNT(ee.ID_LIB) AS 'Núm_libros'
    FROM
        obra o,
        esta_en ee,
        libro l
    WHERE
        o.COD_OB = ee.COD_OB
            AND ee.ID_LIB = l.ID_LIB
            AND l.titulo IS NOT NULL
    GROUP BY l.ID_LIB);
 
SELECT 
    *
FROM
    libro_obras;