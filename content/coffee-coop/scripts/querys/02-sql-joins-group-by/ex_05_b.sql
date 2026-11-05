-- Exercise 05 - b
-- Incomplete rows: analyses without settlement or settlements without analysis

SELECT
    T1.analysis_id AS analysis,
    T1.is_accepted AS accepted,
    T2.settlement_id AS settlement,
    T2.status AS settlement_status
FROM
    buy.quality_analyses AS T1
    FULL JOIN pay.settlements AS T2
    ON T1.delivery_id = T2.delivery_id
WHERE
    T1.delivery_id LIKE '%20260930%'
    OR T2.delivery_id LIKE '%20260930%'
    AND T1.analysis_id IS NULL
    OR T2.settlement_id IS NULL
ORDER BY
    T1.analysis_id ASC;

/*
      analysis      | accepted | settlement | settlement_status
--------------------+----------+------------+-------------------
 QA-20260930-000005 | t        |            |
 QA-20260930-000008 | t        |            |
 QA-20260930-000009 | t        |            |
 QA-20260930-000011 | t        |            |
 QA-20260930-000013 | t        |            |
 QA-20260930-000014 | t        |            |
 QA-20260930-000018 | f        |            |
 QA-20260930-000019 | t        |            |
 QA-20260930-000020 | t        |            |
 QA-20260930-000021 | t        |            |
 QA-20260930-000022 | f        |            |
 QA-20260930-000023 | t        |            |
 QA-20260930-000024 | t        |            |
 QA-20260930-000025 | f        |            |
 QA-20260930-000027 | t        |            |
 QA-20260930-000029 | t        |            |
 QA-20260930-000030 | t        |            |
 QA-20260930-000031 | t        |            |
 QA-20260930-000034 | t        |            |
 QA-20260930-000035 | t        |            |
 QA-20260930-000039 | t        |            |
 QA-20260930-000040 | t        |            |
 QA-20260930-000041 | t        |            |
 QA-20260930-000046 | t        |            |
 QA-20260930-000047 | t        |            |
 QA-20260930-000048 | t        |            |
 QA-20260930-000049 | t        |            |
 QA-20260930-000050 | t        |            |
 QA-20260930-000052 | t        |            |
 QA-20260930-000053 | t        |            |
-- Más  --
*/