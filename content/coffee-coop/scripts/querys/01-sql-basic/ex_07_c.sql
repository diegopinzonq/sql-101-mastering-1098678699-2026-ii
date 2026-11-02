-- Exercise 07 - c
-- Farms in Pamplona without registered geographic coordinates

SELECT
    T1.farm_name,
    T1.latitude,
    T1.longitude
FROM
    farm.farms AS T1
WHERE
    T1.municipality_code = '54518'
    AND T1.latitude IS NULL
    OR T1.longitude IS NULL;

/*
    farm_name     | latitude | longitude
------------------+----------+-----------
 El Higuerón      |          |
 Monte Alto       |          |
 Mi Ranchito      |          |
 San José         |          |
 Los Pinos        |          |
 La Cascada       |          |
 La Estrella      |          |
 El Guayabo       |          |
 La Palma         |          |
 La Cabaña        |          |
 Monteverde       |          |
 El Placer        |          |
 La Cumbre        |          |
 Los Arrayanes    |          |
 El Higuerón      |          |
 Bella Vista Alta |          |
 Las Margaritas   |          |
 La Reserva       |          |
 El Brillante     |          |
 El Edén          |          |
 San Rafael       |          |
 Monteverde       |          |
 Miraflores       |          |
 El Mirador       |          |
 La Soledad       |          |
 La Milagrosa     |          |
 La Gloria        |          |
 El Oasis         |          |
 La Florida       |          |
 Santa Elena      |          |
 El Silencio      |          |
 La Selva         |          |
 El Nogal         |          |
-- Más  --
*/
