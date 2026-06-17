-- 문제: 분기별 분화된 대장균의 개체 수 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/299308

SELECT
    CONCAT(QUARTER(DIFFERENTIATION_DATE), 'Q') AS QUARTER,
    COUNT(*) AS ECOLI_COUNT
FROM
    ECOLI_DATA
GROUP BY
    QUARTER(DIFFERENTIATION_DATE)
ORDER BY
    QUARTER(DIFFERENTIATION_DATE)
;
