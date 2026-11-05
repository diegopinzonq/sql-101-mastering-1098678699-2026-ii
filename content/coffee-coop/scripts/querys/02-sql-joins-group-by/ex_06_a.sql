-- Exercise 06 - a
-- Pairs of farms of municipality 54518 in the same rural district

SELECT
    T1.rural_district AS rural_district,
    T1.farm_name AS farm_a,
    T2.farm_name AS farm_b
FROM
    farm.farms AS T1
    INNER JOIN farm.farms AS T2
    ON T1.rural_district = T2.rural_district
WHERE
    T1.municipality_code = '54518'
    AND T2.municipality_code = '54518'
    AND T1.farm_id < T2.farm_id
ORDER BY
    T1.rural_district ASC;

/*
    rural_district    |      farm_a      |      farm_b
----------------------+------------------+------------------
 Alcaparral           | San José         | La Granja
 Alcaparral           | Buenavista       | San José
 Alcaparral           | La Floresta      | Miraflores
 Alcaparral           | La Floresta      | La Granja
 Alcaparral           | La Floresta      | Monte Alto
 Alcaparral           | Buenavista       | La Granja
 Alcaparral           | Buenavista       | Monte Alto
 Alcaparral           | Monte Alto       | La Granja
 Alcaparral           | Buenavista       | Miraflores
 Alcaparral           | Buenavista       | Los Pinos
 Alcaparral           | San José         | Los Pinos
 Alcaparral           | La Floresta      | Los Pinos
 Alcaparral           | La Floresta      | San José
 Alcaparral           | La Floresta      | Buenavista
 Alcaparral           | San José         | Miraflores
 Alcaparral           | San José         | Monte Alto
 Alcaparral           | Los Pinos        | Monte Alto
 Alcaparral           | Los Pinos        | La Granja
 Alcaparral           | Miraflores       | La Granja
 Alcaparral           | Los Pinos        | Miraflores
 Alcaparral           | Miraflores       | Monte Alto
 Alto Grande          | El Caney         | Los Pinos
 Alto Grande          | El Caney         | Monteverde
 Alto Grande          | El Caney         | Los Arrayanes
 Alto Grande          | El Caney         | El Refugio
 Alto Grande          | El Caney         | Bella Vista Alta
 Alto Grande          | El Caney         | Bellavista
 Alto Grande          | La Loma          | El Nogal
 Alto Grande          | El Nogal         | Los Arrayanes
 Alto Grande          | El Nogal         | El Refugio
-- Más  --
*/
