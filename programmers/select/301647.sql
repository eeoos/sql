-- 문제: 부모의 형질을 모두 가지는 대장균 찾기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/301647

SELECT
    C.ID,
    C.GENOTYPE,
    P.GENOTYPE AS PARENT_GENOTYPE
FROM
    ECOLI_DATA C
JOIN
    ECOLI_DATA P ON C.PARENT_ID = P.ID
WHERE
    C.GENOTYPE & P.GENOTYPE = P.GENOTYPE
ORDER BY
    ID
;
