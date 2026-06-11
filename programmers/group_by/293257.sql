-- 문제: 물고기 종류 별 잡은 수 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/293257

SELECT
    COUNT(*) AS FISH_COUNT,
    N.FISH_NAME
FROM
    FISH_NAME_INFO N
JOIN
    FISH_INFO I ON N.FISH_TYPE = I.FISH_TYPE
GROUP BY
    N.FISH_TYPE
ORDER BY
    FISH_COUNT DESC
;
