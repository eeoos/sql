-- 문제: 부서별 평균 연봉 조회하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/284529

WITH DEPT_SAL AS (
    SELECT
        ROUND(AVG(SAL)) AS AVG_SAL,
        DEPT_ID
    FROM
        HR_EMPLOYEES
    GROUP BY
        DEPT_ID
)
SELECT
    D.DEPT_ID,
    D.DEPT_NAME_EN,
    S.AVG_SAL
FROM
    HR_DEPARTMENT D
JOIN
    DEPT_SAL S ON D.DEPT_ID = S.DEPT_ID
ORDER BY
    S.AVG_SAL DESC
;
