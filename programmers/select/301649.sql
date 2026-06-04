-- 문제: 대장균의 크기에 따라 분류하기 2
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/301649
-- *

SELECT
    ID,
    CASE
        WHEN GROUP_NUM = 1 THEN 'CRITICAL'
        WHEN GROUP_NUM = 2 THEN 'HIGH'
        WHEN GROUP_NUM = 3 THEN 'MEDIUM'
        WHEN GROUP_NUM = 4 THEN 'LOW'
    END AS COLONY_NAME
FROM (
    SELECT
        ID,
        NTILE(4) OVER (ORDER BY SIZE_OF_COLONY DESC) AS GROUP_NUM
    FROM
        ECOLI_DATA
     )
ORDER BY
    ID;
