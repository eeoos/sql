-- 문제: 조건에 맞는 회원수 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535

SELECT
    COUNT(*)
FROM
    USER_INFO
WHERE
    JOINED >= '2021-01-01'
  AND JOINED < '2022-01-01'
  AND AGE >= 20
  AND AGE <= 29
;
