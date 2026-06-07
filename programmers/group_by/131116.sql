-- 문제: 식품분류별 가장 비싼 식품의 정보 조회하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131116

SELECT
    F.CATEGORY,
    M.MAX_PRICE,
    F.PRODUCT_NAME
FROM
    FOOD_PRODUCT F
JOIN
    (
        SELECT
            CATEGORY,
            MAX(PRICE) AS MAX_PRICE
        FROM
            FOOD_PRODUCT
        WHERE
            CATEGORY IN ('과자', '국', '김치', '식용유')
        GROUP BY
            CATEGORY
    ) M
    ON F.CATEGORY = M.CATEGORY
    AND F.PRICE = M.MAX_PRICE
ORDER BY
    F.PRICE DESC
;

