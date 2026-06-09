-- 문제: 입양 시각 구하기(1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59412

SELECT
    HOUR(DATETIME) AS HOUR,
    COUNT(*) AS COUNT
FROM
    ANIMAL_OUTS
WHERE
    HOUR(DATETIME) BETWEEN '09:00' AND '19:59'
GROUP BY
    HOUR(DATETIME)
ORDER BY
    HOUR(DATETIME)
;
