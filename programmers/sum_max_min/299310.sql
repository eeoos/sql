-- 문제: 연도별 대장균 크기의 편차 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/299310

SELECT
    YEAR(E.DIFFERENTIATION_DATE),
    M.MAX_SIZE - E.SIZE_OF_COLONY AS YEAR_DEV,
    E.ID
FROM
    ECOLI_DATA E
JOIN
    (
    SELECT
        YEAR(DIFFERENTIATION_DATE) AS `YEAR`,
        MAX(SIZE_OF_COLONY) AS MAX_SIZE
    FROM
        ECOLI_DATA
    GROUP BY
        YEAR(DIFFERENTIATION_DATE)
         ) AS M
    ON
        YEAR(E.DIFFERENTIATION_DATE) = M.`YEAR`
ORDER BY
    YEAR(E.DIFFERENTIATION_DATE),
    YEAR_DEV
;

