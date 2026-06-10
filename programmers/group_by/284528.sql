-- 문제: 연간 평가점수에 해당하는 평가 등급 및 성과금 조회하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/284528

WITH SCORE_AVG AS (
    SELECT
        EMP_NO,
        AVG(SCORE) AS AVG_SCORE
    FROM HR_GRADE
    WHERE YEAR = 2022
    GROUP BY EMP_NO
), GRADE_GROUP AS (
SELECT
    EMP_NO,
    CASE
        WHEN AVG_SCORE >= 96 THEN 'S'
        WHEN AVG_SCORE >= 90 THEN 'A'
        WHEN AVG_SCORE >= 80 THEN 'B'
        ELSE 'C'
    END AS GRADE,
    CASE
        WHEN AVG_SCORE >= 96 THEN 0.20
        WHEN AVG_SCORE >= 90 THEN 0.15
        WHEN AVG_SCORE >= 80 THEN 0.10
        ELSE 0
    END AS BONUS_RATE
FROM SCORE_AVG
    )
SELECT
    E.EMP_NO,
    E.EMP_NAME,
    G.GRADE,
    E.SAL * G.BONUS_RATE AS BONUS
FROM HR_EMPLOYEES E
JOIN GRADE_GROUP G
    ON E.EMP_NO = G.EMP_NO
ORDER BY E.EMP_NO
;
