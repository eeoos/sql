-- 문제: 특정 형질을 가지는 대장균 찾기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/301646

SELECT
    COUNT(*) AS COUNT
FROM
    ECOLI_DATA
WHERE
    GENOTYPE & 2 != 2
    AND (GENOTYPE & 1 = 1
    OR GENOTYPE & 4 = 4)
;
