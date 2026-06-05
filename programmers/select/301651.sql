-- 문제: 멸종위기의 대장균 찾기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/301651
-- ***

WITH RECURSIVE GENERATION_DATA AS (
    -- BASE
    SELECT
        ID,
        PARENT_ID,
        1 AS GENERATION
    FROM
        ECOLI_DATA
    WHERE
        PARENT_ID IS NULL

    UNION ALL

    -- ANCHOR
    SELECT
        C.ID,
        C.PARENT_ID,
        G.GENERATION + 1
    FROM
        GENERATION_DATA G
    JOIN
        ECOLI_DATA C ON G.ID = C.PARENT_ID
)
SELECT
    COUNT(*) AS COUNT,
    G.GENERATION
FROM
    GENERATION_DATA G
LEFT JOIN
    ECOLI_DATA C ON G.ID = C.PARENT_ID -- > G의 자식을 찾는다.
WHERE
    C.ID IS NULL
GROUP BY
    G.GENERATION
ORDER BY
    G.GENERATION
;

