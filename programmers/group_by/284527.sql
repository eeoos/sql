-- 문제: 조건에 맞는 사원 정보 조회하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/284527

-- 공동 1등이 없다는 가정하에 푼 풀이
SELECT
    G.SCORE,
    G.EMP_NO,
    E.EMP_NAME,
    E.POSITION,
    E.EMAIL
FROM
    (
        SELECT
            SUM(SCORE) AS SCORE,
            EMP_NO
        FROM
            HR_GRADE
        WHERE
            YEAR = '2022'
        GROUP BY
            EMP_NO
        ORDER BY
            SCORE DESC
        LIMIT
            1
    ) G
JOIN
    HR_EMPLOYEES E ON G.EMP_NO = E.EMP_NO

-- 공동 1등이 있다는 가정하에 푼 풀이
WITH SCORE_SUM AS (
    SELECT
        EMP_NO,
        SUM(SCORE) AS SCORE
    FROM
        HR_GRADE
    WHERE
        YEAR = '2022'
    GROUP BY
        EMP_NO
), MAX_SCORE AS (
    SELECT
        MAX(SCORE) AS SCORE
    FROM
        SCORE_SUM
)
SELECT
    S.SCORE,
    S.EMP_NO,
    E.EMP_NAME,
    E.POSITION,
    E.EMAIL
FROM
    SCORE_SUM S
JOIN
    MAX_SCORE M ON S.SCORE = M.SCORE
JOIN
    HR_EMPLOYEES E ON S.EMP_NO = E.EMP_NO
;
