-- Exercise 02 - b
-- Non-resistant arabica varieties ordered by name descending

SELECT
    T1.variety_name,
    T1.species
FROM
    farm.coffee_varieties AS T1
WHERE 
    T1.is_rust_resistant = false AND T1.species = 'arabica'
ORDER BY
    T1.variety_name DESC;

/*
 variety_name  | species
---------------+---------
 Típica        | arabica
 Pacamara      | arabica
 Maragogipe    | arabica
 Geisha        | arabica
 Caturra       | arabica
 Borbón Rosado | arabica
 Borbón        | arabica
(7 filas)
*/
