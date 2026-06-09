-- 문제: 입양 시각 구하기(2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59413
-- *

WITH RECURSIVE HOURS AS (
    SELECT
        0 AS `HOUR`
    UNION ALL

    SELECT
        `HOUR` + 1
    FROM
        HOURS
    WHERE
        `HOUR` < 23
)
SELECT
    H.`HOUR`,
    COALESCE(A.COUNT, 0) AS COUNT
FROM
    HOURS H
LEFT JOIN
    (
    SELECT
        HOUR(DATETIME) AS `HOUR`,
        COUNT(*) AS COUNT
    FROM
        ANIMAL_OUTS
    WHERE
        DATETIME IS NOT NULL
    GROUP BY
        HOUR(DATETIME)
    ) AS A ON H.`HOUR` = A.`HOUR`
ORDER BY
    H.`HOUR`
;
