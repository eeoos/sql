-- 문제: 업그레이드 된 아이템 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/273711
-- *

-- 1: JOIN
SELECT
    C.ITEM_ID,
    C.ITEM_NAME,
    C.RARITY
FROM
    ITEM_TREE T
        JOIN
    ITEM_INFO P ON T.PARENT_ITEM_ID = P.ITEM_ID
        JOIN
    ITEM_INFO C ON T.ITEM_ID = C.ITEM_ID
WHERE
    P.RARITY = 'RARE'
ORDER BY
    C.ITEM_ID DESC
;

-- 2: SUBQUERY
SELECT
    I.ITEM_ID,
    I.ITEM_NAME,
    I.RARITY
FROM
    ITEM_INFO I
JOIN ITEM_TREE T ON  I.ITEM_ID = T.ITEM_ID
WHERE T.PARENT_ITEM_ID IN (
    SELECT
        ITEM_ID
    FROM
        ITEM_INFO
    WHERE RARITY = 'RARE'
    )
ORDER BY
    I.ITEM_ID DESC
;
