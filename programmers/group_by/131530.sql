-- 문제: 가격대 별 상품 개수 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131530
-- *

SELECT
    FLOOR(PRICE/10000) * 10000 AS PRICE_GROUP,
    COUNT(*) AS PRODUCTS
FROM
    PRODUCT
GROUP BY
    FLOOR(PRICE/10000) * 10000
ORDER BY
    FLOOR(PRICE/10000) * 10000
;
