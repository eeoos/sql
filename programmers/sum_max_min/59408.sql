-- 문제: 중복 제거하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59408

SELECT
    COUNT(DISTINCT NAME) AS count
FROM
    ANIMAL_INS
;
