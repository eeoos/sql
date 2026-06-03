-- 문제: 대장균들의 자식의 수 구하기
-- 링크 : https://school.programmers.co.kr/learn/courses/30/lessons/299305

SELECT
    P.ID,
    COUNT(C.ID) AS CHILD_COUNT
FROM
    ECOLI_DATA P
LEFT JOIN
    ECOLI_DATA C ON P.ID = C.PARENT_ID
GROUP BY
    P.ID
ORDER BY
    ID
;
