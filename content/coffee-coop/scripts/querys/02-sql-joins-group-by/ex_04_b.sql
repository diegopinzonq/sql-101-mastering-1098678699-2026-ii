-- Exercise 04 - b
-- Same query as a) using INNER JOIN with explicit ON

SELECT
    T1.municipality_name AS municipality,
    T2.department_name AS department
FROM
    geo.municipalities AS T1
    INNER JOIN geo.departments AS T2
    ON T1.department_code = T2.department_code
ORDER BY
    T2.department_name ASC,
    T1.municipality_name ASC;

/*
        municipality         |                        department
-----------------------------+----------------------------------------------------------
 Leticia                     | Amazonas
 Puerto Nariño               | Amazonas
 Abejorral                   | Antioquia
 Abriaquí                    | Antioquia
 Alejandría                  | Antioquia
 Amagá                       | Antioquia
 Amalfi                      | Antioquia
 Andes                       | Antioquia
 Angelópolis                 | Antioquia
 Angostura                   | Antioquia
 Anorí                       | Antioquia
 Anzá                        | Antioquia
 Apartadó                    | Antioquia
 Arboletes                   | Antioquia
 Argelia                     | Antioquia
 Armenia                     | Antioquia
 Barbosa                     | Antioquia
 Bello                       | Antioquia
 Belmira                     | Antioquia
 Betania                     | Antioquia
 Betulia                     | Antioquia
 Briceño                     | Antioquia
 Buriticá                    | Antioquia
 Cáceres                     | Antioquia
 Caicedo                     | Antioquia
 Caldas                      | Antioquia
 Campamento                  | Antioquia
 Cañasgordas                 | Antioquia
 Caracolí                    | Antioquia
 Caramanta                   | Antioquia
-- Más  --
*/