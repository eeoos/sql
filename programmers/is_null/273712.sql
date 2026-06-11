-- 문제: 업그레이드 할 수 없는 아이템 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/273712

SELECT
    I.ITEM_ID,
    I.ITEM_NAME,
    I.RARITY
FROM
    ITEM_INFO I
JOIN
    ITEM_TREE P ON I.ITEM_ID = P.ITEM_ID
LEFT JOIN
    ITEM_TREE C ON P.ITEM_ID = C.PARENT_ITEM_ID
WHERE
    C.ITEM_ID IS NULL
ORDER BY
    I.ITEM_ID DESC
;
