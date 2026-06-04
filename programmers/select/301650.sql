-- 문제: 특정 세대의 대장균 찾기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/301650

SELECT
    G.ID
FROM
    ECOLI_DATA P
        JOIN
    ECOLI_DATA C ON P.ID = C.PARENT_ID
        JOIN
    ECOLI_DATA G ON C.ID = G.PARENT_ID
WHERE
    G.ID IS NOT NULL AND P.PARENT_ID IS NULL
ORDER BY
    G.ID
;
