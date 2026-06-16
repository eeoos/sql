-- 문제: 오랜 기간 보호한 동물(2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59411

SELECT
    O.ANIMAL_ID,
    O.NAME
FROM
    ANIMAL_OUTS O
        JOIN
    ANIMAL_INS I ON O.ANIMAL_ID = I.ANIMAL_ID
ORDER BY
    DATEDIFF(O.DATETIME, I.DATETIME) + 1 DESC
    LIMIT
    2
;

