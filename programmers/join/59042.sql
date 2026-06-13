-- 문제: 없어진 기록 찾기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59042

SELECT
    O.ANIMAL_ID,
    O.NAME
FROM
    ANIMAL_OUTS O
LEFT JOIN
    ANIMAL_INS I ON O.ANIMAL_ID = I.ANIMAL_ID
WHERE
    O.ANIMAL_ID <> I.ANIMAL_ID
;
