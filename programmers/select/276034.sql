-- 문제: 조건에 맞는 개발자 찾기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/276034
-- *

SELECT DISTINCT
    D.ID,
    D.EMAIL,
    D.FIRST_NAME,
    D.LAST_NAME
FROM
    DEVELOPERS D
JOIN
    SKILLCODES S ON D.SKILL_CODE & S.CODE = S.CODE
WHERE
    S.NAME IN ('Python', 'C#')
ORDER BY
    D.ID
;

