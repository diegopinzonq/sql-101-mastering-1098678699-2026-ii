-- Exercise 06 - b
-- Pairs of farmers of municipality 54518 with the same last name

SELECT
    T1.last_name AS last_name,
    T1.first_name AS farmer_a_first_name,
    T2.first_name AS farmer_b_first_name
FROM
    farm.farmers AS T1
    INNER JOIN farm.farmers AS T2
    ON T1.last_name = T2.last_name
WHERE
    T1.municipality_code = '54518'
    AND T2.municipality_code = '54518'
    AND T1.farmer_id < T2.farmer_id
ORDER BY
    T1.last_name ASC;

/*
     last_name      | farmer_a_first_name | farmer_b_first_name
--------------------+---------------------+---------------------
 Bastidas Rodríguez | Alberto             | Antonio
 Díaz Cuéllar       | Inés Lucía          | Fabio
 Flórez González    | Mónica Claudia      | Myriam
 Mejía Vera         | Nelson Samuel       | Elsa
 Valencia Moreno    | Teresa Adriana      | Myriam
(5 filas)
*/