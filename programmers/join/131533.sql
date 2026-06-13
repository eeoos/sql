-- 문제: 상품 별 오프라인 매출 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131533

SELECT
    P.PRODUCT_CODE,
    (S.TOTAL_AMOUNT * P.PRICE) AS SALES
FROM
    PRODUCT P
JOIN
    (
        SELECT
            PRODUCT_ID,
            SUM(SALES_AMOUNT) AS TOTAL_AMOUNT
        FROM
            OFFLINE_SALE
        GROUP BY
            PRODUCT_ID
    ) AS S ON P.PRODUCT_ID = S.PRODUCT_ID
ORDER BY
    SALES DESC,
    P.PRODUCT_CODE
;
