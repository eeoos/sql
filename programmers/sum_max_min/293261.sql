-- 문제: 물고기 종류 별 대어 찾기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/293261
-- *

SELECT
    I.ID,
    N.FISH_NAME,
    I.LENGTH
FROM
    FISH_INFO I
JOIN
    FISH_NAME_INFO N ON I.FISH_TYPE = N.FISH_TYPE
JOIN
    (
        SELECT
            FISH_TYPE,
            MAX(LENGTH) AS MAX_LENGTH
        FROM
            FISH_INFO
        GROUP BY
            FISH_TYPE
    ) M
    ON I.FISH_TYPE = M.FISH_TYPE
    AND I.LENGTH = M.MAX_LENGTH
ORDER BY
    ID
;
