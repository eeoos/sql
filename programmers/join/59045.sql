-- 문제: 보호소에서 중성화한 동물
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59045

SELECT
    O.ANIMAL_ID,
    O.ANIMAL_TYPE,
    O.NAME
FROM
    ANIMAL_OUTS O
LEFT JOIN
    ANIMAL_INS I ON O.ANIMAL_ID = I.ANIMAL_ID
WHERE
    I.SEX_UPON_INTAKE LIKE 'Intact%'
    AND O.SEX_UPON_OUTCOME NOT LIKE 'Intact%'
;
