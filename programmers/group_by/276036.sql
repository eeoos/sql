-- 문제: 언어별 개발자 분류하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/276036
-- ***

SELECT
    GRADE,
    ID,
    EMAIL
FROM
    (
        SELECT
            D.ID,
            D.EMAIL,
            CASE
                WHEN MAX(CASE WHEN S.CATEGORY = 'Front End' THEN 1 ELSE 0 END) = 1
                 AND MAX(CASE WHEN S.NAME = 'Python' THEN 1 ELSE 0 END) = 1 THEN 'A'
                WHEN MAX(CASE WHEN S.NAME = 'C#' THEN 1 ELSE 0 END) = 1 THEN 'B'
                WHEN MAX(CASE WHEN S.CATEGORY = 'Front End' THEN 1 ELSE 0 END) = 1 THEN 'C'
            END AS GRADE
        FROM
            DEVELOPERS D
        JOIN
            SKILLCODES S
            ON D.SKILL_CODE & S.CODE = S.CODE
        GROUP BY
            D.ID,
            D.EMAIL
    ) T
WHERE
    GRADE IS NOT NULL
ORDER BY
    GRADE,
    ID
;
