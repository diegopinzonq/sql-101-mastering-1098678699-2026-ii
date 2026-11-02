-- Exercise 06 - b
-- Farmers from Pamplona without registered email

SELECT
    T1.document_number,
    T1.first_name,
    T1.last_name,
    T1.email
FROM
    farm.farmers AS T1
WHERE
    T1.municipality_code = '54518'
    AND T1.email IS NULL;

/*
 document_number |    first_name    |     last_name      | email
-----------------+------------------+--------------------+-------
 712758473       | Wilson           | López Villamizar   |
 727945493       | Gloria           | Marín Rivera       |
 549054771       | María            | Burbano Duarte     |
 24999630        | Esperanza        | Romero Betancur    |
 914044314       | Ancízar Cristian | Polanía Delgado    |
 343256743       | Dora             | Hernández Correa   |
 1148351420      | Inés             | Jiménez Jaimes     |
 1117597835      | Cecilia Lorena   | Díaz García        |
 749444168       | Emilio           | Delgado Molina     |
 940051048       | David Germán     | Romero Bonilla     |
 548464915       | Yuliana          | Rodríguez Vargas   |
 554620706       | Nelson Samuel    | Mejía Vera         |
 59388780        | Juan             | Ortega Zapata      |
 1171130241      | Elsa             | Mejía Vera         |
 824422301       | Hernando         | Montoya Agudelo    |
 21358854        | Manuela Yolanda  | Benavides Delgado  |
 1185523747      | Elsa             | Ibarra Molina      |
 131166207       | Jaime            | Marín Hernández    |
 35147265        | Carlos           | Gutiérrez Pabón    |
 712500733       | Esperanza        | Valencia Ortiz     |
 922724022       | Esteban          | Salazar Parra      |
 1135293825      | Abelardo         | Pérez Castro       |
 939635303       | Marleny          | Álvarez Correa     |
 549847293       | Wilmer           | Pérez Chamorro     |
 1189704117      | Mariana          | Ortiz Ruiz         |
 599185252       | Efraín           | Pinzón Cabrera     |
 33787285        | Rubén            | Ramos Chamorro     |
-- Más  --
*/
