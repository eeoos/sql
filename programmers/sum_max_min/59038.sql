-- 문제: 최솟값 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59038\

SELECT
    MIN(DATETIME) AS `시간`
FROM
    ANIMAL_INS
;

SELECT
    DATETIME AS `시간`
FROM
    ANIMAL_INS
ORDER BY
    DATETIME
LIMIT
    1
;
